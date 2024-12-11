CREATE OR REPLACE FUNCTION user_login(username TEXT, user_password TEXT)
RETURNS TEXT AS $$
DECLARE
    user_id INTEGER;
    token TEXT;
    client_ip INET;
    client_port INTEGER;
BEGIN
    -- Перевіряємо існування користувача
    SELECT u.user_id
    INTO user_id
    FROM users u
    WHERE u.username = user_login.username AND u.password = user_password;

    IF NOT FOUND THEN
        RAISE NOTICE 'Invalid username or password';
        RETURN NULL;
    END IF;

    -- Генеруємо токен
    token := encode(gen_random_bytes(16), 'hex');

    -- Отримуємо IP та порт клієнта
    client_ip := COALESCE(inet_client_addr(), '127.0.0.1');
    client_port := COALESCE(inet_client_port(), 0);

    -- Зберігаємо токен
    INSERT INTO user_tokens (user_id, token, client_ip, client_port, server_pid)
    VALUES (user_id, token, client_ip, client_port, pg_backend_pid());

    RETURN token;
END;
$$ LANGUAGE plpgsql;

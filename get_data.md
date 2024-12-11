CREATE OR REPLACE FUNCTION get_data(input_token TEXT)
RETURNS TABLE(data TEXT) AS $$
BEGIN
    -- Перевірка токена
    IF NOT EXISTS (
        SELECT 1
        FROM user_tokens
        WHERE token = input_token
          AND client_ip = COALESCE(inet_client_addr(), '127.0.0.1')
          AND client_port = COALESCE(inet_client_port(), 0)
          AND created_at > now() - interval '1 hour'
    ) THEN
        RAISE NOTICE 'Invalid or expired token';
        RETURN;
    END IF;

    -- Повернення даних з таблиці "users" (або іншої таблиці)
    RETURN QUERY SELECT username FROM users; -- Змініть на вашу таблицю та відповідні поля
END;
$$ LANGUAGE plpgsql;

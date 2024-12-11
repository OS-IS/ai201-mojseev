CREATE OR REPLACE FUNCTION user_register(username TEXT, user_password TEXT) RETURNS VOID AS $$
BEGIN
    IF EXISTS (
        SELECT 1 FROM xato_net_10_million_passwords_1000 WHERE password = user_password
    ) THEN
        RAISE EXCEPTION 'The password is too weak!';
    END IF;

    INSERT INTO users (username, password) VALUES (username, user_password);
END;
$$ LANGUAGE plpgsql;

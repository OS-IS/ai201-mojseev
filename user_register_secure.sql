CREATE OR REPLACE FUNCTION user_register_secure(username TEXT, user_password TEXT)
RETURNS VOID AS $$
DECLARE
    password_length INT;
    digit_count INT;
    lower_count INT;
    upper_count INT;
    special_count INT;
BEGIN
    password_length := length(user_password);
    IF password_length < 9 THEN
        RAISE EXCEPTION 'The password must be at least 9 characters long';
    END IF;
    
    digit_count := length(regexp_replace(user_password, '[^0-9]', '', 'g'));
    IF digit_count < 2 THEN
        RAISE EXCEPTION 'The password must contain at least 2 digits';
    END IF;

    lower_count := length(regexp_replace(user_password, '[^a-z]', '', 'g'));
    IF lower_count < 2 THEN
        RAISE EXCEPTION 'The password must contain at least 2 lowercase letters';
    END IF;

    upper_count := length(regexp_replace(user_password, '[^A-Z]', '', 'g'));
    IF upper_count < 2 THEN
        RAISE EXCEPTION 'The password must contain at least 2 uppercase letters';
    END IF;

    special_count := length(regexp_replace(user_password, '[^!@#$%^&*]', '', 'g'));
    IF special_count < 2 THEN
        RAISE EXCEPTION 'The password must contain at least 2 special characters from {!@#$%^&*}';
    END IF;

    IF EXISTS (
        SELECT 1 FROM xato_net_10_million_passwords_1000 WHERE password = user_password
    ) THEN
        RAISE EXCEPTION 'The password is too weak!';
    END IF;

    INSERT INTO users (username, password) VALUES (username, user_password);
END;
$$ LANGUAGE plpgsql;

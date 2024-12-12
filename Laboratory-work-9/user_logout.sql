CREATE OR REPLACE FUNCTION user_logout(input_token TEXT)
RETURNS VOID AS $$
BEGIN
    -- Перевірка на існування токена
    IF NOT EXISTS (
        SELECT 1
        FROM user_tokens
        WHERE token = input_token
    ) THEN
        RAISE NOTICE 'Token not found or already expired';
        RETURN;
    END IF;

    -- Видалення токена для завершення сесії
    DELETE FROM user_tokens
    WHERE token = input_token;

    RAISE NOTICE 'User logged out successfully';
END;
$$ LANGUAGE plpgsql;

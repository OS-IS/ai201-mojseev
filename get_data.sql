CREATE OR REPLACE FUNCTION get_data(attr_value TEXT)
RETURNS TABLE(p_id INT, name TEXT, bd DATE, permission INT) AS $$
BEGIN
    RETURN QUERY EXECUTE 'SELECT * FROM moiseiev.human WHERE name = $1' USING attr_value;
END;
$$ LANGUAGE plpgsql;

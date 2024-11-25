CREATE OR REPLACE FUNCTION get_data(attr_value text)
RETURNS TABLE(p_id integer, name character varying(50), bd date, permission integer) AS $$
BEGIN
    RETURN QUERY
    SELECT human.p_id, human.name, human.bd, human.permission
    FROM human
    WHERE human.name = attr_value;
END;
$$ LANGUAGE plpgsql;


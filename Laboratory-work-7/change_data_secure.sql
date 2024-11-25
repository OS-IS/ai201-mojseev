CREATE OR REPLACE FUNCTION change_data(attr1_value TEXT, attr2_value INT)
RETURNS VOID AS $$
BEGIN
    UPDATE human
    SET permission = attr2_value
    WHERE human.name = attr1_value; 
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION check_value_column1()
  RETURNS TRIGGER AS 
$$
BEGIN
  IF EXISTS (SELECT column2 FROM triggertest WHERE column2 = NEW.column1 LIMIT 1)
  THEN
    RAISE EXCEPTION 'Vaule [ % ] exist in column2',
    NEW.column1;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

--CREATE TRIGGER verify_value_column1 
--BEFORE INSERT OR UPDATE ON triggertest 
--FOR EACH ROW EXECUTE PROCEDURE check_value_column1();


CREATE OR REPLACE FUNCTION check_value_column2()
  RETURNS TRIGGER AS 
$$
BEGIN
  IF EXISTS (SELECT column1 FROM triggertest WHERE column1 = NEW.column2 LIMIT 1)
  THEN
    RAISE EXCEPTION 'Value [ % ] exist in column1',
    NEW.column2;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

--CREATE TRIGGER verify_value_column2
--BEFORE INSERT OR UPDATE ON triggertest 
--FOR EACH ROW EXECUTE PROCEDURE check_value_column2();


CREATE USER 'crystalgate_desarrollador'@'localhost' IDENTIFIED BY '123456';

GRANT INSERT, CREATE, SELECT, EXECUTE, TRIGGER, CREATE VIEW ON db_crystalgate.* 
TO 'crystalgate_desarrollador'@'localhost';
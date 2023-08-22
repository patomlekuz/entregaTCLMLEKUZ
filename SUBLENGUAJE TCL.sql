START TRANSACTION;

DELETE FROM email
WHERE id_email >= 5;

ROLLBACK;

#elmina los primeros 5 registros de la tabla email y hace un rollback.

START TRANSACTION;

INSERT INTO email
VALUES
	(null,1,null,null,null,"sanantonio@gmail.com"),
    (null,null,1,null,null,"indjp@gmail.com"),
    (null,null,null,1,null,"rojasmiguel@gmail.com"),
    (null,null,null,null,1,"luisgonzales@gmail.com"),
    (null,2,null,null,null,"uspallata@gmail.com"),
    (null,null,2,null,null,"mundojuguete@gmail.com");
SAVEPOINT primeros_registros;
INSERT INTO email
VALUES
	(null,null,null,2,null,"juanmamani@gmail.com"),
    (null,null,null,null,2,"alexistjusta@gmail.com"),
    (null,3,null,null,null,"papeleradiaz@gmail.com"),
    (null,null,3,null,null,"lopezsa@gmail.com"),
    (null,null,null,3,null,"joseruth@gmail.com");
SAVEPOINT ultimos_registros;

ROLLBACK TO primeros_registros;

COMMIT;
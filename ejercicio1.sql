CREATE TABLE MODULOS(
	CODIGO_MOD NUMBER(2) NOT NULL,
	DESCRIPCION VARCHAR2(20),
		CONSTRAINT PK_MODULOS PRIMARY KEY(CODIGO_MOD),
		CONSTRAINT UK1_MODULOS UNIQUE(DESCRIPCION)
	)
/

INSERT INTO MODULOS VALUES (4, 'BASES DE DATOS')
/
INSERT INTO MODULOS VALUES (10, 'PROGRAMACION')
/

CREATE TABLE ALUMNOS(
	CODIGO_ALUM NUMBER(3) NOT NULL,
	USUARIO VARCHAR2(9) NOT NULL,
	APELLIDOS VARCHAR2(25) NOT NULL,
	NOMBRE VARCHAR2(15) NOT NULL,
	DIRECCION VARCHAR2(25),
	POBLACION VARCHAR2(15),
	PROVINCIA VARCHAR2(30),
	EMAIL VARCHAR2(40) NOT NULL,
	TELEFONO VARCHAR2(9),
		CONSTRAINT PK_ALUMNOS PRIMARY KEY(CODIGO_ALUM),
		CONSTRAINT UK1_ALUMNOS UNIQUE(USUARIO)
	)
/


INSERT INTO ALUMNOS VALUES(45, 'MARTA1337', 'GOIKOETXEA', 'MARTA', 'KALE NAGUSIA', 'ZARAUTZ', 'GIPUZKOA', 'zarauztarra@gmail.com', '943895463' )
/
INSERT INTO ALUMNOS VALUES(34, 'LUIS69', 'ARAGONES', 'LUISI', 'DONIBANE', 'AZPEITIA', 'GIPUZKOA', 'luisitocomunica@gmail.com', '943587495')

CREATE TABLE NOTAS
(
	CODIGO_ALUM NUMBER(3) NOT NULL,
	CODIGO_MOD NUMBER(2) NOT NULL,
	NOTA NUMBER(4,2) CONSTRAINT CK_NOTA CHECK(NOTA BETWEEN 0 AND 10),
		CONSTRAINT PK_NOTAS PRIMARY KEY(CODIGO_ALUM, CODIGO_MOD),
		CONSTRAINT FK1_NOT_ALU FOREIGN KEY(CODIGO_ALUM) REFERENCES ALUMNOS(CODIGO_ALUM),
		CONSTRAINT FK2_NOT_MOD FOREIGN KEY(CODIGO_MOD) REFERENCES MODULOS(CODIGO_MOD)
	)
/

INSERT INTO NOTAS VALUES(45, 4, 8)
/
INSERT INTO NOTAS VALUES(34, 4, 2)
/
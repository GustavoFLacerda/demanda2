CREATE TABLE PARCEIRO_BERR86(
        ID_PARCEIRO INTEGER PRIMARY KEY UNIQUE NOT NULL,
		NM_PARCEIRO VARCHAR(100) NOT NULL, 
		NR_DOCUMENTO_PARCEIRO VARCHAR(14) NOT NULL UNIQUE,
		CD_USR_CERTIFICADO CHAR(8) NOT NULL, 
		CD_USR_INCLUSAO VARCHAR(15) NOT NULL,
		DT_INCLUSAO TIMESTAMP DEFAULT NOW() NOT NULL,
		CD_USR_ATUALIZACAO VARCHAR(15),
		USR_ROLE TEXT NOT NULL,
		DT_ATUALIZACAO TIMESTAMP
);

CREATE TABLE PARCEIROXDADOSALLIANZ(
    	ID INTEGER PRIMARY KEY UNIQUE NOT NULL,
		ID_PARCEIRO INTEGER REFERENCES PARCEIRO_BERR86(ID_PARCEIRO) UNIQUE,
		ID_LEVEL1 VARCHAR(30) NOT NULL,
		ID_LEVEL2 VARCHAR(30) NOT NULL,
		CD_MEDIADOR CHAR(7) NOT NULL,
		DS_USUARIO_BA CHAR(8) NOT NULL,	
		CD_USR_INCLUSAO CHAR(15) NOT NULL,		
		DT_INCLUSAO TIMESTAMP DEFAULT NOW() NOT NULL,				
		CD_USR_ATUALIZACAO CHAR(15),      
		DT_ATUALIZACAO TIMESTAMP         
);

INSERT INTO PARCEIRO_BERR86 (ID_PARCEIRO, NM_PARCEIRO, NR_DOCUMENTO_PARCEIRO, CD_USR_CERTIFICADO, CD_USR_INCLUSAO, USR_ROLE)
VALUES (1, 'UA Santa Maria do Herval', '91586982000281', 'BP999999', 'BE04356', 'ADMIN');

INSERT INTO PARCEIRO_BERR86 (ID_PARCEIRO, NM_PARCEIRO, NR_DOCUMENTO_PARCEIRO, CD_USR_CERTIFICADO, CD_USR_INCLUSAO, USR_ROLE)
VALUES (2, 'UA Vila Cristina/Caxias do Sul', '91586982000362', 'BP999345', 'BE04356', 'USER');

INSERT INTO PARCEIROXDADOSALLIANZ (ID, ID_PARCEIRO, ID_LEVEL1, ID_LEVEL2, CD_MEDIADOR, DS_USUARIO_BA, CD_USR_INCLUSAO)
VALUES (1, 1, '1233453456', '1123', '4015876', 'BA809453', 'BE04356');

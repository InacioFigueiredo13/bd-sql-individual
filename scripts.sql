CREATE DATABASE ast;
USE ast;

CREATE TABLE cliente (
	idCliente INT PRIMARY KEY AUTO_INCREMENT,    
	nomeFantasia VARCHAR(45),
    cnpj CHAR(14),
    cpf CHAR(14),
    email VARCHAR(45),
    senha VARCHAR(45));

CREATE TABLE sensor (
	idSensor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    tipo VARCHAR(45),
    preco DOUBLE);
    
CREATE TABLE registro (
	idRegistro INT PRIMARY KEY AUTO_INCREMENT,
    dataHora DATETIME,
    temperatura FLOAT,
    fkSensor INT);

INSERT INTO cliente (nomeFantasia, cnpj, cpf, email, senha) VALUES
	('ColdFish','05312647000172','99999934254','coldfish@adm@outlook.com','iaweim183'),
    ('FishTransportation','04872941200044','38461628491734','fishTranspor@gmail.com','jkiaj89#'),
    ('Peixe Feliz','03249172849004','91276481732941','happyfish@hotmail.com','iasdoij@93'),
    ('Blue Water','02948372400024','93012349129413','bw@outlook.com','irawio@'),
    ('TilápiaTrans','05981238192435','09384618290412','tilapiastranport@gmail.com.br','i293#oi@a'),
    ('Bela Rio','08273940179724','48274819471623','brio@outlook.com','@rkjoia1293'),
    ('FishFish','05718123891234','47152748162849','fishf@outlook.com','0138@tjioa@'),
    ('SPTECH Aquicultura','01234567891091','14752435261832','sptechAqua@sptech.school','kdsan019j'),
    ('Peixe Samu','05312647000172','18948129894145','samucaFish@gmail.com','senha902'),
    ('Tech','05312647000172','27451647182648','tech@outlook.com','jdasu289');

INSERT INTO sensor (nome, tipo, preco) VALUES
	('Sensor de Temperatura', 'LM35', 25.5),
    ('Sensor de Umidade e Temperatura', 'DHT11', 40);
    
INSERT INTO registro (dataHora, temperatura, fkSensor) VALUES
	('2023-03-13 20:00:00', -15, 1),
    ('2023-03-13 20:05:00', -16.5, 1),
    ('2023-03-13 20:10:00', -16, 1),
    ('2023-03-13 20:15:00', -17, 1),
    ('2023-03-13 20:20:00', -18, 1);
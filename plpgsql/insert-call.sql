INSERT INTO resiliadata.area(nome) 
	VALUES ('Webdev'),('Dados');
	
INSERT INTO resiliadata.empresa(cnpj,nome,telefone,status) 
	VALUES (123,'Empresa A',333-3333,true),(456,'Empresa B',444-444,true);

-- O dado do nome da empresa('Emprea A') e área('Dados') é convertido na procedure para o id correspondente nas tabelas 'empresa' e 'area' 
CALL resiliadata.adicionarcolaborador(123,'Fábio','Analista','Empresa A','Dados');
CALL resiliadata.adicionarcolaborador(458,'Fernando','Analista','Empresa B','Dados');

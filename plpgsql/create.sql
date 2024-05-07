CREATE TABLE IF NOT EXISTS resiliadata.Empresa(
	IdEmpresa SERIAL NOT NULL,
	Cnpj INTEGER NOT NULL UNIQUE,
	Nome VARCHAR(100),
	Telefone integer,
	Status BOOLEAN,
	PRIMARY KEY(IdEmpresa)
);

CREATE TABLE IF NOT EXISTS resiliadata.Area(
	IdArea SERIAL,
	Nome VARCHAR(25) NOT NULL,
	PRIMARY KEY(IdArea)
);

CREATE TABLE IF NOT EXISTS resiliadata.Colaborador(
	IdColaborador SERIAL,
	Cpf integer NOT NULL UNIQUE,
	Nome VARCHAR(100) NOT NULL,
	Cargo VARCHAR(100) NOT NULL,
	IdEmpresa integer NOT NULL,
	IdArea integer NOT NULL,
	Status boolean,
	PRIMARY KEY(IdColaborador),
	FOREIGN KEY(IdEmpresa) REFERENCES resiliadata.Empresa(idEmpresa),
	FOREIGN KEY(IdArea) REFERENCES resiliadata.Area(IdArea)
);

CREATE TABLE IF NOT EXISTS resiliadata.Tecnologia(
	IdTecnologia SERIAL,
	Nome VARCHAR(25) NOT NULL UNIQUE,
	IdArea integer NOT NULL,
	PRIMARY KEY(IdTecnologia),
	FOREIGN KEY(IdArea) REFERENCES resiliadata.Area(IdArea)
);

CREATE TABLE IF NOT EXISTS resiliadata.EmpresaTecnologia(
	IdEmpresaTecnologia SERIAL,
	IdEmpresa INTEGER NOT NULL,
	IdTecnologia INTEGER NOT NULL,
	PRIMARY KEY(IdEmpresaTecnologia),
	FOREIGN KEY(IdEmpresa) REFERENCES resiliadata.Empresa(idEmpresa),
	FOREIGN KEY(IdTecnologia) REFERENCES resiliadata.Tecnologia(IdTecnologia)
);


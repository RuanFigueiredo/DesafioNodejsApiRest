CREATE TABLE Empresas(
  idEmpresa INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Razao social VARCHAR(45) NOT NULL,
  CNPJ CHAR(22) NOT NULL UNIQUE,
  CEP CHAR(10) NOT NULL,
  Cidade VARCHAR(45) NOT NULL,
  Estado CHAR(20) NOT NULL,
  Bairro VARCHAR(45) NOT NULL,
  Complemento  VARCHAR(45)
  )
  ENGINE = InnoDB;


  CREATE TABLE Licencas (
  idLicencas INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Empresas_idEmpresa INT NOT NULL,
  Numero VARCHAR(45) NULL,
  OrgaoAmbiental INT NOT NULL,
  Emissao DATE NOT NULL,
  Validade DATE NOT NULL,
  INDEX fk_Licencas_Empresas1_idx (Empresas_idEmpresa ASC),
  CONSTRAINT fk_Licencas_Empresas1
    FOREIGN KEY (Empresas_idEmpresa)
    REFERENCES DesafioNode.Empresas (idEmpresa)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
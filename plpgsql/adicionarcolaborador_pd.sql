CREATE OR REPLACE PROCEDURE resiliadata.adicionarcolaborador(
	_Cpf INTEGER,
	_Nome VARCHAR(100),
	_Cargo VARCHAR(50),
	_Empresa VARCHAR(100),
	_Area VARCHAR(100)
)
LANGUAGE 'plpgsql'
AS $BODY$
DECLARE
    empresa_id INTEGER;
	area_id INTEGER;
BEGIN
    SELECT idempresa INTO empresa_id FROM resiliadata.Empresa WHERE nome = _Empresa;
    IF NOT FOUND THEN
        RAISE EXCEPTION 'Empresa não encontrada';
    END IF;
	SELECT idarea INTO area_id FROM resiliadata.Area WHERE nome = _Area;
    IF NOT FOUND THEN
        RAISE EXCEPTION 'Área não encontrada';
    END IF;
  	 INSERT INTO resiliadata.colaborador(cpf,nome,cargo,idempresa,idarea,status)
	 VALUES (_Cpf,_Nome,_Cargo,empresa_id,area_id, true);
END;
$BODY$;


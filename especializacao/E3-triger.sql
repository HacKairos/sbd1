CREATE OR REPLACE FUNCTION registrador_tipo() RETURNS TRIGGER AS $registrador_tipo$
BEGIN
    update pessoa_controller set tipo = 'funcionario' and id_pessoa = new.id_funcionario where id_pessoa = NEW.id_funcionario;
END;
$registrador_tipo$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER registrador_tipo 
BEFORE INSERT ON funcionario
FOR EACH ROW EXECUTE PROCEDURE registrador_tipo();
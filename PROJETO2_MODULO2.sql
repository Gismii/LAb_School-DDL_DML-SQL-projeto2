CREATE TABLE public.ENDERECO (
	ID serial ,
	CEP varchar(20) NOT NULL,
	LOGRADOURO varchar NOT NULL,
	NUMERO varchar NOT NULL,
	COMPLEMENTO varchar,
	BAIRRO varchar NOT NULL,
	CIDADE varchar NOT NULL,
	UF varchar NOT NULL,
	CONSTRAINT ENDERECO_pk PRIMARY KEY (ID)
		
);



CREATE TABLE public.ALUNO (
	ID serial NOT NULL UNIQUE,
	ID_ENDERECO integer NOT NULL,
	NOME_COMPLETO varchar(60) NOT NULL,
	CPF varchar NOT NULL UNIQUE,
	DATA_NASCIMENTO DATE NOT NULL,
	TELEFONE VARCHAR,
	ESTADO_MATRICULA BOOLEAN NOT NULL,
	CONSTRAINT ALUNO_pk PRIMARY KEY (ID)
	

);



CREATE TABLE public.PROFESSOR (
	ID serial NOT NULL UNIQUE,
	ID_ENDERECO integer NOT NULL,
	NOME_COMPLETO varchar(60) NOT NULL,
	CPF varchar NOT NULL UNIQUE,
	DATA_NASCIMENTO DATE NOT NULL,
	TELEFONE VARCHAR,
	ESTADO BOOLEAN NOT NULL,
	FORMACAO TEXT NOT NULL,
	EXPERIENCIA TEXT NOT NULL,
	CONSTRAINT PROFESSOR_pk PRIMARY KEY (ID)
);



CREATE TABLE public.PEDAGOGO (
	ID serial NOT NULL UNIQUE,
	ID_ENDERECO integer NOT NULL,
	NOME_COMPLETO varchar(60) NOT NULL,
	CPF varchar NOT NULL UNIQUE,
	DATA_NASCIMENTO DATE NOT NULL,
	TELEFONE VARCHAR,
	ESTADO BOOLEAN NOT NULL,
	CONSTRAINT PEDAGOGO_pk PRIMARY KEY (ID)

);



CREATE TABLE public.ATENDIMENTO_PEDAGOGICO (
	ID serial NOT NULL UNIQUE,
	ID_PEDAGOGO integer NOT NULL,
	ID_ALUNO integer NOT NULL,
	TITULO_ATENDIMENTO varchar(60) NOT NULL UNIQUE,
	DESCRCAO_ATENDIMENTO varchar(255) NOT NULL,
	CATEGORIA_ATENDIMENTO varchar(255) NOT NULL,
	ESTADO_ATENDIMENTO BOOLEAN NOT NULL

);

--DML > INCLUSÃO DOS ENDEREÇOS:

SELECT * from endereco;

INSERT INTO public.endereco(cep,logradouro,numero,complemento,bairro,cidade,uf)VALUES('1111-2256','TRAVESSA H','26','apto','Clima Bom','Maceio','AL');
INSERT INTO public.endereco(cep,logradouro,numero,complemento,bairro,cidade,uf)VALUES('5707-0000','TRAVESSA Y','69','apto','CENTRO','Maceio','AL');
INSERT INTO public.endereco(cep,logradouro,numero,complemento,bairro,cidade,uf)VALUES('58071-181','TRAVESSA U','69','apto','Clima Bom','Maceio','AL');
INSERT INTO public.endereco(cep,logradouro,numero,complemento,bairro,cidade,uf)VALUES('97071-181','TRAVESSA Hipo','s/n','apto','Clima Bom','Maceio','AL');
INSERT INTO public.endereco(cep,logradouro,numero,complemento,bairro,cidade,uf)VALUES('47071-181','TRAVESSA B','58','apto','Clima Bom','Maceio','AL');
INSERT INTO public.endereco(cep,logradouro,numero,complemento,bairro,cidade,uf)VALUES('87710-181','TRAVESSA BRAZIL','s/n','apto','Clima Bom','Maceio','AL');
INSERT INTO public.endereco(cep,logradouro,numero,complemento,bairro,cidade,uf)VALUES('57071-181','TRAVESSA FLORIPA','47859','apto','Clima Bom','Maceio','AL');
INSERT INTO public.endereco(cep,logradouro,numero,complemento,bairro,cidade,uf)VALUES('57071-181','TRAVESSA BAHIA','0','apto','Clima Bom','Maceio','AL');
INSERT INTO public.endereco(cep,logradouro,numero,complemento,bairro,cidade,uf)VALUES('12071-181','TRAVESSA SALVADOR','s/n','apto','Clima Bom','Maceio','AL');
INSERT INTO public.endereco(cep,logradouro,numero,complemento,bairro,cidade,uf)VALUES('47071-181','TRAVESSA AMAZONAS','45','apto','Clima Bom','Maceio','AL');
INSERT INTO public.endereco(cep,logradouro,numero,complemento,bairro,cidade,uf)VALUES('57056-181','TRAVESSA SPUCAI','47','apto','Clima Bom','Maceio','AL');
INSERT INTO public.endereco(cep,logradouro,numero,complemento,bairro,cidade,uf)VALUES('78941-181','TRAVESSA RIO','1','apto','Clima Bom II','Maceio','AL');
INSERT INTO public.endereco(cep,logradouro,numero,complemento,bairro,cidade,uf)VALUES('85271-181','TRAVESSA II','5','apto','ClORES','Maceio','AL');
INSERT INTO public.endereco(cep,logradouro,numero,complemento,bairro,cidade,uf)VALUES('2271-1081','TRAVESSA III','69','apto','YTREFLOU','Maceio','AL');
INSERT INTO public.endereco(cep,logradouro,numero,complemento,bairro,cidade,uf)VALUES('11171-181','TRAVESSA IV','41','apto','HLOPOLIN','Maceio','AL');
INSERT INTO public.endereco(cep,logradouro,numero,complemento,bairro,cidade,uf)VALUES('98771-181','TRAVESSA V','20','apto','EUNAPOLIS','Maceio','AL');
INSERT INTO public.endereco(cep,logradouro,numero,complemento,bairro,cidade,uf)VALUES('5671-1981','TRAVESSA ZEUS','42','apto','Clima Bom','Maceio','AL');
INSERT INTO public.endereco(cep,logradouro,numero,complemento,bairro,cidade,uf)VALUES('10071-181','TRAVESSA ACAPA','639','apto','Clima Bom','Maceio','AL');
INSERT INTO public.endereco(cep,logradouro,numero,complemento,bairro,cidade,uf)VALUES('00071-181','TRAVESSA JSEUS','s/n','apto','CENTRO','Maceio','AL');
INSERT INTO public.endereco(cep,logradouro,numero,complemento,bairro,cidade,uf)VALUES('23071-181','TRAVESSA INGLES','s/n','apto','Clima Bom','Maceio','AL');
INSERT INTO public.endereco(cep,logradouro,numero,complemento,bairro,cidade,uf)VALUES('00071-181','TRAVESSA BARAO','s/n','apto','NARNIA','Maceio','AL');
INSERT INTO public.endereco(cep,logradouro,numero,complemento,bairro,cidade,uf)VALUES('77071-181','TRAVESSA VOA','s/n','apto','Clima Bom','Maceio','AL');
INSERT INTO public.endereco(cep,logradouro,numero,complemento,bairro,cidade,uf)VALUES('27071-181','TRAVESSA IFOOD','s/n','apto','Clima Bom','Maceio','AL');
INSERT INTO public.endereco(cep,logradouro,numero,complemento,bairro,cidade,uf)VALUES('97071-181','TRAVESSA TRIANGULO','s/n','apto','Clima Bom','Maceio','AL');
INSERT INTO public.endereco(cep,logradouro,numero,complemento,bairro,cidade,uf)VALUES('58071-001','TRAVESSA 5','s/n','apto','QUEROZ','Maceio','AL');
INSERT INTO public.endereco(cep,logradouro,numero,complemento,bairro,cidade,uf)VALUES('57231-181','TRAVESSA 6','s/n','apto','Clima Bom','Maceio','AL');
INSERT INTO public.endereco(cep,logradouro,numero,complemento,bairro,cidade,uf)VALUES('57891-181','TRAVESSA 7','s/n','apto','ODEIO','Maceio','AL');
INSERT INTO public.endereco(cep,logradouro,numero,complemento,bairro,cidade,uf)VALUES('87071-181','TRAVESSA 8','s/n','apto','Clima Bom','Maceio','AL');
INSERT INTO public.endereco(cep,logradouro,numero,complemento,bairro,cidade,uf)VALUES('59071-181','TRAVESSA 9','s/n','apto','Clima Bom','Maceio','AL');

-- INCLUSÃO DOS ALUNOS:

SELECT * from Aluno;

INSERT INTO public.aluno(id_endereco,nome_completo,cpf, data_nascimento,telefone,estado_matricula)VALUES(2,'Tieasdor Tieasdor','000.244.800-89','1994-10-04','48999999999',true);
INSERT INTO public.aluno(id_endereco,nome_completo,cpf, data_nascimento,telefone,estado_matricula)VALUES(3,'Nuinfeuci Gramdena','497.344.300-89','1994-10-04','4856987444',true);
INSERT INTO public.aluno(id_endereco,nome_completo,cpf, data_nascimento,telefone,estado_matricula)VALUES(4,'Lingewiu GUIMARAES','47.244.000-00','1994-10-04','48999999999',true);
INSERT INTO public.aluno(id_endereco,nome_completo,cpf, data_nascimento,telefone,estado_matricula)VALUES(5,'Lingplo Bumbveat','497.244.700-89','1994-10-04','48990099999',true);
INSERT INTO public.aluno(id_endereco,nome_completo,cpf, data_nascimento,telefone,estado_matricula)VALUES(6,'Neboeron Horaeurt','497.244.963-89','1994-10-04','48889999999',true);
INSERT INTO public.aluno(id_endereco,nome_completo,cpf, data_nascimento,telefone,estado_matricula)VALUES(7,'Uthvo Ente','654.244.800-89','1994-10-04','48999933999',true);
INSERT INTO public.aluno(id_endereco,nome_completo,cpf, data_nascimento,telefone,estado_matricula)VALUES(8,'Rekdiur Azpyopo','963.244.800-89','1994-10-04','48994599999',true);
INSERT INTO public.aluno(id_endereco,nome_completo,cpf, data_nascimento,telefone,estado_matricula)VALUES(9,'Uthvo Gramdena','111.244.800-89','1994-10-04','48999978999',true);
INSERT INTO public.aluno(id_endereco,nome_completo,cpf, data_nascimento,telefone,estado_matricula)VALUES(10,'Thrzidui GUIMARAES','400.244.800-89','1994-10-04','48991479999',true);

-- INCLUSÃO DOS PROFESSORES:

SELECT * from professor;

INSERT INTO public.professor (id_endereco,nome_completo,cpf,data_nascimento,telefone,estado,formacao,experiencia)VALUES(12,'JADE LEAO','565.001.310-00','1945-10-04','81969529995',true,'FULLSTACK','backend');
INSERT INTO public.professor (id_endereco,nome_completo,cpf,data_nascimento,telefone,estado,formacao,experiencia)VALUES(13,'ANDRIO LEAO','580.001.310-00','1945-10-04','81978999995',true,'FULLSTACK','FRONTEND');
INSERT INTO public.professor (id_endereco,nome_completo,cpf,data_nascimento,telefone,estado,formacao,experiencia)VALUES(14,'ANTONIO LEAO','960.001.310-00','1945-10-04','81969999995',true,'FULLSTACK','FULLSTACK');
INSERT INTO public.professor (id_endereco,nome_completo,cpf,data_nascimento,telefone,estado,formacao,experiencia)VALUES(15,'ANTONIGO LEAO','450.001.310-00','1945-10-04','81969990005',true,'FULLSTACK','backend');
INSERT INTO public.professor (id_endereco,nome_completo,cpf,data_nascimento,telefone,estado,formacao,experiencia)VALUES(16,'PAULO LINS','230.123.310-00','1945-10-04','819694569995',true,'FULLSTACK','FRONTEND');
INSERT INTO public.professor (id_endereco,nome_completo,cpf,data_nascimento,telefone,estado,formacao,experiencia)VALUES(17,'GUSTAVO PEDROCA','230.999.368-00','1945-10-04','81969859995',true,'FULLSTACK','SEM EXPERIENCIA');
INSERT INTO public.professor (id_endereco,nome_completo,cpf,data_nascimento,telefone,estado,formacao,experiencia)VALUES(18,'JOSÉ ALFREDO','230.001.550-00','1945-10-04','81969999900',true,'FULLSTACK','backend');
INSERT INTO public.professor (id_endereco,nome_completo,cpf,data_nascimento,telefone,estado,formacao,experiencia)VALUES(19,'JAMILLE ALMEIDA','000.001.310-00','1945-10-04','81969990000',true,'FULLSTACK','SEM EXPERIENCIA');
INSERT INTO public.professor (id_endereco,nome_completo,cpf,data_nascimento,telefone,estado,formacao,experiencia)VALUES(20,'MARCIO AGUSTO','110.001.310-00','1945-10-04','81969994457',true,'FULLSTACK','backend');

-- INCLUSÃO DOS Pedagogos:

select * FROM pedagogo;


INSERT INTO public.pedagogo(id_endereco,nome_completo,cpf,data_nascimento,telefone,estado)VALUES(22,'Dwurt Dwurt','666.409.490-21','1994-05-06','11006854712',true);
INSERT INTO public.pedagogo(id_endereco,nome_completo,cpf,data_nascimento,telefone,estado)VALUES(23,'Xugen Xugen','002.964.490-21','1995-05-06','11300854712',true);
INSERT INTO public.pedagogo(id_endereco,nome_completo,cpf,data_nascimento,telefone,estado)VALUES(24,'Huxor Junior','202.000.490-21','1996-05-30','15669854712',true);
INSERT INTO public.pedagogo(id_endereco,nome_completo,cpf,data_nascimento,telefone,estado)VALUES(25,'Adanhoyadar Adanhoyadar','202.444.490-21','1996-05-06','11369869712',true);
INSERT INTO public.pedagogo(id_endereco,nome_completo,cpf,data_nascimento,telefone,estado)VALUES(26,'Elleyhe Elleyhe','116.409.490-21','1986-05-06','11369854712',true);
INSERT INTO public.pedagogo(id_endereco,nome_completo,cpf,data_nascimento,telefone,estado)VALUES(27,'Fizum Junior','322.409.490-00','1986-05-06','11369855712',true);
INSERT INTO public.pedagogo(id_endereco,nome_completo,cpf,data_nascimento,telefone,estado)VALUES(28,'Seirhao Junior','111.409.490-21','1996-05-12','11369564712',true);
INSERT INTO public.pedagogo(id_endereco,nome_completo,cpf,data_nascimento,telefone,estado)VALUES(29,'Loiwa Loiwa','009.409.490-21','1982-05-01','11369000712',true);
INSERT INTO public.pedagogo(id_endereco,nome_completo,cpf,data_nascimento,telefone,estado)VALUES(30,'Brotoin Brotoin','303.500.490-21','1956-05-06','11361114712',true);

--INCLUSÃO DOS ATENDIMENTOS PEDAGOGICOS:

select * from atendimento_pedagogico;

INSERT INTO public.atendimento_pedagogico(id_pedagogo,id_aluno,titulo_atendimento,descrcao_atendimento,categoria_atendimento,estado_atendimento)VALUES(10,3,'semestre 1','ATENDIMENTO PERIODICO','TECNOLOGIA',true);
INSERT INTO public.atendimento_pedagogico(id_pedagogo,id_aluno,titulo_atendimento,descrcao_atendimento,categoria_atendimento,estado_atendimento)VALUES(11,4,'semestre 2','ATENDIMENTO PERIODICO','TECNOLOGIA',true);
INSERT INTO public.atendimento_pedagogico(id_pedagogo,id_aluno,titulo_atendimento,descrcao_atendimento,categoria_atendimento,estado_atendimento)VALUES(12,5,'semestre 3','ATENDIMENTO PERIODICO','TECNOLOGIA',false);
INSERT INTO public.atendimento_pedagogico(id_pedagogo,id_aluno,titulo_atendimento,descrcao_atendimento,categoria_atendimento,estado_atendimento)VALUES(13,6,'semestre 4','ATENDIMENTO PERIODICO','TECNOLOGIA',true);
INSERT INTO public.atendimento_pedagogico(id_pedagogo,id_aluno,titulo_atendimento,descrcao_atendimento,categoria_atendimento,estado_atendimento)VALUES(14,7,'semestre 5','ATENDIMENTO PERIODICO','TECNOLOGIA',false);
INSERT INTO public.atendimento_pedagogico(id_pedagogo,id_aluno,titulo_atendimento,descrcao_atendimento,categoria_atendimento,estado_atendimento)VALUES(15,8,'semestre 6','ATENDIMENTO PERIODICO','TECNOLOGIA',true);

                          
						  
			-- Aqui contem alguns comandos para consultar essa tabela --- (Deixei comentado para ser executado separado do script acima!!!)

			    
				-- Cláusula Where/not like/ like:

				SELECT * FROM aluno WHERE estado_matricula = true;

				SELECT * FROM aluno WHERE id_endereco <> 8;

				select * from aluno WHERE nome_completo like '%GUIMARAES%';

				select * from professor WHERE nome_completo like '%LEAO%';

				select * from professor WHERE nome_completo NOT like '%LEAO%';

				SELECT * FROM endereco WHERE bairro = 'Clima Bom';

				SELECT * FROM endereco WHERE bairro = 'Clima Bom' and numero = 's/n';

				-- Cláusula ORDEM BY/WHERE:

				SELECT * FROM aluno ORDER BY nome_completo ASC;

				select * from professor WHERE formacao like 'FULLSTACK' ORDER BY nome_completo DESC;

				-- ALTERAÇÃO DE COLUNE E TABELA :

				ALTER TABLE aluno ALTER COLUMN data_nascimento type VARCHAR;

                ALTER TABLE professor ALTER COLUMN data_nascimento type VARCHAR;

                ALTER TABLE pedagogo ALTER COLUMN data_nascimento type VARCHAR;

              --DELETE DADOS DAS TABELAS :







INSERT INTO categoria (nome) VALUES ('Medicamentos');
INSERT INTO categoria (nome) VALUES ('Suplementos');
INSERT INTO categoria (nome) VALUES ('Curativos');
INSERT INTO categoria (nome) VALUES ('Rações');
INSERT INTO categoria (nome) VALUES ('Acessórios');

INSERT INTO produto (nome, preco) VALUES ("Cadeira de escritório", 450.00);
INSERT INTO produto (nome, preco) VALUES ("Relógio de parede", 75.00);
INSERT INTO produto (nome, preco) VALUES ("Ventilador portátil", 120.00);
INSERT INTO produto (nome, preco) VALUES ("Toalha de banho", 45.00);
INSERT INTO produto (nome, preco) VALUES ("Garrafa térmica", 60.00);

INSERT INTO pedido (nome, cliente_id, fornecedor_id) VALUES ('Pedido 1', 1, 1);
INSERT INTO pedido (nome, cliente_id, fornecedor_id) VALUES ('Pedido 2', 2, 2);
INSERT INTO pedido (nome, cliente_id, fornecedor_id) VALUES ('Pedido 3', 3, 3);
INSERT INTO pedido (nome, cliente_id, fornecedor_id) VALUES ('Pedido 4', 4, 4);
INSERT INTO pedido (nome, cliente_id, fornecedor_id) VALUES ('Pedido 5', 5, 5);

INSERT INTO cliente (nome, cpf, email, telefone) VALUES ("Felipe de Oliveira", "0400400404", "123dasilva@gmail.com", "67999999999");
INSERT INTO cliente (nome, cpf, email, telefone) VALUES ("Lennon Martins", "0505050505", "456dasilva@gmail.com", "67888888888");
INSERT INTO cliente (nome, cpf, email, telefone) VALUES ("Daniel Garcia", "0303030303", "ggdasilva@gmail.com", "67777777777");
INSERT INTO cliente (nome, cpf, email, telefone) VALUES ("Fabus Pereira", "0202020202", "fpdasilva@gmail.com", "67666666666");
INSERT INTO cliente (nome, cpf, email, telefone) VALUES ("Eraldo Junior", "0440400404", "ejdasilva@gmail.com", "67555555555");

INSERT INTO fornecedor (razaoSocial, nomeFantasia, cnpj, email, telefone) VALUES ("Indústria de Móveis Generali Ltda", "Generali Móveis", "12345678000191", "contato@generalimoveis.com", "1140025678");
INSERT INTO fornecedor (razaoSocial, nomeFantasia, cnpj, email, telefone) VALUES ("Alimentícia Solar S/A", "Solar Foods", "23456789000182", "vendas@solarfoods.com", "2130301234");
INSERT INTO fornecedor (razaoSocial, nomeFantasia, cnpj, email, telefone) VALUES ("TecnoSol Soluções Tecnológicas ME", "TecnoSol", "34567890000173", "suporte@tecnosol.com.br", "31912345678");
INSERT INTO fornecedor (razaoSocial, nomeFantasia, cnpj, email, telefone) VALUES ("Casa & Conforto Comércio de Utensílios Ltda", "Casa & Conforto", "45678901000164", "contato@casaeconforto.com", "4140094321");
INSERT INTO fornecedor (razaoSocial, nomeFantasia, cnpj, email, telefone) VALUES ("Editora Central de Conhecimento S/A", "Central Editora", "56789012000155", "atendimento@centraleditora.com.br", "51998765432");

INSERT INTO produto (preco, categoria_id, nome) VALUES (1.0, 1, 'Vermífugo ABC');
INSERT INTO produto (preco, categoria_id, nome) VALUES (1.0, 1, 'Vermífugo DEF');
INSERT INTO produto (preco, categoria_id, nome) VALUES (1.0, 1, 'Vermífugo GHI');
INSERT INTO produto (preco, categoria_id, nome) VALUES (1.0, 1, 'Vermífugo JKL');
INSERT INTO produto (preco, categoria_id, nome) VALUES (1.0, 1, 'Vermífugo MNO');

INSERT INTO produto (preco, categoria_id, nome) VALUES (2.0, 2, 'Suplemento ABC');
INSERT INTO produto (preco, categoria_id, nome) VALUES (2.0, 2, 'Suplemento DEF');
INSERT INTO produto (preco, categoria_id, nome) VALUES (2.0, 2, 'Suplemento GHI');
INSERT INTO produto (preco, categoria_id, nome) VALUES (2.0, 2, 'Suplemento JKL');
INSERT INTO produto (preco, categoria_id, nome) VALUES (2.0, 2, 'Suplemento MNO');

INSERT INTO produto (preco, categoria_id, nome) VALUES (3.0, 3, 'Curativo ABC');
INSERT INTO produto (preco, categoria_id, nome) VALUES (3.0, 3, 'Curativo DEF');
INSERT INTO produto (preco, categoria_id, nome) VALUES (3.0, 3, 'Curativo GHI');
INSERT INTO produto (preco, categoria_id, nome) VALUES (3.0, 3, 'Curativo JKL');
INSERT INTO produto (preco, categoria_id, nome) VALUES (3.0, 3, 'Curativo MNO');

INSERT INTO produto (preco, categoria_id, nome) VALUES (4.0, 4, 'Ração ABC');
INSERT INTO produto (preco, categoria_id, nome) VALUES (4.0, 4, 'Ração DEF');
INSERT INTO produto (preco, categoria_id, nome) VALUES (4.0, 4, 'Ração GHI');
INSERT INTO produto (preco, categoria_id, nome) VALUES (4.0, 4, 'Ração JKL');
INSERT INTO produto (preco, categoria_id, nome) VALUES (4.0, 4, 'Ração MNO');

INSERT INTO produto (preco, categoria_id, nome) VALUES (5.0, 5, 'Acessório ABC');
INSERT INTO produto (preco, categoria_id, nome) VALUES (5.0, 5, 'Acessório DEF');
INSERT INTO produto (preco, categoria_id, nome) VALUES (5.0, 5, 'Acessório GHI');
INSERT INTO produto (preco, categoria_id, nome) VALUES (5.0, 5, 'Acessório JKL');
INSERT INTO produto (preco, categoria_id, nome) VALUES (5.0, 5, 'Acessório MNO');

INSERT INTO veiculo (marca, modelo, placa) VALUES ('Toyota', 'Corolla', 'ABC-1234');
INSERT INTO veiculo (marca, modelo, placa) VALUES ('Honda', 'Civic', 'DEF-5678');
INSERT INTO veiculo (marca, modelo, placa) VALUES ('Ford', 'Focus', 'GHI-9101');

-- Associando ao veículo Toyota Corolla (ID 1)
INSERT INTO proprietario (nome, veiculo_id) VALUES ('Carlos Silva', 1);  

-- Associando ao veículo Honda Civic (ID 2)
INSERT INTO proprietario (nome, veiculo_id) VALUES ('Ana Souza', 2);  

-- Associando ao veículo Ford Focus (ID 3);
INSERT INTO proprietario (nome, veiculo_id) VALUES ('João Pereira', 3); 
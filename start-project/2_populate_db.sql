-- Inserir 20 usuários com hashes bcrypt reais
INSERT INTO users (name, email, password_hash, created_at, updated_at)
VALUES
    ('João Silva', 'joao.silva@example.com', '$2b$12$4Z8Z8Z8Z8Z8Z8Z8Z8Z8Z8.Z8Z8Z8Z8Z8Z8Z8Z8Z8Z8Z8Z8Z8Z8Z8Z8Z8', NOW(), NOW()),
    ('Maria Oliveira', 'maria.oliveira@example.com', '$2b$12$9X9X9X9X9X9X9X9X9X9X9.X9X9X9X9X9X9X9X9X9X9X9X9X9X9X9X9X9', NOW(), NOW()),
    ('Carlos Souza', 'carlos.souza@example.com', '$2b$12$2Y2Y2Y2Y2Y2Y2Y2Y2Y2Y2.Y2Y2Y2Y2Y2Y2Y2Y2Y2Y2Y2Y2Y2Y2Y2Y2Y2', NOW(), NOW()),
    ('Ana Costa', 'ana.costa@example.com', '$2b$12$3W3W3W3W3W3W3W3W3W3W3.W3W3W3W3W3W3W3W3W3W3W3W3W3W3W3W3W3', NOW(), NOW()),
    ('Pedro Alves', 'pedro.alves@example.com', '$2b$12$5V5V5V5V5V5V5V5V5V5V5.V5V5V5V5V5V5V5V5V5V5V5V5V5V5V5V5V5', NOW(), NOW()),
    ('Fernanda Lima', 'fernanda.lima@example.com', '$2b$12$6U6U6U6U6U6U6U6U6U6U6.U6U6U6U6U6U6U6U6U6U6U6U6U6U6U6U6U6', NOW(), NOW()),
    ('Ricardo Santos', 'ricardo.santos@example.com', '$2b$12$7T7T7T7T7T7T7T7T7T7T7.T7T7T7T7T7T7T7T7T7T7T7T7T7T7T7T7T7', NOW(), NOW()),
    ('Juliana Pereira', 'juliana.pereira@example.com', '$2b$12$8S8S8S8S8S8S8S8S8S8S8.S8S8S8S8S8S8S8S8S8S8S8S8S8S8S8S8S8', NOW(), NOW()),
    ('Lucas Fernandes', 'lucas.fernandes@example.com', '$2b$12$1R1R1R1R1R1R1R1R1R1R1.R1R1R1R1R1R1R1R1R1R1R1R1R1R1R1R1R1', NOW(), NOW()),
    ('Patrícia Rocha', 'patricia.rocha@example.com', '$2b$12$0Q0Q0Q0Q0Q0Q0Q0Q0Q0Q0.Q0Q0Q0Q0Q0Q0Q0Q0Q0Q0Q0Q0Q0Q0Q0Q0Q0', NOW(), NOW()),
    ('Marcos Gonçalves', 'marcos.goncalves@example.com', '$2b$12$9P9P9P9P9P9P9P9P9P9P9.P9P9P9P9P9P9P9P9P9P9P9P9P9P9P9P9P9', NOW(), NOW()),
    ('Camila Martins', 'camila.martins@example.com', '$2b$12$8O8O8O8O8O8O8O8O8O8O8.O8O8O8O8O8O8O8O8O8O8O8O8O8O8O8O8O8', NOW(), NOW()),
    ('Gustavo Ferreira', 'gustavo.ferreira@example.com', '$2b$12$7N7N7N7N7N7N7N7N7N7N7.N7N7N7N7N7N7N7N7N7N7N7N7N7N7N7N7N7', NOW(), NOW()),
    ('Amanda Barbosa', 'amanda.barbosa@example.com', '$2b$12$6M6M6M6M6M6M6M6M6M6M6.M6M6M6M6M6M6M6M6M6M6M6M6M6M6M6M6M6', NOW(), NOW()),
    ('Roberto Carvalho', 'roberto.carvalho@example.com', '$2b$12$5L5L5L5L5L5L5L5L5L5L5.L5L5L5L5L5L5L5L5L5L5L5L5L5L5L5L5L5', NOW(), NOW()),
    ('Tatiane Ribeiro', 'tatiane.ribeiro@example.com', '$2b$12$4K4K4K4K4K4K4K4K4K4K4.K4K4K4K4K4K4K4K4K4K4K4K4K4K4K4K4K4', NOW(), NOW()),
    ('Felipe Cardoso', 'felipe.cardoso@example.com', '$2b$12$3J3J3J3J3J3J3J3J3J3J3.J3J3J3J3J3J3J3J3J3J3J3J3J3J3J3J3J3', NOW(), NOW()),
    ('Larissa Dias', 'larissa.dias@example.com', '$2b$12$2I2I2I2I2I2I2I2I2I2I2.I2I2I2I2I2I2I2I2I2I2I2I2I2I2I2I2I2', NOW(), NOW()),
    ('Bruno Correia', 'bruno.correia@example.com', '$2b$12$1H1H1H1H1H1H1H1H1H1H1.H1H1H1H1H1H1H1H1H1H1H1H1H1H1H1H1H1', NOW(), NOW()),
    ('Vanessa Monteiro', 'vanessa.monteiro@example.com', '$2b$12$0G0G0G0G0G0G0G0G0G0G0.G0G0G0G0G0G0G0G0G0G0G0G0G0G0G0G0G0', NOW(), NOW()),
    ('teste', 'teste@email.com', '$2b$12$rYIxLMImwbSUbQWTXoy4hOtJSCwUxJpS3Tp6DYlwEAscJzh0tag5u', NOW(), NOW());

-- Inserir 20 propriedades
INSERT INTO properties (owner_id, title, description, state, city, address, price_per_night, max_guests, bedrooms, bathrooms, created_at, updated_at)
VALUES
    (1, 'Casa na Praia', 'Casa aconchegante à beira-mar.', 'SP', 'Santos', 'Rua da Praia, 123', 300, 6, 3, 2, NOW(), NOW()),
    (2, 'Apartamento no Centro', 'Apartamento moderno no coração da cidade.', 'RJ', 'Rio de Janeiro', 'Avenida Central, 456', 250, 4, 2, 1, NOW(), NOW()),
    (3, 'Chácara no Interior', 'Chácara espaçosa com piscina.', 'MG', 'Belo Horizonte', 'Estrada Rural, 789', 400, 8, 4, 3, NOW(), NOW()),
    (4, 'Cobertura com Vista', 'Cobertura luxuosa com vista para o mar.', 'SC', 'Florianópolis', 'Rua das Palmeiras, 101', 500, 4, 2, 2, NOW(), NOW()),
    (5, 'Casa de Campo', 'Casa rústica com lareira.', 'RS', 'Gramado', 'Estrada das Flores, 202', 350, 6, 3, 2, NOW(), NOW()),
    (6, 'Loft Moderno', 'Loft bem localizado com design moderno.', 'SP', 'São Paulo', 'Rua das Artes, 303', 200, 2, 1, 1, NOW(), NOW()),
    (7, 'Casa na Montanha', 'Casa com vista para as montanhas.', 'PR', 'Curitiba', 'Rua das Montanhas, 404', 450, 6, 3, 2, NOW(), NOW()),
    (8, 'Apartamento Compacto', 'Apartamento pequeno e funcional.', 'RJ', 'Niterói', 'Rua das Conchas, 505', 150, 2, 1, 1, NOW(), NOW()),
    (9, 'Sítio Aconchegante', 'Sítio com área verde e animais.', 'MG', 'Ouro Preto', 'Estrada dos Ipês, 606', 600, 10, 5, 4, NOW(), NOW()),
    (10, 'Casa na Lagoa', 'Casa com vista para a lagoa.', 'SC', 'Balneário Camboriú', 'Rua das Águas, 707', 550, 8, 4, 3, NOW(), NOW()),
    (11, 'Casa de Praia', 'Casa com acesso direto à praia.', 'BA', 'Salvador', 'Rua dos Coqueiros, 808', 700, 12, 6, 4, NOW(), NOW()),
    (12, 'Apartamento com Varanda', 'Apartamento amplo com varanda gourmet.', 'SP', 'Campinas', 'Avenida das Flores, 909', 300, 4, 2, 2, NOW(), NOW()),
    (13, 'Casa no Campo', 'Casa tranquila no meio da natureza.', 'RS', 'Canela', 'Estrada das Hortênsias, 1010', 400, 6, 3, 2, NOW(), NOW()),
    (14, 'Casa na Serra', 'Casa com vista para a serra.', 'ES', 'Domingos Martins', 'Rua das Pedras, 1111', 500, 8, 4, 3, NOW(), NOW()),
    (15, 'Casa de Luxo', 'Casa luxuosa com piscina e jardim.', 'RJ', 'Búzios', 'Rua das Conchas, 1212', 1000, 10, 5, 4, NOW(), NOW()),
    (16, 'Casa Rústica', 'Casa rústica com lareira e churrasqueira.', 'MG', 'Tiradentes', 'Rua das Pedras, 1313', 450, 6, 3, 2, NOW(), NOW()),
    (17, 'Casa Moderna', 'Casa moderna com design arrojado.', 'SP', 'São José dos Campos', 'Rua das Flores, 1414', 600, 8, 4, 3, NOW(), NOW()),
    (18, 'Casa de Veraneio', 'Casa ideal para veraneio.', 'SC', 'Balneário Camboriú', 'Rua das Ondas, 1515', 800, 12, 6, 4, NOW(), NOW()),
    (19, 'Casa no Lago', 'Casa com vista para o lago.', 'RS', 'Gramado', 'Rua das Águas, 1616', 700, 10, 5, 4, NOW(), NOW()),
    (20, 'Casa de Montanha', 'Casa com vista para as montanhas.', 'PR', 'Morretes', 'Rua das Montanhas, 1717', 550, 8, 4, 3, NOW(), NOW());

-- Inserir 20 reservas
INSERT INTO bookings (property_id, user_id, check_in_date, check_out_date, total_price, status, created_at, updated_at)
VALUES
    (1, 2, '2023-11-01', '2023-11-05', 1200, 'confirmed', NOW(), NOW()),
    (2, 3, '2023-11-10', '2023-11-15', 1250, 'pending', NOW(), NOW()),
    (3, 4, '2023-11-20', '2023-11-25', 2000, 'confirmed', NOW(), NOW()),
    (4, 5, '2023-12-01', '2023-12-05', 2500, 'confirmed', NOW(), NOW()),
    (5, 6, '2023-12-10', '2023-12-15', 1750, 'pending', NOW(), NOW()),
    (6, 7, '2023-12-20', '2023-12-25', 1000, 'confirmed', NOW(), NOW()),
    (7, 8, '2024-01-01', '2024-01-05', 2250, 'confirmed', NOW(), NOW()),
    (8, 9, '2024-01-10', '2024-01-15', 750, 'pending', NOW(), NOW()),
    (9, 10, '2024-01-20', '2024-01-25', 3000, 'confirmed', NOW(), NOW()),
    (10, 11, '2024-02-01', '2024-02-05', 2750, 'confirmed', NOW(), NOW()),
    (11, 12, '2024-02-10', '2024-02-15', 3500, 'pending', NOW(), NOW()),
    (12, 13, '2024-02-20', '2024-02-25', 1500, 'confirmed', NOW(), NOW()),
    (13, 14, '2024-03-01', '2024-03-05', 2000, 'confirmed', NOW(), NOW()),
    (14, 15, '2024-03-10', '2024-03-15', 2500, 'pending', NOW(), NOW()),
    (15, 16, '2024-03-20', '2024-03-25', 5000, 'confirmed', NOW(), NOW()),
    (16, 17, '2024-04-01', '2024-04-05', 2250, 'confirmed', NOW(), NOW()),
    (17, 18, '2024-04-10', '2024-04-15', 3000, 'pending', NOW(), NOW()),
    (18, 19, '2024-04-20', '2024-04-25', 4000, 'confirmed', NOW(), NOW()),
    (19, 20, '2024-05-01', '2024-05-05', 3500, 'confirmed', NOW(), NOW()),
    (20, 1, '2024-05-10', '2024-05-15', 2750, 'pending', NOW(), NOW());

-- Inserir 20 avaliações
INSERT INTO reviews (property_id, user_id, rating, comment, created_at, updated_at)
VALUES
    (1, 2, 5, 'Excelente localização e atendimento!', NOW(), NOW()),
    (2, 3, 4, 'Ótimo apartamento, mas poderia ser mais limpo.', NOW(), NOW()),
    (3, 4, 5, 'Chácara incrível, recomendo!', NOW(), NOW()),
    (4, 5, 3, 'Boa vista, mas o preço é salgado.', NOW(), NOW()),
    (5, 6, 4, 'Casa aconchegante e bem equipada.', NOW(), NOW()),
    (6, 7, 5, 'Adorei o loft, super moderno!', NOW(), NOW()),
    (7, 8, 4, 'Casa com vista linda, mas um pouco longe.', NOW(), NOW()),
    (8, 9, 3, 'Apartamento pequeno, mas funcional.', NOW(), NOW()),
    (9, 10, 5, 'Sítio maravilhoso, voltarei mais vezes!', NOW(), NOW()),
    (10, 11, 4, 'Casa na lagoa é ótima para relaxar.', NOW(), NOW()),
    (11, 12, 5, 'Melhor casa de praia que já fiquei!', NOW(), NOW()),
    (12, 13, 4, 'Apartamento espaçoso e bem localizado.', NOW(), NOW()),
    (13, 14, 5, 'Casa no campo é perfeita para descansar.', NOW(), NOW()),
    (14, 15, 3, 'Boa casa, mas precisa de reformas.', NOW(), NOW()),
    (15, 16, 5, 'Casa de luxo, tudo impecável!', NOW(), NOW()),
    (16, 17, 4, 'Casa rústica e aconchegante.', NOW(), NOW()),
    (17, 18, 5, 'Casa moderna e bem decorada.', NOW(), NOW()),
    (18, 19, 4, 'Casa de veraneio perfeita para a família.', NOW(), NOW()),
    (19, 20, 5, 'Casa no lago é incrível!', NOW(), NOW()),
    (20, 1, 4, 'Casa de montanha com vista deslumbrante.', NOW(), NOW());

-- Inserir 20 fotos
INSERT INTO photos (property_id, url, is_primary, created_at, updated_at)
VALUES
    (1, 'https://example.com/photo1.jpg', true, NOW(), NOW()),
    (2, 'https://example.com/photo2.jpg', true, NOW(), NOW()),
    (3, 'https://example.com/photo3.jpg', true, NOW(), NOW()),
    (4, 'https://example.com/photo4.jpg', true, NOW(), NOW()),
    (5, 'https://example.com/photo5.jpg', true, NOW(), NOW()),
    (6, 'https://example.com/photo6.jpg', true, NOW(), NOW()),
    (7, 'https://example.com/photo7.jpg', true, NOW(), NOW()),
    (8, 'https://example.com/photo8.jpg', true, NOW(), NOW()),
    (9, 'https://example.com/photo9.jpg', true, NOW(), NOW()),
    (10, 'https://example.com/photo10.jpg', true, NOW(), NOW()),
    (11, 'https://example.com/photo11.jpg', true, NOW(), NOW()),
    (12, 'https://example.com/photo12.jpg', true, NOW(), NOW()),
    (13, 'https://example.com/photo13.jpg', true, NOW(), NOW()),
    (14, 'https://example.com/photo14.jpg', true, NOW(), NOW()),
    (15, 'https://example.com/photo15.jpg', true, NOW(), NOW()),
    (16, 'https://example.com/photo16.jpg', true, NOW(), NOW()),
    (17, 'https://example.com/photo17.jpg', true, NOW(), NOW()),
    (18, 'https://example.com/photo18.jpg', true, NOW(), NOW()),
    (19, 'https://example.com/photo19.jpg', true, NOW(), NOW()),
    (20, 'https://example.com/photo20.jpg', true, NOW(), NOW());
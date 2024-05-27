DROP TABLE IF EXISTS Projects CASCADE;
DROP TABLE IF EXISTS tasks CASCADE;
DROP TABLE IF EXISTS Resources CASCADE;

CREATE TABLE Projects (
    project_id SERIAL PRIMARY KEY,
    project_name TEXT,
    description TEXT,
    start_date VARCHAR(15),
    end_date VARCHAR(15),
    budget FLOAT
);

CREATE TABLE Resources (
    resource_id SERIAL PRIMARY KEY,
    resource_name VARCHAR(255),
    type VARCHAR(255),
    quantity FLOAT,
    supplier_name VARCHAR(255),
    supplier_phone VARCHAR(255)
);

CREATE TABLE Tasks (
    task_id SERIAL PRIMARY KEY,
    description TEXT,
    start_date VARCHAR(15),
    end_date VARCHAR(15),
    status VARCHAR(10),
    resource_id INT REFERENCES Resources(resource_id) on Delete cascade,
    project_id INT REFERENCES Projects(project_id) on Delete cascade
);

INSERT INTO Projects (project_name, description, start_date, end_date, budget) VALUES
('Project 1', 'Description for Project 1', '2024-03-01', '2024-08-01', 300000000.00),
('Project 2', 'Description for Project 2', '2024-03-01', '2024-08-01', 300000000.00),
('Project 3', 'Description for Project 3', '2024-03-01', '2024-08-01', 300000000.00),
('Project 4', 'Description for Project 4', '2024-03-01', '2024-08-01', 300000000.00),
('Project 5', 'Description for Project 5', '2024-03-01', '2024-08-01', 300000000.00),
('Project 6', 'Description for Project 6', '2024-03-01', '2024-08-01', 300000000.00),
('Project 7', 'Description for Project 7', '2024-03-01', '2024-08-01', 300000000.00),
('Project 8', 'Description for Project 8', '2024-03-01', '2024-08-01', 300000000.00),
('Project 9', 'Description for Project 9', '2024-03-01', '2024-08-01', 300000000.00);


INSERT INTO Resources (resource_name, type, quantity, supplier_name, supplier_phone) VALUES 
('Cement', 'Material', 1000.0, 'ABC Supplies', '123-456-7890'),
('Bricks', 'Material', 5000.0, 'XYZ Bricks Co.', '234-567-8901'),
('Steel Rods', 'Material', 300.0, 'SteelWorks Ltd.', '345-678-9012'),
('Excavator', 'Equipment', 2.0, 'HeavyMachinery Inc.', '456-789-0123'),
('Concrete Mixer', 'Equipment', 3.0, 'BuildEquip Rentals', '567-890-1234'),
('Safety Helmets', 'Safety Gear', 50.0, 'SafetyFirst Supplies', '678-901-2345');

INSERT INTO Tasks (description, start_date, end_date, status, resource_id, project_id)
VALUES 
('Complete project documentation', '2024-05-01', '2024-05-15', 'doing', 1, 11),
('Write unit tests', '2024-05-02', '2024-05-07', 'todo', 1, 12),
('Fix bugs', '2024-05-08', '2024-05-10', 'todo', 1, 13),
('Deploy to production', '2024-05-11', '2024-05-15', 'todo', 1, 14),
('Design new feature', '2024-05-05', '2024-05-20', 'doing', 1, 15),
('Code review', '2024-05-03', '2024-05-06', 'done', 1, 10);

SELECT * FROM projects;



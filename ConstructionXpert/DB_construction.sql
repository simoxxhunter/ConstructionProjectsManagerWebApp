DROP TABLE IF EXISTS Projects CASCADE;
DROP TABLE IF EXISTS tasks CASCADE;
DROP TABLE IF EXISTS Resources CASCADE;

CREATE TABLE Projects (
    project_id SERIAL PRIMARY KEY,
    project_name TEXT,
    description TEXT,
    start_date DATE,
    end_date DATE,
    budget FLOAT
);

CREATE TABLE Tasks (
    task_id SERIAL PRIMARY KEY,
    description TEXT,
    start_date DATE,
    end_date DATE,
    status VARCHAR(10),
    resource_id INT REFERENCES Resources(resource_id),
    project_id INT REFERENCES Projects(project_id) 
);

CREATE TABLE Resources (
    resource_id SERIAL PRIMARY KEY,
    resource_name VARCHAR(255),
    type VARCHAR(255),
    quantity FLOAT,
    supplier_name VARCHAR(255),
    supplier_phone VARCHAR(255)
);

select * from tasks;
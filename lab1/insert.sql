INSERT INTO s335111.employees (name, role, workplace)
VALUES
    ('Arnold', 'Employee', 'Disneyland'),
    ('Hammond', 'Supervisor', 'Disneyland'),
    ('Alice', 'Secretary', 'Disneyland'),
    ('Bob', 'Employee', 'Navy');

INSERT INTO s335111.technology_skills (skill_name)
VALUES
    ('Programming'),
    ('Networking'),
    ('Database Management');

INSERT INTO s335111.bosses (boss_name, yelling_approach, technology_knowledge)
VALUES
    ('Hammond', true, false),
    ('Smith', true, false);

INSERT INTO s335111.secretaries (secretary_name)
VALUES
    ('Alice'),
    ('Eve');

INSERT INTO s335111.car_requests (employee_id, boss_id, request_date)
VALUES
    (1, 1, '2023-09-01'),
    (4, 2, '2023-09-02');

INSERT INTO employee_skills (employee_id, skill_id)
VALUES
    (1, 1),
    (1, 2),
    (4, 3);

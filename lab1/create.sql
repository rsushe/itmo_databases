CREATE TABLE s335111.employees
(
    employee_id SERIAL PRIMARY KEY,
    name        VARCHAR(255) NOT NULL,
    role        VARCHAR(255) NOT NULL,
    workplace   VARCHAR(255) NOT NULL
);

CREATE TABLE s335111.technology_skills
(
    skill_id   SERIAL PRIMARY KEY,
    skill_name VARCHAR(255) NOT NULL
);

CREATE TABLE s335111.bosses
(
    boss_id              SERIAL PRIMARY KEY,
    boss_name            VARCHAR(255) NOT NULL,
    yelling_approach     BOOLEAN      NOT NULL,
    technology_knowledge BOOLEAN      NOT NULL,
    secretary_id         INT          NOT NULL
);

CREATE TABLE s335111.secretaries
(
    secretary_id   SERIAL PRIMARY KEY,
    secretary_name VARCHAR(255) NOT NULL,
    boss_id        INT          NOT NULL,
    FOREIGN KEY (boss_id) REFERENCES bosses (boss_id)
);

CREATE TABLE s335111.car_requests
(
    request_id   SERIAL PRIMARY KEY,
    employee_id  INT  NOT NULL,
    boss_id      INT  NOT NULL,
    request_date DATE NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES employees (employee_id),
    FOREIGN KEY (boss_id) REFERENCES Bosses (boss_id)
);

CREATE TABLE s335111.employee_skills
(
    employee_id INT NOT NULL,
    skill_id    INT NOT NULL,
    PRIMARY KEY (employee_id, skill_id),
    FOREIGN KEY (employee_id) REFERENCES Employees (employee_id),
    FOREIGN KEY (skill_id) REFERENCES technology_skills (skill_id)
);

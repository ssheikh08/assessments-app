-- Create the Assessments table
CREATE TABLE Assessments (
    assessment_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    total_marks INTEGER
);

-- Create the Questions table
CREATE TABLE Questions (
    question_id SERIAL PRIMARY KEY,
    assessment_id INTEGER REFERENCES Assessments (assessment_id),
    question_text TEXT NOT NULL
);

-- Create the Options table
CREATE TABLE Options (
    option_id SERIAL PRIMARY KEY,
    question_id INTEGER REFERENCES Questions (question_id),
    option_text TEXT NOT NULL,
    is_correct BOOLEAN
);

-- Create the Grades table
CREATE TABLE Grades (
    grade_id SERIAL PRIMARY KEY,
    assessment_id INTEGER REFERENCES Assessments (assessment_id),
    student_id INTEGER,
    score INTEGER
);

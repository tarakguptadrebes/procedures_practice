CREATE TABLE mortgages(
    mortgage_id INT PRIMARY KEY,
    customer_id INT,
    application_id INT,
    start_date DATE,
    loan_amount INT,
    interest_rate NUMERIC,
    term_years INT
);
CREATE TABLE repayments(
    repayment_id INT PRIMARY KEY,
    mortgage_id INT,
    payment_date DATE,
    amount INT,
    payment_status VARCHAR
);
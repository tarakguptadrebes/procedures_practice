CREATE TABLE mortgage_applications(
    application_id INT PRIMARY KEY,
    customer_id INT,
    application_date DATE,
    requested_amount INT,
    property_value INT,
    ltv NUMERIC,
    decision VARCHAR
);
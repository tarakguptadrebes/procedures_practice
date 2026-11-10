CREATE OR REPLACE PROCEDURE customers_procedure()
    LANGUAGE plpgsql
    AS $$

    BEGIN

        TRUNCATE TABLE customers;

        INSERT INTO customers(
            customer_id,
            customer_name,
            city,
            annual_income,
            employment_status
        )

        SELECT
            customer_id,
            customer_name,
            city,
            annual_income,
            employment_status
        FROM customers_stg;

END;
$$;



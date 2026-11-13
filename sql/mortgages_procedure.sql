CREATE OR REPLACE PROCEDURE mortgages_procedure()
    LANGUAGE plpgsql
    AS $$

    BEGIN

        TRUNCATE TABLE mortgages;

        INSERT INTO mortgages(
            mortgage_id,
            customer_id,
            application_id,
            start_date,
            loan_amount,
            interest_rate,
            term_years
        )

        SELECT
            mortgage_id,
            customer_id,
            application_id,
            start_date::date,
            loan_amount,
            interest_rate,
            term_years
        FROM mortgages_stg;

END;
$$;
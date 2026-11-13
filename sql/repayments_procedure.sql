CREATE OR REPLACE PROCEDURE repayments_procedure()
    LANGUAGE plpgsql
    AS $$

    BEGIN

        TRUNCATE TABLE repayments;

        INSERT INTO repayments(
            repayment_id,
            mortgage_id,
            payment_date,
            amount,
            payment_status
        )

        SELECT
            repayment_id,
            mortgage_id,
            payment_date::date,
            amount,
            payment_status
        FROM repayments_stg;

END;
$$;
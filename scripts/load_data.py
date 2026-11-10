import os
import pandas as pd
from pathlib import Path
from sqlalchemy import create_engine
from dotenv import load_dotenv

base_dir = Path(__file__).parent.parent

load_dotenv()

db_url = os.getenv('database_url')

engine = create_engine(db_url)

datasets = {
    'customers.csv':'customers_stg',
    'mortgage_applications.csv':'mortgage_applications_stg',
    'mortgages.csv':'mortgages_stg',
    'repayments.csv':'repayments_stg'
}

for csv_file, table_name in datasets.items():
    file_path = base_dir / 'data' / csv_file

    df = pd.read_csv(file_path)

    df.to_sql(
        table_name,
        engine,
        if_exists='replace',
        index=False
    )



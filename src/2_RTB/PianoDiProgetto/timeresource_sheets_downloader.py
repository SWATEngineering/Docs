import json

# to install:
# - pip install -t lib google-auth google-auth-httplib2 google-api-python-client --upgrade
# - pip install gspread
# - pip install pandas

import pandas as pd
from google.oauth2 import service_account
import gspread
import os

f = open("Credentials/swatsheetscraper-c073830f31bf.json")
service_account_info = json.load(f)
f.close()

credentials = service_account.Credentials.from_service_account_info(
    service_account_info
)
scope = [
    "https://spreadsheets.google.com/feeds",
    "https://www.googleapis.com/auth/drive",
]
creds_with_scope = credentials.with_scopes(scope)
client = gspread.authorize(creds_with_scope)
spreadsheet = client.open_by_url(
    "https://docs.google.com/spreadsheets/d/1i8MALUojfiQies5L4YpEIXBAUTfF-uAxcFPf5KePXJE/edit#gid=0"
)
worksheet = spreadsheet.get_worksheet(0)
records_data = worksheet.get_all_records()
records_df = pd.DataFrame.from_dict(records_data)
non_empty_records = records_df[records_df["Costo"] != 0]
non_empty_records.to_csv("scraped_timeresource.csv", index=False, header=False)

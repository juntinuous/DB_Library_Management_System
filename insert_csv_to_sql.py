import sqlite3
import pandas as pd

# File paths
files = {
    "PUBLISHER": "./LMSDataset/Publisher.csv",
    "LIBRARY_BRANCH": "./LMSDataset/Library_Branch.csv",
    "BORROWER": "./LMSDataset/Borrower.csv",
    "BOOK": "./LMSDataset/Book.csv",
    "BOOK_AUTHORS": "./LMSDataset/Book_Authors.csv",
    "BOOK_COPIES": "./LMSDataset/Book_Copies.csv",
    "BOOK_LOANS": "./LMSDataset/Book_Loans.csv"
}

# Database connection
db_name = "Library_Management_System.db"
conn = sqlite3.connect(db_name)
cursor = conn.cursor()

# Function to insert data from CSV into a table
def insert_csv_into_table(table_name, file_path):
    # Load CSV file into a DataFrame
    df = pd.read_csv(file_path)
    # Insert data into the table
    for _, row in df.iterrows():
        placeholders = ", ".join(["?"] * len(row))
        query = f"INSERT INTO {table_name} VALUES ({placeholders})"
        cursor.execute(query, tuple(row))

# Insert data into each table
for table, file_path in files.items():
    print(f"Inserting data into {table}...")
    insert_csv_into_table(table, file_path)

# Commit and close the connection
conn.commit()
conn.close()
print("Data inserted successfully!")
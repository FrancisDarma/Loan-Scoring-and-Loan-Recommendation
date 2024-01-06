CREATE TABLE BORROWERS (
	borrower_id INTEGER PRIMARY KEY,
	name VARCHAR(255),
	age INTEGER,
	gender VARCHAR(255),
	employment_status VARCHAR(255)
);

COPY BORROWERS
FROM 'D:\samir\Data-Analyst-Home-Task\borrowers.csv'
DELIMITER ';'
CSV HEADER;

---------------------------------------------------------
CREATE TABLE LOANS (
	loan_id INTEGER PRIMARY KEY,
	borrower_id INTEGER,
	loan_amount FLOAT,
	interest_rate FLOAT,
	term_months FLOAT,
	status VARCHAR(255),
	date_issued TIMESTAMP,
	date_due TIMESTAMP,
	date_repaid TIMESTAMP,
	CONSTRAINT fk_borrower
	FOREIGN KEY (borrower_id) REFERENCES BORROWERS(borrower_id)
);


COPY LOANS 
FROM 'D:\samir\Data-Analyst-Home-Task\Loans.csv'
DELIMITER ';'
CSV HEADER;

------------------------------------------------------------------

CREATE TABLE REPAYMENTS (
	repayment_id INTEGER PRIMARY KEY,
	loan_id INTEGER,
	amount_repaid FLOAT,
	date_repaid TIMESTAMP,
	CONSTRAINT fk_loans
	FOREIGN KEY (loan_id) REFERENCES LOANS(loan_id)
);

COPY REPAYMENTS 
FROM 'D:\samir\Data-Analyst-Home-Task\Repayments.csv'
DELIMITER ';'
CSV HEADER;

- Annuity amount: regular yearly payments one receives
- Consider a person who has an annuity of $1000 and their minimum payment amount is $200. The `PAYMENT_MIN_TO_ANNUITY_RATIO` would be $200/$1000 = 0.2, indicating that their minimum payment is 20% of their annuity. This could suggest that they have a good ability to make the minimum required payment.
- In the context of credit scoring and risk management, "credit" refers to the ability of an individual or an entity to borrow money or obtain goods and services with the promise to repay at a later date. It's essentially a trust extended to a borrower to defer payment for something they receive now. Credit allows individuals and businesses to make purchases or investments they otherwise couldn't afford with their available cash.

- Credit differs from money or other kinds of exchange in that it represents a contractual agreement to repay borrowed funds or fulfill financial obligations in the future. While money serves as a medium of exchange and a store of value, credit allows for the immediate acquisition of goods or services based on the promise of the borrower to repay the lender over time. 

- Credit worthiness, or the ability to obtain credit, is typically measured by assessing various factors, including:
    - Credit History: A record of past borrowing behavior, including repayment history, outstanding debt and types of credit accounts.
    - Income and Employment Stability: Lender often consider a borrower's income level and employment history to assess their ability to repay debts.
    - Debt-to-Income-Ratio (DTI): This ratio compares the borrower's monthly debt obligations to their gross income, providing insights on their ability to acquire additional debt.
    - Credit Utilization: The proportion of a borrower's available credit that they are currently using. High utilization might indicate high financial strain, whereas low utilization suggests responsible credit management.
    - Payment History: A track record of on-time payments on credit accounts, bills and other financial obligations. 

- Credit bureau plays a crucial role in credit scoring and risk assessment by collecting, maintaining, and providing credit information about individuals and businesses to lenders, financial institutions, and other authorized parties. 
    - Data Collection: Credit bureaus gather information from various sources, including lenders, credit card companies, public records (such as bankruptcies, court judgments), and other financial institutions. This information forms the basis of individuals' credit reports.
    - Credit Reporting: Credit bureaus compile this data into credit reports for individuals and businesses. These reports contain detailed information about credit accounts, payment history, outstanding debts, credit inquiries, and public records. Lenders and other authorized parties use these reports to assess credit worthiness and make informed decisions about extending credit.
    - Credit Scoring: FICO scores, VantageScores... quantify an individual's creditworthiness based on their credit history. Lenders use these scores as a standardized way to evaluate the risk of lending to a particular borrower.
    - Risk Management: Credit bureaus help lenders mitigate risk by providing insights into borrowers' credit histories and financial behaviors. Lenders can use this information to make more informed lending decisions, such as setting appropriate interest rates, credit limits, and terms for loans and credit cards.
- Overall, credit bureaus serve as central repositories of credit information, facilitating efficient and standardized credit evaluation processes for lenders and borrowers alike. 

- Terminal node: also known as leaf node is the final node in the decision tree where the final decision or outcome is made. It has no child nodes and represents a specific outcome or class.

- Univariate threshold effect: analyze a single variable for a specific thresh that leads to a change in behavior.
- Bivariate threshold effect: analyze the interactions between two variables and their thresholds.
- Gauging the out-of-sample performance of a model: This process involves evaluating how well the model performs on the data that hasn't been seen during the training process. This typically involves testing the model on a separate dataset, called the "test set" or "validation set", which were not used to train the model. The gold is to assess how well the model generalizes to new, unseen data, providing insights to its predictive capabilities and potential real-world performance. This process helps to validate the model's effectiveness and reliability before deploying in its practical applications. 


# Files:
-   application_{train|test}.csv: The main training data with information about each loan application at Home Credit. Every loan has its own row and is identified by SK_ID_CURR. The training application data comes with the TARGET indicating 0:the loan was repaid or 1:the loan was not repaid.

- bureau.csv: 
    -   All client's previous credits provided by other financial institutions that were reported to Credit Bureau
    -   For every loan, there are as many rows as number of credits the client had in Credit Bureau before the application date
    - In this dataset it consists of data concerning client's previous credits from other financial institutions. Each previous credit has its own row in bureau, but one loan in the application data can have multiple previous credits.

- bureau_balance.csv
    -   Monthly balances of previous credits in Credit Bureau
    -   This table has one row for each month of history of every previous credit reported to Credit Bureau - i.e. the table has (#loans in sample * # of relative previous credits * # of months where we have some history for the previous credits) rows. 
    - It consists of monthly data about the previous credits in bureau. Each row is one month of a previous credit, and a single previous credit can have multiple rows, one for each month of the credit length.

- POS_CASH_balance.csv
    -   Monthly balance snapshots of previous POS (point of sales) and cash loans that the applicant had with Home Credit.
    -   This table has one row for each month of history for every previous credit in Home Credit (consumer credit and cash loans) related to loans in our sample - i.e. the table has (#loans in sample * # of relative previous credits * # of months in which we have some history observable for the previous credits) rows.
    -   It consists of monthly data about previous point of sale or cash loans clients have had with Home Credit. Each row is one month of a previous point of sale or cash loan, and a single previous loan can have many rows.
    - Examples:
        1. POS
            - Retail stores offer financing options at the point of sale, allowing customers to purchase items immediately and pay for them over time. i.e. a furniture store offers financing for a new sofa or dinner table
            - E-commerce platforms provide POS financing options. i.e. new wardrobe offer
            - Home improvement services: kitchen remodeling, HVAC installations
        2. Cash Loan
            - Payday loan companies offer short-term cash loans to individual who need quick access to funds before their next paycheck. Borrowers typically repay the loan with their next paycheck, along with high interest rates.
            - Installment loans: some financial institutions provide cash loans with fixed repayment terms, where borrowers receive a lump sum of money upfront and repay it over time through scheduled installments. These loans are often used for large expenses like medical bills or car repairs.
        3. Pawn shop loans: cash loan offers in exchange for valuable items such as jewelry, electronics or musical instruments. Customers can borrow money by providing collateral, if they repay the loan within a specified period, they can retrieve their items. If not the pawn shop keeps the collateral. 

- credit_card_balance.csv
    -   Monthly balance snapshots of previous credit cards that the applicant has with Home Credit
    -   This table has one row for each month of history of every previous credit in Home Credit (consumer credit and cash loans) related to loans in our sample – i.e. the table has (#loans in sample * # of relative previous credit cards * # of months where we have some history observable for the previous credit card) rows.

- previous_application.csv
    -   All previous applications for Home Credit loans of clients who have loans in our sample.
    -   There is one row for each previous application related to loans in our data sample.
    -   The data of previous applications for loans at Home Credit of clients who have loans in the application data. Each current loan in the application data can have multiple previous loans. Each previous application has one row and is identified by SK_ID_PREV

- installments_payments.csv
    -   Repayment history for the previously disbursed credits in Home Credit related to the loans in the sample.
    -   There is a) one row for every payment that was made plus b) one row each for missed payment.
    -   One row is equivalent to one payment of one installment OR one installment corresponding to one payment of one previous Home Credit credit related to loans in the sample.

- HomeCredit_columns_description.csv
    -   This file contains descriptions for the columns in the various data files.

![file-structure](https://storage.googleapis.com/kaggle-media/competitions/home-credit/home_credit.png)

- Loan Annuity: regular fixed payments over a set period, covering both principal and interest. Each payment contributes towards reducing the loan balance until it is fully repaid, typically in equal installments. Annuity loans are common in mortgages and car loans, providing borrowers with predictability in repayment amounts and timelines.
import pandas as pd
import random

def generate_transactions(monthly_income, min_percentage, max_percentage):
    transactions = []
    total_amount = 0

    for day in range(1, 31):
        percentage = random.uniform(min_percentage, max_percentage)
        amount = (monthly_income * (percentage / 100))

        if total_amount + amount > monthly_income:
            amount = monthly_income - total_amount

        total_amount += amount
        transactions.append((day, amount))
        
        if total_amount >= monthly_income:
            break
            
    return transactions

def high_expense_transactions(monthly_income):
    return generate_transactions(monthly_income, 0.1, 3.0)

def moderate_expense_transactions(monthly_income):
    return generate_transactions(monthly_income, 0.05, 1.5)

def low_expense_transactions(monthly_income):
    return generate_transactions(monthly_income, 0.01, 0.3)

def generate_transaction_history(yearly_income):
    monthly_income = yearly_income / 12

    expense_type = random.choice(['high', 'moderate', 'low'])
    if expense_type == 'high':
        return high_expense_transactions(monthly_income)
    elif expense_type == 'moderate':
        return moderate_expense_transactions(monthly_income)
    elif expense_type == 'low':
        return low_expense_transactions(monthly_income)

def process_income_file(input_file, output_file):
    df = pd.read_csv(input_file)

    all_transactions = []

    for index, row in df.iterrows():
        yearly_income = row['Income']
        transactions = generate_transaction_history(yearly_income)
        
        for day, amount in transactions:
            all_transactions.append({
                'user_id': index + 1, 
                'day': day,
                'amount': amount
            })
    
    transactions_df = pd.DataFrame(all_transactions)

    transactions_df.to_csv(output_file, index=False)

input_file = '../Assets/dataset/mock_financial_data_4.csv'  
output_file = '../Assets/dataset/transaction_history.csv' 

process_income_file(input_file, output_file)

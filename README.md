# bank_tech_test

Banking test allows user to interact on a commandline
Open a new bank account
Deposite and Withdraw fund
Print or view statement

### How to start

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

### User stroy

```
as a client
So I have a bank account
I should be able to open an account

as a client
so I can put my money
I would like to deposit money to my account

as a client
so I can get my money
I would like to withdraw money from my account

as a client
so I can see my statement
I should be able to print my bank statement

as a client
so I can see all my fund movement
I should be able to see the dates on my statement

```

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

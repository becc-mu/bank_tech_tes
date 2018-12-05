# bank tech test

Banking test allows user to interact on a commandline
Open a new bank account
Deposite and Withdraw fund
Print or view statement

### How to start

* Clone this repo git clone https://github.com/becc-mu/bank_tech_test
* Change cd bank_tech_test
* Open your prefered command editor irb or pry
* Require files require './lib/statement'
* Create new account by typing account = Account.new

### Language and Tests

* It is written in Ruby and all the tests have passed with Rspec and RuboCop is used for linting

## My approach
My approach to this challenge is a combination of user story and two class diagram. Account class for recording debit and credits and statement class for keeping log of transactions.

![screenshot](https://github.com/becc-mu/bank_tech_test/blob/master/assets/Screen%20shot%20irb.png)

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

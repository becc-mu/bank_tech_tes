[![Build Status](https://travis-ci.com/becc-mu/bank_tech_test.svg?branch=master)](https://travis-ci.com/becc-mu/bank_tech_test) [![Coverage Status](https://coveralls.io/repos/github/becc-mu/bank_tech_test/badge.svg)](https://coveralls.io/github/becc-mu/bank_tech_test)

# Bank tech test

Banking test allows user to interact on a command line
* Open a new bank account
* Deposit and Withdraw fund
* Print or view statement

## How to start

* Clone repo to your local machine ``` git clone https://github.com/becc-mu/bank_tech_test```
* Run ```gem install bundle ``` to install dependencies


## How to use
* You should be able to use any of your preferred REPL program ```irb ``` or ``` pry ```
* Require files
* ```require './lib/statement'```
* ```require './lib/account'```
* Create new account by typing ``` account = Account.new ```
* Deposit money ``` account.credit(1000) ```
* Withdraw money ``` account.debit(500) ```
* To print a statement ``` print account.print_statement ```

### Language and Running tests

* It is written in Ruby and all the tests have passed with Rspec and RuboCop is used for linting.
* Run ``` rspec ``` on command line for tests.

### My approach
I started off with two classes ``` Account ``` and ```Statement```.
* ```Account``` class is responsible for recording debit and credits
* ```Statement``` class is responsible for printing transactions.

After completion of the implementation and the test coverage to 100%, I focused on code quality by extracting responsibility from Account class so each class has no more than one responsibility.

### Screenshot

![](https://github.com/becc-mu/bank_tech_test/blob/master/assets/Screen%20Shot%202019-01-30%20at%2001.41.50.png)



## User stroy

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
## Specification

### Requirements
You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

# Web Application Final Project
## Table of contents
* [Requirements of the project](#requirements-of-the-project)
* [Technologies](#technologies)
* [Setup](#setup)

## Requirements of the project
### Requirement 1: register, login, forget password
The system has three roles as follows:
* Admin, have full discretion in the system.
* Developer, the one who can upload their apps to website and sell it to user.(I'm not make this feature, maybe it will done in the future)
* User, have the right to download apps from dev.
  - Users who want to download apps must register for an account and log in to the system. 
  - After registration, the user with the default role is User. They can upgrade they role to Dev by pay a lot of money.
  - When users forget the password, they can recover the password via email registered previously. The system will send an email with an OTP (will expired in a limit time) and you can use that to create your new password.
### Requirement 2: classroom management
* Apps are divided into two kind are free and cost, if you want to buy apps have cost you have to recharge the money to buy them.
* Admin can provide cards for user to use card for recharge their money in the system.
## Technologies
Project is created with:
* XAMPP version: 2.3.4
* Boostrap version: 4.5.2
* Jquery version: 3.5.1
* PHP Mailer version 6.5.1
	
## Setup
To run this project, you need:
- Install and put all source code by cloning it at ```htdocs``` folder in XAMPP.
- By importing ```database.sql```, create a database named ```bedevelovebug``` =)) or change name in file config.
- Run server and signup to start.
  - Admin acount:
    - username: ```trannguyentruong2001@gmail.com```.
    - password: ```123456```.

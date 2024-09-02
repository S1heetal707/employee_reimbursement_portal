# Employee Reimbursement Portal

Employee Reimbursement Portal is a web application that allows users to manage companies, create employee records, and submit reimbursement claims. The portal includes basic user authentication, allows users to associate employees with companies, and enables employees to raise reimbursement claims.

Features

Basic User Authentication: Includes signup, login, and sign-out functionalities.
Company Management: After logging in, users can create new companies.
Employee Management: Create employee records associated with companies.
Reimbursement Claims: Employees can raise reimbursement claims.

Requirements

Rails Version: 7.1.4
Ruby Version: 3.0.2
PostgreSQL Version: 14.13

Installation

1. Clone the Repository
git clone https://github.com/S1heetal707/employee_reimbursement_portal.git

2. Navigate to Project Directory
cd employee_reimbursement_portal

3. Install dependencies
bundle install

4. Set up the database
rails db:create
rails db:migrate
rails db:seed

5. Start the server
rails s

The application will be available at http://localhost:3000
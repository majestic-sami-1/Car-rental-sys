Detailed Use Case Specifications

UC-001: Sign Up / User Registration

• Primary Actor: Guest

• Preconditions: Internet active, email not previously registered.

• Postconditions: Profile created in database; login enabled.

• Happy Path:

&#x09;1. Guest clicks Register.

&#x09;2. Enters Name, Email, 11-digit phone number, password.

&#x09;3. System validates input and stores in Customer Database.

&#x09;4. Success message shown; user redirected to Login.

• Failure Flows:

&#x09;• F1: Existing email rejects registration.

&#x09;• F2: Invalid phone format (not 11 digits) displays error.

UC-002: Renting a Vehicle

• Primary Actor: Customer

• Preconditions: Registered account, valid license, vehicle available.

• Postconditions: Booking status updated, payment processed, vehicle marked 'Rented'.

• Happy Path:

&#x09;1. Customer logs in and searches for vehicles by date and category.

&#x09;2. Selects available car and reviews terms.

&#x09;3. Enters personal and driving license details.

&#x09;4. System calculates total fare; Payment Gateway processes transaction.

&#x09;5. Booking ID generated and confirmation email dispatched.

• Failure Flows:

&#x09;• F1: Car booked simultaneously stops reservation.

&#x09;• F2: Invalid/expired driving license triggers rejection.




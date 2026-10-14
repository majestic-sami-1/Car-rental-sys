System Design and Architecture Specification

1\. Behavioral Modeling

• Use Case Model: Defines the functional boundaries for the Customer, Admin, and Payment Gateway.

• Activity Diagram: Shows the workflow logic from user login to vehicle search, cost calculation, payment verification, and booking generation.

• Sequence Diagram: Illustrates the asynchronous message passing between the Customer, Booking Engine, Database, and Payment API.

2\. Structural Modeling

• Class Diagram: Encapsulates the following core domain classes:

&#x09;• User (Abstract base class): Name, Email, Phone, Password, login(), logout().

&#x09;• Customer (Inherits User): LicenseNumber, AccountStatus, searchVehicles(), makeReservation().

&#x09;• Admin (Inherits User): EmployeeID, manageFleet(), approveRequests().

&#x09;• Vehicle: VehicleID, Brand, Model, RentalRate, Status, updateStatus().

&#x09;• Reservation: BookingID, PickUpDate, DropOffDate, TotalFee, calculateCost().

&#x09;• Payment: TransactionID, Amount, Method, PaymentStatus, verifyPayment().

3\. Data Flow Diagrams (DFD)

• Level 0 (Context Diagram): Displays the overall system's data exchange with external entities like the Customer and Admin.

• Level 1: Breaks down into four primary processes: (1.1) Manage Customer, (1.2) Manage Car Info, (1.3) Monitor Rentals, and (1.4) Manage Transactions.

• Level 2: Illustrates detailed data transactions across persistent datastores, including the Customer DB, Car DB, Rental DB, and Transaction DB.


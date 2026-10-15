Functional Test Cases Specification



Test ID	 Test Scenario	              Input Data	                                                Expected Result	                Status

TC-01	 Customer Registration	      Name, Email, 11-digit Phone, Password	Account created; profile recorded in database	        Pass

TC-02	 Invalid Phone Length	      Phone = "0300123" (< 11 digits)	        Error prompt: "Phone number must be 11 digits"	        Pass

TC-03	 Duplicate Email Rejection    Pre-existing email address	                Error prompt: "Email already registered"        Pass

TC-04	 Vehicle Search Filter	      Valid Date Range, Category = "Sedan" 	Displays matching available cars	                Pass

TC-05	 Vehicle Conflict Check	      Selecting vehicle marked 'Rented'	        System blocks booking; displays availability notice	Pass

TC-06	 Driving License Validation   Expired/Invalid License Number	        System rejects booking request	                        Pass

TC-07	 Payment Processing	      Valid card info \& rental fee Payment verified; Booking ID generated; Car status set to 'Rented'	Pass




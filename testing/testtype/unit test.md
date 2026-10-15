Unit Testing Specification - Car Rental Management System

1\. Overview

Unit testing individual functions, utility methods, and class methods to isolate and test core system logic to ensure it operates correctly.

2\. Unit Test Cases Matrix



Test ID	Class / Module	Target Function	           Test Inputs / Condition	        Expected Behavior	        Category	Result

UT-01	ValidationUtil	validatePhone(phone)	   phone = "03001234567"	        Returns true (valid 11 digits)	Positive	Pass

UT-02	ValidationUtil	validatePhone(phone)	   phone = "0300123"	                Returns false (length < 11)	Negative	Pass

UT-03	Reservation	calculateCost(rate, days)  rate = 5000, days = 3	        Returns 15000.00	        Positive	Pass

UT-04	Reservation	calculateCost(rate, days   rate = 5000, days = -2	        Throws InvalidDateRangeExcepti  Boundary	Pass

UT-05	Security	hashPassword(password)	   password = "Secret@123"	        Returns 64-characterSHA-256hash	Security	Pass

UT-06	Reservation	applyCoupon(total, coupon  total = 10000, coupon = "OFF10"      Returns 9000.00	                Positive        Pass

UT-07	Vehicle	        updateStatus(newStatus)	   newStatus = "Rented"	Updates state to R




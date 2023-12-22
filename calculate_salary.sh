#!/bin/bash

# Input the basic salary from the user
echo "Enter Ramesh's basic salary:"
read basic_salary

# Calculate DA (40% of basic salary)
da=$(echo "$basic_salary * 0.4" | bc)

# Calculate HRA (20% of basic salary)
hra=$(echo "$basic_salary * 0.2" | bc)

# Calculate gross salary (basic + DA + HRA)
gross_salary=$(echo "$basic_salary + $da + $hra" | bc)

# Display the result
echo "Ramesh's Gross Salary is: $gross_salary"

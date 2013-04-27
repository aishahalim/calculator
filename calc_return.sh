#!/bin/bash
contribution_per_month=200
percent_employee_matching=0.3
percent_fees=0.0078
percent_return_per_year=.05
years_contribution=1
months_in_year=12
contributed_in_a_year=`echo "(${contribution_per_month} + (${contribution_per_month} * ${percent_employee_matching})) * ${months_in_year}" | bc -l`
earned_in_a_year=`echo "${contributed_in_a_year} + (${contributed_in_a_year} * ${percent_return_per_year})" | bc -l`
total_in_a_year=`echo "${earned_in_a_year} - (${earned_in_a_year} * ${percent_fees})" | bc -l`
echo $contributed_in_a_year
echo $earned_in_a_year
echo $total_in_a_year

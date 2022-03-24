#!/bin/bash -x

isFullTime=1;
isPartTime=2;
empRatePerHr=20;
numOfWorkingDays=30;

totalSalary=0
day-1
function getEmpHrs(){
   case $1 in
     $isFullTime)
            empHrs=8;
            ;;
    $isPartTime)
            empHrs=4;
            ;;
    *)
      empHrs=0;
            ;;
  esac
  echo $empHrs
}

while [ $day -le $numOfWorkingDays ]
do
  empHrs="$( getEmpHrs $((RANDOM%3)) )"
  salary=$(($empRatePerHr*$empHrs))
  totalSalary=$(($totalSalary+$salary))
  echo "Day $day * $salary total salary * $totalSalary "
  ((day++))
done
echo "Total Salary= $totalSalary"


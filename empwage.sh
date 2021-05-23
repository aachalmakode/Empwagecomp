
#!/bin/bash -x
echo "welcome to emp wage computation"

isPresent=1
randomCheck=$((RANDOM%2))
if [ $isPresent -eq $randomCheck ]
then
         echo "employee is present"
else 
         echo "employee is absent"
fi
echo "calculate Daily employee wages"

wagePerHour=20
hoursPerDay=8

wagePerDay=$(( 20 * 8))

echo "daily employee wages = $wagePerDay"


echo "calculate Part time Employee & wage"

isFullTimeEmp=1;
isPartTimeEmp=2;

wagePerHour=20;
salary=0;
totalSalary=0;

empName=emp

echo "calculate wages"

read -p "enter the number of working days = " numDays

for (( days=1; days<=$numDays; days++ ));
do
	employeeCheck=$(( 1 + RANDOM % 2 ));
	case $employeeCheck in
		$isFullTimeEmp)
			empName=FullTimeEmployee
			empHrs=8;;
		$isPartTimeEmp)
			empName=PartTimeEmployee
			empHrs=4;;
	esac
salary=$(( $empHrs * $wagePerHour ))
	echo "salary of $empName on the day $days is $salary"
	totalSalary=$(( $totalSalary + $salary ))
done
isFullTimeEmp=1;
isPartTimeEmp=2;

wagePerHour=20;
salary=0;
totalSalary=0;

empName=emp

echo "calculate wages for a Month"

#read -p "enter the number of working days = " numDays

days=1
empHrs=0
#for (( days=1; days<=$numDays; days++ ));
while [ $days -le 20 ] || [ $empHrs -le 100 ]
do
	employeeCheck=$(( 1 + RANDOM % 2 ));
	case $employeeCheck in
		$isFullTimeEmp)
			empName=FullTimeEmployee
			empHrs=$(( $empHrs + 8 ));;
		$isPartTimeEmp)
			empName=PartTimeEmployee
			empHrs=$(( $empHrs + 4 ));;
	esac
	salary=$(( $empHrs * $wagePerHour ))
	echo "salary of $empName on the day $days is $salary"
	echo -e
	totalSalary=$(( $totalSalary + $salary ))
	((days++))
done
echo "total Salary = $totalSalary"

isFullTimeEmp=1;
isPartTimeEmp=2;

wagePerHour=20;
salary=0;
totalSalary=0;

empName=emp

echo "calculate wages for a Month"

#read -p "enter the number of working days = " numDays

numDays=20
for (( days=1; days<=$numDays; days++ ));
do
	employeeCheck=$(( 1 + RANDOM % 2 ));
	case $employeeCheck in
		$isFullTimeEmp)
			empName=FullTimeEmployee
			empHrs=8;;
		$isPartTimeEmp)
			empName=PartTimeEmployee
			empHrs=4;;
	esac
	salary=$(( $empHrs * $wagePerHour ))
	echo "salary of $empName on the day $days is $salary"
	echo -e
	totalSalary=$(( $totalSalary + $salary ))
done
echo "total Salary = $totalSalary"

isFullTimeEmp=1;
isPartTimeEmp=2;

wagePerHour=20;
salary=0;
totalSalary=0;

empName=emp

echo "calculate wages for a Month"

getWorkHours () {
days=$1
empHrs=$2
while [ $days -le 20 ] || [ $empHrs -le 100 ]
do
	employeeCheck=$(( 1 + RANDOM % 2 ));
	case $employeeCheck in
		$isFullTimeEmp)
			empName=FullTimeEmployee
			empHrs=$(( $empHrs + 8 ));;
		$isPartTimeEmp)
			empName=PartTimeEmployee
			empHrs=$(( $empHrs + 4 ));;
	esac
	salary=$(( $empHrs * $wagePerHour ))
#	echo "salary of $empName on the day $days is $salary"
#	echo -e
	totalSalary=$(( $totalSalary + $salary ))
	((days++))
done
}
days=1
empHrs=0
getWorkHours $days $empHrs
echo "total Salary = $totalSalary"
echo "working hours = " $empHrs

isFullTimeEmp=1;
isPartTimeEmp=2;
wagePerHour=20;
salary=0;
totalSalary=0;
empName=emp
echo "calculate wages for a Month"
echo "DailyWages		TotalWages"
getWorkHours () {
days=$1
empHrs=$2
while [ $days -le 20 ] || [ $empHrs -le 100 ]
do
	employeeCheck=$(( 1 + RANDOM % 2 ));
	case $employeeCheck in
		$isFullTimeEmp)
			empName=FullTimeEmployee
			empHrs=$(( $empHrs + 8 ));;
		$isPartTimeEmp)
			empName=PartTimeEmployee
			empHrs=$(( $empHrs + 4 ));;
	esac
	salary=$(( $empHrs * $wagePerHour ))
	totalSalary=$(( $totalSalary + $salary ))
	((days++))
	echo "$salary			$totalSalary"
done
}
days=1
empHrs=0
getWorkHours $days $empHrs
echo "total Salary = $totalSalary"
echo "working hours = " $empHrs

isFullTimeEmp=1;
isPartTimeEmp=2;
wagePerHour=20;
salary=0;
totalSalary=0;
empName=emp
echo "calculate wages for a Month"
echo "Day		DailyWages		TotalWages"
getWorkHours () {
days=$1
empHrs=$2
while [ $days -le 20 ] || [ $empHrs -le 100 ]
do
	employeeCheck=$(( 1 + RANDOM % 2 ));
	case $employeeCheck in
		$isFullTimeEmp)
			empName=FullTimeEmployee
			empHrs=$(( $empHrs + 8 ));;
		$isPartTimeEmp)
			empName=PartTimeEmployee
			empHrs=$(( $empHrs + 4 ));;
	esac
salary=$(( $empHrs * $wagePerHour ))
	totalSalary=$(( $totalSalary + $salary ))
	echo "Day $days		$salary			$totalSalary"
	((days++))
done
}

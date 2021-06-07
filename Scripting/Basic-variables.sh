# Comments
x=5
y=7
studentname="Arunima is studying in ninth grade"
# Print output to console
echo $studentname 
# print output to console
echo $x
echo $y
echo $((($x + $y) * 2 ))
# print output to console
read -p "How many apples did you buy today?" apple_count
# number_of_kids=2 
read -p "How many kids are there?" number_of_kids
remaining_apple=$(( $apple_count % $number_of_kids ))
echo $remaining_apple 



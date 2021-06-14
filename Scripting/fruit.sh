# to calculate the bill of fruit shop according to the quantity
echo "ARUNIMA FARM FRESH FRUITS SHOP"
echo "==============================="
fruits_list=(Apple Peach Guava Cherry Strawberry Mango)
fruits_price=(20 10 34 21 30 20 )
echo "We have the following fruits"
for fruit_index in "${!fruits_list[@]}"
do 
serial_number=$(( $fruit_index + 1 ))
echo "${serial_number}. ${fruits_list[$fruit_index]} :₹ ${fruits_price[$fruit_index]}"
done
read -p "Which fruit do you want to buy?" selected_position  
actual_position=$(( $selected_position - 1 ))
echo "that's great! You have selected ${fruits_list[$actual_position]}"
read -p "How many fruits do you want?" fruit_quantity
echo "Ok.Your order is taken."
total_cost=$(( $fruit_quantity * ${fruits_price[$actual_position]} ))
echo "amount of total cost is $total_cost"
echo "Thanks 🙏 for shopping with us. Have a great day."
echo " "
echo "============================================="

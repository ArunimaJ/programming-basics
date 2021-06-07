booking_name=""
booking_age=""
booking_destination=""
booking_departing=""
booking_passenger_num=""

passenger_name=""
passenger_age=""
passenger_adress=""
passenger_cell=""
passenger_id=""
passenger_econtact=""
passenger_meal=""

compute_ticket_cost() {
    passenger_items=$0
    echo $passenger_items 
}

collect_individual_passenger_info(){
    read -p "enter passenger name:" passenger_name
    read -p "enter passenger age:" passenger_age
    read -p "enter passenger adress:" passenger_adress
    read -p "enter passenger phone number:" passenger_cell
    read -p "enter passenger id:" passenger_id
    read -p "enter passenger emergency contact:" passenger_econtact
    read -p "enter passenger meal preference:" passenger_meal
}

collect_booking_user_details() {
    read -p "name: " user_name 
    read -p "age:" user_age
    read -p "destination: " destination
    read -p "departing from: " departing
    read -p "# of passengers: " passenger_num

    booking_name=$user_name 
    booking_age=$user_age
    booking_destination=$destination
    booking_departing=$departing
    booking_passenger_num=$((passenger_num))
}

collect_booking_user_details
echo "$booking_name, $user_age, $destination, $departing, $passenger_num"

passenger_count=0
passenger_list=()
while [ $passenger_count -lt $booking_passenger_num ] 
do 
    actual_passenger_number=$((passenger_count + 1))
    echo "collecting information for passenger number: $actual_passenger_number"
    passenger_info=($passenger_name $passenger_age $passenger_adress $passenger_cell $passenger_id $passenger_econtact $passenger_meal)
    collect_individual_passenger_info
    passenger_list[$passenger_count]=${passenger_info}
    passenger_count=$((passenger_count + 1))
done

for passgr in "${passenger_list[@]}"
do
    printf '%s\n' "${passgr[@]}"
   # or do whatever with individual element of the array
done


#compute_ticket_cost $passenger_list

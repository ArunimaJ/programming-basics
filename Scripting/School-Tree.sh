 # Building a folder tree based on user input
 # ask the user city name, school name,grade number ,sections,languages 
 # Gurgaon / DPS / Grade-1 / Section-1 / French 
 countries=(India Australia Singapore)
 
 read -p "Tree name?" tree_name
 read -p "School name?" school_name
 read -p "Grade number?" grade_no
 read -p "Sections?" section
 read -p "Languages?" language_name
 
 mkdir tree_name

 for countryPickerIndex in "${!countries[@]}"
 do

  echo "Creating Directory for ${countries[$countryPickerIndex]}"
  mkdir -p ${tree_name}/${countries[$countryPickerIndex]}/School-${school_name}/Grade-${grade_no}/Section-${section}/Language-$language_name

 done


 
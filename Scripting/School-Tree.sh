 # Building a folder tree based on user input
 # ask the user city name, school name,grade number ,sections,languages 
 # Gurgaon / DPS / Grade-1 / Section-1 / French 
 Countries="India,Australia,Singapore" 
 read -p "Country name?" country_name
 read -p "School name?" school_name
 read -p "Grade number?" grade_no
 read -p "Sections?" section
 read -p "Languages?" language_name
 mkdir -p ${country_name}/${city_name}/School-${school_name}/Grade-${grade_no}/Section-${section}/Language-$language_name
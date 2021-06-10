# This script helps to translate text from one language to another

# Function which accepts a text in hindi and it should output in english

#first_argument => 0 => $0
#second_argument => 1 => $1

#Milk Shake 

#Fruits => 1
#Milk => 2

#f(x,y) = x + 2y

#f(4,7) = 4 + 14 => 18

convertHindiToEnglish() {
  useEntered=$1
  preferredLang=$2
  translatedtext="Water"
  echo "The translated text for $useEntered for $preferredLang is $translatedtext"
}

read -p "Enter Text" sentence
read -p "Enter Language" lang


// Kid, Please read this book 5 times
for number in 1 2 3 4 5 
do
  convertHindiToEnglish $sentence $lang
done 


user_continue="Y"

// Kid, Please read this book untile i come to home

while [ "$user_continue" == "Y" ]
do
  convertHindiToEnglish $sentence $lang
  read -p "Do you want to continue next translation Y/N?" user_continue

done 



echo "[Welcome to Guessing Game]"
function ask_guess {
echo "Please enter the number of files in the currenct directory:"
read guess
files=$(ls -1 | wc -l)

while [[ $guess -ne $files ]]
do
if [[ $guess -lt $files ]]
then
echo "Sorry, too low. Please, try again."
echo "Please enter the number of files in the currenct directory:"
read guess
else
echo "Sorry, too high. Please, try again."
echo "Please enter the number of files in the currenct directory:"
read guess
fi
ask_guess
done
echo "Congratulations! Your answer is correct!"
}


echo "Plese enter how many files are in the current directory:"
read guess
correct_number=$(ls | wc -l) 

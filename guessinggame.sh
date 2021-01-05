echo "[Welcome to Guessing Game]"

function guess_game {
    echo "Please enter the number of files in the currenct directory:"
    read guess
   files=$(ls -1 | wc -l)
}

guess_game

while [[ $guess -ne $files ]]
do
        if [[ $guess -lt $files ]]
        then
             echo "Sorry, too low. Please, try again."
        else
            echo "Sorry, too high. Please, try again."
        fi
        guess_game
done

echo "Congratulations! Your answer is correct!here is the list of files:"
echo "---" && ls -1

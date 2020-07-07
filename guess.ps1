""
"Welcome to Guess That Number"
""
"Guess the random number between 1 and 100"
$random_number = Get-Random -Maximum 100
$player_name = Read-Host "Please enter your name"
"Hello $player_name. Please enter your first guess"
$guess = Read-Host "Initial guess"
$num_guesses = 1
do {
    $num_guesses++
    $num_guesses_string = ($num_guesses).ToString()
    if ($guess -lt $random_number) {
        "Guess higher."
        $guess = Read-Host "Guess $num_guesses_string"
    }
    if ($guess -gt $random_number) {
        "Guess lower."
        $guess = Read-Host "Guess $num_guesses_string"
    }
}while ($guess -notmatch $random_number)
$final_text = "$player_name, you found the random number - $random_number - after $num_guesses tries."
if ($num_guesses -gt 7) { "$final_text At that many tries, you can improve your strategy." }
else { "$final_text You must have a good strategy." } 
""
    


class GuessingGame {
    PlayGame() {
        Write-Host "Welcome to Guess That Number"
        Write-Host ""
        Write-Host "Guess the random number between 1 and 100"
        
        $random_number = Get-Random -Maximum 100
        $player_name = Read-Host "Please enter your name"
        Write-Host "Hello $player_name. Please enter your first guess"
        $guess = Read-Host "Initial guess"
        $num_guesses = 1
        do {
            $num_guesses++
            $num_guesses_string = ($num_guesses).ToString()
            if ($guess -lt $random_number) {
                $guess = Read-Host "Guess HIGHER. Guess $num_guesses_string"
            }
            elseif ($guess -gt $random_number) {
                $guess = Read-Host "Guess lower. Guess $num_guesses_string"
            }
        }while ($guess -notmatch $random_number)
        $final_text = "$player_name, you found the random number - $random_number - after $num_guesses tries."
        if ($num_guesses -gt 7) { Write-Host "$final_text At that many tries, you can improve your strategy." }
        else { Write-Host "$final_text You must have a good strategy." } 
        Write-Host ""
        Write-Host ""
    }
}
$game1 = New-Object GuessingGame

$game1.PlayGame()

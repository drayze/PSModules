$number = 0
while($number -le 10){
    #New-Item ".\file$number.txt";$number++
    #Add-Content .\*.txt* -Value $number;$number++
    Copy-Item .\newData.csv -Destination ".\more$number.csv";$number++
    #Write-DonationLists .\new10.csv -CharityList ".\CSV\renamed$number.csv";$number++
}






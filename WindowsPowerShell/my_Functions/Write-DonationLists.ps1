#A function that creates the itemized list for the Non-Profit receiving the donation
#from the Fox Hound manifest.csv

function Write-DonationLists {
    [CmdletBinding()]
    param(
    #file path for the downloaded Fox Hound manifest.csv
      [Parameter(Mandatory)]
      [string]$Source,

      #file path to create the new CSV file and don't forget the '.csv'
      [Parameter(Mandatory)]
      [string]$CharityList

    )
    process{
    #the parsing logic and then the creation at the destination path
      Import-Csv $Source | Select-Object -Property ASIN,'Item Name',Quantity,'Total weight' | Export-Csv $CharityList
    }
}
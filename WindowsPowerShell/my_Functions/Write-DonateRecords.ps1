#A function that creates the itemized list for the Non-Profit receiving the donation
#from the Fox Hound manifest.csv

#AND renames the manifest.csv to your input

function Write-DonateRecords {
    [CmdletBinding()]
    param(
    #file path for the downloaded Fox Hound manifest.csv
      [Parameter(Mandatory)]
      [string]$Source,

      #rename manifest.csv to your choice and don't forget the '.csv'
      [Parameter(Mandatory)]
      [string]$NewName,

      #will now move to choice location give file path the new name.csv
      #[Parameter(Mandatory)]
      #[string]$myDirectory,

      #file path to create the new CSV file and don't forget the '.csv'
      [Parameter(Mandatory)]
      [string]$CharityList

    )
    process{
    #the parsing logic and then the creation at the destination path
      Import-Csv $Source | Select-Object -Property ASIN,'Item Name',Quantity,'Total weight' | Export-Csv $CharityList;
      #the renaming logic
      Rename-Item $Source -NewName $NewName | Move-Item -Destination $myDirectory
    }
}
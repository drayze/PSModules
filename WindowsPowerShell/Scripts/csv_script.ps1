﻿Import-Csv "file path" | Select-Object -Property ASIN,'Item Name',Quantity,'Total weight' | Export-Csv "path, file_name.csv"
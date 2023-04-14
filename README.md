# Get Win Ver

This script takes PC names in a list and look up the win version of them. The output is stored in an excel file.

## Installation 

You need PowerShell v5.1 or higher

To export in excel you need this package:

https://www.powershellgallery.com/packages/ImportExcel/7.4.1


## Usage

fork or copy the script and run it

Find Windows 10 Versions here
https://learn.microsoft.com/de-de/windows/release-health/release-information

Excel path, feel free to change it where ever you want it.

``` powershell
$output | Export-Excel -Path C:\temp\output.xlsx
```

## Contributing

pull requests are welcome.

## License

feel free to use it, i'm happy to help.
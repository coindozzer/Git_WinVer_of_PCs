# Add PCs here
$pc = @'
PC
ADD PC NAMES HERE
'@ | ConvertFrom-Csv

#output variable
$output = @()

#for each PC in the list get Windows Version and Current User and put append it as object
foreach($item in $pc.PC)
{
if((Get-WmiObject Win32_OperatingSystem -ComputerName $item).Version)
{
    $output += New-Object -TypeName Psobject -Property @{
        PC = $item
        Verion = (Get-WmiObject Win32_OperatingSystem -ComputerName $item).Version
        CurrentUser = (Get-WmiObject -ComputerName $item -Class Win32_ComputerSystem).UserName
    }
}
else
{
    $output += New-Object -TypeName psobject -Property @{
        PC = $item
        Verion = "nicht erreichbar"
        CurrentUser = ""
    }
}
}

#write output into an excelfile 
$output | Export-Excel -Path C:\temp\output.xlsx
$sourceDir = 'path here'
$targetDir = 'path here'

Get-ChildItem $sourceDir -Recurse | % {
   $dest = $targetDir + $_.FullName.SubString($sourceDir.Length)

   If (!($dest.Contains('.')) -and !(Test-Path $dest))
   {
        mkdir $dest
   }
   #below will copy the directories and documents in them. 
  # Copy-Item $_.FullName -Destination $dest -Force
}

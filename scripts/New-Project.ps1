<# 
.SYNOPSIS
 Creates a initial folder structure for projects on a file system.

.DESCRIPTION
 This script creates a initial folder structure for projects to
 populate with example files.

 The target directory structure can than be zipped and distributed 


.PARAMETER none
 

.EXAMPLE
 > NewProject.ps1 
 
.LINK
 none

.NOTES
 none

 Copyright (c) 2023 Eviden Germany GmbH. All rights reserved.


#>

  [CmdletBinding()]
  param(
    $StartDirectory = ".",
    $ProjectName = "myProject"
  )


$Dir_List = (
  "01_Planung & Orga & QS\00_Abrechnung", 
  "01_Planung & Orga & QS\01_Organisation", 
  "01_Planung & Orga & QS\02_Projekthandbuch", 
  "01_Planung & Orga & QS\03_Qualitätssicherung",
  "01_Planung & Orga & QS\04_Prozesse",
  "01_Planung & Orga & QS\05_Projekt & Releaseplanung", 
  "02_Reporting\Status",
  "03_Konzepte & Design", 
  "04_Architektur",
  "05_Infrastruktur",
  "06_Entwicklung",
  "07_Build & Deployment",
  "08_Test\01_Mastertestkonzept",
  "08_Test\02_Status & Berichte",
  "08_Test\03_Fehlermanagement",
  "08_Test\04_Testautomatisierung",
  "08_Test\05_Testdaten",
  "08_Test\06_Integrationstest",
  "08_Test\07_Systemtest",
  "08_Test\08_Abnahmetest",
  "08_Test\09_nonFunctional_Tests\01_Barrierefreiheitstest",
  "08_Test\09_nonFunctional_Tests\02_Last & Performance Test",
  "08_Test\09_nonFunctional_Tests\03_Penetration Test",
  "08_Test\10_Tools",
  "09_Delivery & Installation & Betrieb",
  "10_externe_Systeme"
)

foreach ($d in $Dir_List){
    New-Item -Path . -ItemType "directory" -Name "$ProjectName\$d"
    new-Item -Path . -ItemType "file" -Name "$ProjectName\$d\README.txt"
}


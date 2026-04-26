# Définition des chemins
$Url = "https://download.sysinternals.com/files/Sysmon.zip"
$ZipPath = "$env:TEMP\Sysmon.zip"
$ExtractPath = "C:\Users\$env:USERNAME\Downloads\Sysmon"

# Téléchargement du fichier ZIP
Invoke-WebRequest -Uri $Url -OutFile $ZipPath

# Création du dossier de destination s'il n'existe pas
If (!(Test-Path -Path $ExtractPath)) {
    New-Item -ItemType Directory -Path $ExtractPath | Out-Null
}

# Extraction du ZIP
Expand-Archive -Path $ZipPath -DestinationPath $ExtractPath -Force

# Suppression du ZIP après extraction
Remove-Item $ZipPath

# Passage dans le dossier Sysmon
Set-Location $ExtractPath

# Installation de Sysmon
.\Sysmon.exe -i -n -accepteula

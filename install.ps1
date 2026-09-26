$BaseDir = Join-Path `
    $env:LOCALAPPDATA `
    "Microsoft\Windows\Cursors\FluentCursor"

$SchemeKey = "HKCU:\Control Panel\Cursors\Schemes"

New-Item `
    -Path $SchemeKey `
    -Force | Out-Null

function Install-CursorScheme {

    param (
        [string]$SchemeName,
        [string]$SourceDir,
        [string]$TargetDir
    )

    New-Item `
        -ItemType Directory `
        -Path $TargetDir `
        -Force | Out-Null

    Copy-Item `
        "$PSScriptRoot\$SourceDir\*" `
        $TargetDir `
        -Force

    $SchemeValue = @(
        "$TargetDir\arrow.cur"
        "$TargetDir\help.cur"
        "$TargetDir\appstarting.ani"
        "$TargetDir\wait.ani"

        "$TargetDir\crosshair.cur"
        "$TargetDir\ibeam.cur"

        "$TargetDir\nwpen.cur"
        "$TargetDir\no.cur"

        "$TargetDir\sizens.cur"
        "$TargetDir\sizewe.cur"

        "$TargetDir\sizenwse.cur"
        "$TargetDir\sizenesw.cur"

        "$TargetDir\sizeall.cur"
        "$TargetDir\uparrow.cur"

        "$TargetDir\hand.cur"

        "$TargetDir\pin.cur"
        "$TargetDir\person.cur"

    ) -join ','

    Remove-ItemProperty `
        -Path $SchemeKey `
        -Name $SchemeName `
        -ErrorAction SilentlyContinue

    New-ItemProperty `
        -Path $SchemeKey `
        -Name $SchemeName `
        -Value $SchemeValue `
        -PropertyType String `
        -Force | Out-Null
}

Install-CursorScheme `
    -SchemeName "Fluent Cursor Light" `
    -SourceDir "LightCursors" `
    -TargetDir (Join-Path $BaseDir "LightCursors")

Install-CursorScheme `
    -SchemeName "Fluent Cursor Dark" `
    -SourceDir "DarkCursors" `
    -TargetDir (Join-Path $BaseDir "DarkCursors")

Write-Host ""
Write-Host "Installation completed."
Write-Host ""
Write-Host "Available Schemes:"
Write-Host "  Fluent Cursor Light"
Write-Host "  Fluent Cursor Dark"
Write-Host ""
Write-Host "Open:"
Write-Host "  Control Panel > Mouse > Pointers > Scheme"
Write-Host ""
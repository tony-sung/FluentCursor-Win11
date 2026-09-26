$CurrentScheme = (
    Get-ItemProperty `
        "HKCU:\Control Panel\Cursors"
).'(default)'

$OwnedSchemes = @(
    "Fluent Cursor Light",
    "Fluent Cursor Dark"
)

if ($CurrentScheme -in $OwnedSchemes)
{
    Write-Host ""
    Write-Host "Current scheme is still '$CurrentScheme'."
    Write-Host "Please switch to another cursor scheme first."
    Write-Host ""
    Write-Host "Control Panel > Mouse > Pointers"
    Write-Host ""

    return
}

$TargetRoot = Join-Path `
    $env:LOCALAPPDATA `
    "Microsoft\Windows\Cursors\FluentCursor"

$SchemeKey = "HKCU:\Control Panel\Cursors\Schemes"

if (Test-Path $SchemeKey)
{
    foreach ($Scheme in $OwnedSchemes)
    {
        Remove-ItemProperty `
            -Path $SchemeKey `
            -Name $Scheme `
            -ErrorAction SilentlyContinue
    }
}

Remove-Item `
    -Path $TargetRoot `
    -Recurse `
    -Force `
    -ErrorAction SilentlyContinue

Write-Host ""
Write-Host "Fluent Cursor removed."
Write-Host ""
Write-Host "Removed schemes:"
Write-Host "  Fluent Cursor Light"
Write-Host "  Fluent Cursor Dark"
Write-Host ""
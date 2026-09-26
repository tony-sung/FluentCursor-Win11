$CursorDir = Join-Path $PSScriptRoot "Cursors"

$RenameMap = @{
    "pointer.cur"      = "arrow.cur"
    "precision.cur"    = "crosshair.cur"

    "beam.cur"         = "ibeam.cur"

    "link.cur"         = "hand.cur"
    "handwriting.cur"  = "nwpen.cur"

    "unavailable.cur"  = "no.cur"

    "vert.cur"         = "sizens.cur"
    "horz.cur"         = "sizewe.cur"

    "dgn1.cur"         = "sizenwse.cur"
    "dgn2.cur"         = "sizenesw.cur"

    "move.cur"         = "sizeall.cur"

    "alternate.cur"    = "uparrow.cur"

    "working.ani"      = "appstarting.ani"
    "busy.ani"         = "wait.ani"
}

foreach ($Item in $RenameMap.GetEnumerator()) {

    $OldPath = Join-Path $CursorDir $Item.Key

    if (Test-Path $OldPath) {
        Rename-Item `
            -Path $OldPath `
            -NewName $Item.Value `
            -Force
    }
}

Write-Host "Dark cursor rename completed."
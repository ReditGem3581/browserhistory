# Resize all PNG files in the images/ folder to 100x100 pixels
# Usage: Open PowerShell in the repo root and run:
# .\tools\resize-images.ps1

$folder = Join-Path -Path $PSScriptRoot -ChildPath "..\images" | Resolve-Path
$folder = $folder.Path
Write-Host "Resizing PNGs in: $folder"

Add-Type -AssemblyName System.Drawing

Get-ChildItem -Path $folder -Filter *.png -File | ForEach-Object {
    $file = $_.FullName
    try {
        $img = [System.Drawing.Image]::FromFile($file)
        $width = 100
        $height = 100
        $thumb = New-Object System.Drawing.Bitmap $width, $height
        $g = [System.Drawing.Graphics]::FromImage($thumb)
        $g.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
        $g.DrawImage($img, 0, 0, $width, $height)
        $g.Dispose()
        $img.Dispose()
        $thumb.Save($file, [System.Drawing.Imaging.ImageFormat]::Png)
        $thumb.Dispose()
        Write-Host "Resized: $($_.Name) -> ${width}x${height}"
    }
    catch {
        Write-Warning ("Failed to resize {0}: {1}" -f $file, $_.Exception.Message)
    }
}

Write-Host "Done. Commit and push the resized images:"
Write-Host "git add images/*.png; git commit -m \"Add resized images\"; git push"

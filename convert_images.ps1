# PowerShell script to convert images to WebP and create resized versions
# Requires ImageMagick (magick) and cwebp or ImageMagick with WebP support

$srcDir = "img"
$dstDir = "img/optimized"
New-Item -ItemType Directory -Path $dstDir -Force | Out-Null

Get-ChildItem -Path $srcDir -Include *.jpg,*.jpeg,*.png -Recurse | ForEach-Object {
    $file = $_.FullName
    $base = [IO.Path]::GetFileNameWithoutExtension($file)
    $ext = [IO.Path]::GetExtension($file)
    $sizes = @(1920,1280,800)
    foreach ($w in $sizes) {
        $out = Join-Path $dstDir "$($base)-$w.webp"
        # Resize and convert to webp using ImageMagick
        magick convert "$file" -resize ${w}x "$out"
    }
    # also create a full-size webp
    $outFull = Join-Path $dstDir "$($base).webp"
    magick convert "$file" "$outFull"
}

Write-Output "Converted images saved to $dstDir"

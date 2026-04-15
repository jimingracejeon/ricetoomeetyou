$code = Get-Content -Raw 'code 1.html'
$script = [regex]::Match($code,'<script>([\s\S]*)</script>')
if(-not $script.Success){ Write-Output 'NO_SCRIPT'; exit 1 }
$js = $script.Groups[1].Value
$clean = $js -replace '"[^"]*"','' -replace '\'[^\']*\'','' -replace '`[^`]*`',''
$lines = $clean -split '\r?\n'
$sum = 0
for($i = 0; $i -lt $lines.Length; $i++){
    $line = $lines[$i]
    $open = ($line.ToCharArray() | Where-Object {$_ -eq '('}).Count
    $close = ($line.ToCharArray() | Where-Object {$_ -eq ')'}).Count
    $delta = $open - $close
    $sum += $delta
    if($delta -ne 0){ Write-Output ("Line $($i+1): delta=$delta cum=$sum -> $line") }
}
Write-Output ('FINAL_CUM=' + $sum)

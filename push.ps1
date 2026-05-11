Set-Location "C:\Users\Lenovo\.openclaw-autoclaw\workspace\projects\ai-tools-hub"
git remote remove origin 2>$null
git remote add origin "https://github.com/bobo664263-lab/ai-tools-hub.git"
git pull origin main --allow-unrelated-histories 2>$null
git push -u origin main
Write-Host "DONE"

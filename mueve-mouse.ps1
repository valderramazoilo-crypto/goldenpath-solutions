# ============================================================
#  Mueve-Mouse  -  mantiene el equipo "activo"
#  Mueve el cursor cada 2 segundos.
#  Para detener: cierra la ventana o pulsa Ctrl + C
# ============================================================

# --- Ajustes (puedes cambiarlos) ---
$IntervaloSegundos = 2     # cada cuantos segundos se mueve
$Distancia         = 60    # cuanto se desplaza en pixeles

Add-Type -AssemblyName System.Windows.Forms

Write-Host "Mueve-Mouse en marcha (cada $IntervaloSegundos seg). Pulsa Ctrl + C para detener." -ForegroundColor Green

$haciaLaDerecha = $true

try {
    while ($true) {
        $pos = [System.Windows.Forms.Cursor]::Position

        if ($haciaLaDerecha) {
            $nuevoX = $pos.X + $Distancia
        } else {
            $nuevoX = $pos.X - $Distancia
        }
        $haciaLaDerecha = -not $haciaLaDerecha

        [System.Windows.Forms.Cursor]::Position = `
            New-Object System.Drawing.Point($nuevoX, $pos.Y)

        $hora = Get-Date -Format "HH:mm:ss"
        Write-Host "[$hora] mouse movido" -ForegroundColor DarkGray

        Start-Sleep -Seconds $IntervaloSegundos
    }
}
finally {
    Write-Host "`nDetenido. Hasta luego!" -ForegroundColor Yellow
}

@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
del /f "C:\Users\Public\Desktop\Unity Hub.lnk" > out.txt 2>&1
del /f "C:\Users\Public\Desktop\Firefox.lnk" > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\Thong-tin.txt" https://raw.githubusercontent.com/buivanthien1/WINODWS-SV-DRP/bvtvn/Thong-Tin.txt > out.txt 2>&1
diskperf -Y >nul
sc start audiosrv >nul
net user administrator BVTVN-ThienBui /add >nul
net localgroup administrators administrator /add >nul
net user administrator /active:yes >nul
echo Vị trí VPS hiện tại của bạn: US
echo VPS đã đc tạo! Kết nối VPS của bạn bằng Remote Desktop (RDP).
echo IP VPS:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo Dịch vụ NGROK không chạy
echo User: administrator
echo Pass: BVTVN-ThienBui
echo YouTube: https://www.youtube.com/channel/UCwlWoyK2OpzXcV3ku-iPAHw
echo By Thien Bui
echo Phiển Bản:
echo 1.b







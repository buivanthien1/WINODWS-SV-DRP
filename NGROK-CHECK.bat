@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
del /f "C:\Users\Public\Desktop\Unity Hub.lnk" > out.txt 2>&1
del /f "C:\Users\Public\Desktop\Firefox.lnk" > out.txt 2>&1
diskperf -Y >nul
sc start audiosrv >nul
net user administrator Tuanx04 /add >nul
net localgroup administrators administrator /add >nul
net user administrator /active:yes >nul
net pass 22022007 /active:yes >nul
echo VPS đã đc tạo! Kết nối VPS của bạn bằng Remote Desktop (RDP).
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo Dịch vụ NGROK không chạy
echo User: Administrator
echo Pass: Tuanx04







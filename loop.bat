@echo off
tasklist | find /i "ngrok.exe" >Nul && goto check || echo "Dịch vụ NGROK không chạy. Một tài khoản MIỄN PHÍ NGROK Chỉ đc 1 Tunnel, nếu bạn muốn Chạy thêm VPS, hãy cập nhật NGROK_AUTH_TOKEN mới tại secrets" & ping 127.0.0.1 >Nul & exit
:check
ping 127.0.0.1 > nul
cls
goto check

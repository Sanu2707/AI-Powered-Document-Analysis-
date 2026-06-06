@echo off
REM Start BhashaSetu - Frontend and Backend
REM This script opens two command windows to run both servers

echo ===============================================
echo Starting BhashaSetu (Frontend + Backend)
echo ===============================================
echo.

REM Start Backend in new window
echo Starting Backend on http://localhost:8000...
start "BhashaSetu Backend" cmd /k "cd backend && python run_server.py"

REM Wait a bit for backend to start
timeout /t 3 /nobreak

REM Start Frontend in new window
echo Starting Frontend on http://localhost:5173...
start "BhashaSetu Frontend" cmd /k "cd frontend && npm run dev"

echo.
echo ===============================================
echo Both servers are starting!
echo Backend:  http://localhost:8000
echo Frontend: http://localhost:5173
echo ===============================================
pause

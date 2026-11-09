@echo off
cls
echo ========================================================
echo   Auto-uploading latest DailyLog code to GitHub...
echo ========================================================
cd /d "C:\Users\USER\Desktop\안지원"

"C:\Program Files\Git\cmd\git.exe" add index.html README.md .gitignore
"C:\Program Files\Git\cmd\git.exe" commit -m "fix: correct Firebase API key"

echo.
echo Pushing to GitHub...
echo (If a GitHub login / Authorize window appears, please click it)
echo.

"C:\Program Files\Git\cmd\git.exe" push origin main --force

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ========================================================
    echo   [SUCCESS] GitHub upload completed successfully!
    echo ========================================================
    timeout /t 5
) else (
    echo.
    echo ========================================================
    echo   [FAILED] Please check the error above.
    echo ========================================================
    pause
)

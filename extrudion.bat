@echo off
setlocal enabledelayedexpansion

echo Loading Python...
pip install --upgrade pip >nul
pip show extrudion > nul 2>&1
if not %errorlevel% == 0 (
    echo Extrudion is not installed. Installing...
    pip install extrudion
)
echo Loading Extrudion...
pip list --outdated | findstr /c:"extrudion"
if %errorlevel% == 0 (
    pip install --upgrade extrudion
) 
cls

echo Analyzing Files...
python -c "import extrudion; extrudion.start()"
echo Finished! 
pause

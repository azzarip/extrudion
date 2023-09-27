@echo off
setlocal enabledelayedexpansion

:InputLoop
set /p area=Enter the Surface of the Sample [mm2]: 

echo !area!| findstr /r "^[+-]*[0-9]*\.*[0-9]*$" >nul
if not !errorlevel! == 0 (
    echo Invalid input: !area!. Please retry.
    goto InputLoop
)

echo Starting analysis! 
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
echo Enter the Surface of the Sample [mm2]: !area!
echo Analyzing Files...
python -c "import extrudion; extrudion.analyzeDirectory(sample_area = %area%)"
echo Finished! 
echo *********************************************
echo               	EXTRUDION
echo *********************************************
echo. 
echo by Paride Azzari (C) 2023
echo.  
echo info on: github.com/azzarip/extrudion
echo *********************************************
echo RESULTS:
echo. 
echo Analysis.csv contains the analyzed data
echo. 
echo The plots folder contains all the figures
echo *********************************************
echo. 
pause
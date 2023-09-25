@echo off
pip show extrudion > nul 2>&1
if not %errorlevel% equ 0 (
    echo Extrudion is not installed. Installing...
    pip install extrudion
)
echo Analyzing Files...
python -c "import extrudion; extrudion.analyzeDirectory()"
echo *********************************************
echo          	EXTRUDION
echo by Paride Azzari (C) 2023
echo info on: github.com/azzarip/extrudion
echo *********************************************
echo Analysis.csv contains the analyzed data
echo The plots folder contains all the figures
echo *********************************************

pause

# Extrudion
Executable .bat file for analysing .TRA files 
# Installation 
1. Click on `Code` on the upper right corner, and `Download ZIP`.
2. Put the `extrudion.bat` file in the folder containing `.TRA` files.
3. Double click to run it.

# Instruction
Run this file in the folder containing `.TRA` files.

It will ask for `surface_area` in mm2 and then for `initial_length`, in mm.

It output the `analysis.csv` file containing all the results, as shown in the mathematical formula section of this page.

The plots for each files are stored in the plot folder in the same directory.

# Mathematical Formulas

`Stress` = Force['N'] / (`sample_area`) * 10^3 

returns the `stress` in `kPa`

`Strain` = ln( length['mm'] / initial length ['mm'] )

`Young Modulus` = slope of the best line fit with max slope for the curve

`Intercept` = the intercept of the previous fit

`Yield Stress and Strain` are the points of intersection for the Young modulus line shifted by 0.02 in the Strain and the data.
# Example!
![image](https://github.com/azzarip/extrudion/assets/116155557/aba78eb2-d1fb-4f90-992c-82c1806c85a5)

# Requirements

It needs Python 3.10 or greater. All other dependencies will be installed. 
If Python is needed [install from here](https://docs.conda.io/projects/miniconda/en/latest/miniconda-install.html)

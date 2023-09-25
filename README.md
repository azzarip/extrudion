# Extrudion
Executable .bat file for analysing .TRA files 
# Instruction
Run this file in the folder containing `.TRA` files.
It will output an `analysis.csv` file containing all the results, as shown in the mathematical formula section of this page.

The plots for each files are stored in the plot folder in the same directory.

# Mathematical Formulas

`Stress` = Force['N'] / `sample_thickness` / 10 * 10^3 

returns the `stress` in `kPa`

`Strain` = ln( length['mm'] / initial length ['mm'] )

`Young Modulus` = slope of the best line fit for the curve

`Intercept` = the intercept of the previous fit

`Yield Stress and Strain` are the points of intersection for the Young modulus line shifted by 0.02 in the Strain and the data.
# Example
![image](https://github.com/azzarip/extrudion/assets/116155557/f4cefd4a-50b2-45b2-a603-f0fc15f6e8cc)

# Analytical Techniques in R  

This repository contains information and materials for the "Analytical Techniques in R" course offered by Danielle Quinn for Agriculture and Agri-Food Canada in St. John's, Newfoundland on 18 - 20 March 2020.

### Set Up Instructions  

1. [Install R](https://www.r-project.org/)  
- If you are using Windows, you can do this simply by downloading and running [this .exe file](https://cran.r-project.org/bin/windows/base/release.htm). If you are using Mac or Linux, you can follow [this link](https://cran.r-project.org/mirrors.html), select the location nearest to your institution to access the files you will need to download. You should have R version 3.6.1.  

2. Install the [RStudio IDE](https://www.rstudio.com/products/rstudio/download/#download) by selecting the 1.2.5001 version appropriate for your operating system (Windows, Mac, or Linux/Ubuntu).  

*Note that if you have separate user and admin accounts, you should run the installers as administrator (right-click on .exe file and select "Run as administrator" instead of double-clicking). Otherwise problems may occur later, for example when installing R packages.*  

3. Download the files contained in [the current repository](https://github.com/DanielleQuinn/AAFC_Workshop) by clicking the green button that says "Clone or Download" and selecting "Download ZIP".  

4. Unzip these files into a folder on your Desktop called "RWorkshop"  

5. If you are comfortable doing so, run the following lines of code in RStudio to install the main packages we'll be using during this workshop. *You must be connected to the internet for this to work.* If you need assistance with this, I'll be hosting "office hours" prior to the workshop, and we'll be covering this process in more detail on Day One of the workshop.  

`install.packages("ggplot2")`  
`install.packages("lubridate")`  
`install.packages("dplyr")`  
`install.packages("tidyr")`  
`install.packages("MASS")`  
`install.packages("Ecdat")`  

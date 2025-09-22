# r-programming-assignments
USF Class LIS4370.002F25

## Robert Black

### Course ** LIS4370.002F25 **
### Repository for R Programming Assignments

### Blog Link: https://robbyblack2.github.io/r-programming-assignments/

Github arrangement: LIS4370.002F25.97886 R Programming
LIS4370.002F25.97886 R Programming<notifications@instructure.com>
​
Robert Black III;​
Robert Black III​
Hi Class,

Here is some guidance from Dr. Alon Friedman that could be helpful for you to arrange your GitHub repository. 

 

This course requires a GitHub repository for all assignments, including your final project. Each assignment must live in its own folder and include an .R file whose name matches the assignment. This structure is mandatory and will be checked for grading.

1) Repository Name (one repo for the semester)

Use: ç
Set the repo to public.
2) Folder Structure (exactly this pattern)

Create a top-level folder per assignment. Example:

R_Programming_Fall2025_Lastname_Firstname/
├── Assignment_01_Basic_Functions/
│   ├── Assignment_01.R
│   └── README.md
├── Assignment_02_Data_Visualization/
│   ├── Assignment_02.R
│   └── README.md
├── Assignment_03_Statistics/
│   ├── Assignment_03.R
│   └── README.md
└── Final_Project/
    ├── Final_Project.R
    ├── data/          
    ├── results/       
    └── README.md
3) File Naming (no deviations)

Assignment script: Assignment_##.R (two digits). Example: Assignment_02.R
Use underscores (_), no spaces, no special characters.
One primary .R file per assignment; auxiliary scripts (if any) must be referenced from the primary file.
4) Required README for the Final Project in the class

For the final project, the folder must include a concise README.md with the following minimal sections:

# Final project – Data Visualization (ggplot2)

## Description
Briefly describe the task and what the script does.

## How to Run
1) Open project is based on 02.R in RStudio 2) Run all lines (or source the script) 3) Outputs (plots/tables) are produced in the console and/or saved to results/ if applicable. ## Packages - ggplot2 - dplyr (if used) ## Data - Source: <link or brief description> - Location: <path if local, or URL if remote> ## Notes Any assumptions, limitations, or known issues. 
5) Continuity & Constraints (read carefully)

Assignments are cumulative. When instructed to build upon prior work, you must extend your existing code/data. Switching datasets or restarting to avoid previous choices is not allowed unless explicitly permitted.
Late or missing structure (wrong names, missing README, missing .R file) will affect grading.
6) .gitignore (recommended)

If your assignment writes temporary files, add a .gitignore at the repo root:

# R/RStudio
.Rproj.user/
.Rhistory
.RData
.Ruserdata

# Outputs
results/
*.html
*.pdf
*.png
*.jpg
*.csv
7) Academic Expectations

Your repository must run reproducibly on a fresh machine with the listed packages.
Do not commit large raw datasets unless required. If needed, document where to obtain them.
All code must be your own; cite sources where appropriate.
 

Hope this guidance helps! Please do not hesitate to let us know if you have any questions. 

Best regards,

Lingyao

Replies to this email will be posted as a reply to the announcement, which will be seen by everyone in the course.


View announcement  |  Update your notification settings

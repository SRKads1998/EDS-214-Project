### Exceeds Spec

**NOTE:** Your two "exceeds" specs have to be in different learning objectives

- I didn't see a request for me to assess a different spec for Exceeds.

#### The Student has provided attentive, constructive feedback in a peer review.

#### The student has contributed to a peer's repo by opening an issue and creating a pull request.

I feel that the feedback I provided was detailed and concrete, which clearly communicated specific needs to get aspects of my peer's project to meet and exceed spec. This included the peer-assessment and the issues I created on Github. Also, I assisted the same peer by helping them incorporate a flowchart into their project.

### Collaboration

I appreciated the opportunity to see other peers work, and be able to more formally collaborate with specific goals and desired outcomes. I tried to really hone in on the exact deliverables expected of the project and the feedback I provided aimed to give a specific, tangible benchmark for each of the issues I raised. For example, there was a slight discrepancy between some of the folder names, their contents, and the stated filepath structure in the ReadMe. I highlighted this so that the peer could update the names to ensure full accuracy between the different sections of the project.

<https://github.com/SRKads1998/EDS-214-Project/issues/10>

<https://github.com/SRKads1998/EDS-214-Project/issues/5>

<https://github.com/SRKads1998/EDS-214-Project/issues/4>

<https://github.com/SRKads1998/EDS-214-Project/pull/11>

# Instructor feedback

## Automate

[M] **Running the entire analysis requires rendering one Quarto document**

[M] The analysis runs without errors

[M] **The analysis produces the expected output**

-   Multiple plots, instead of one with multiple panels
-   Nice use of patchwork! One piece of feedback: future work should aim to be clean and professional, which includes cleaning up extraneous code. In this case, that means removing the individual nutrient plots after you figured out how to combine them.

[M] **Data import/cleaning is handled in its own script(s)**

## Organize

[M] Raw data is contained in its own folder

[M] Intermediate outputs are created and saved to a separate folder from raw data

-   Your data processing scripts don't save any outputs
-   joined_sites.R now saves intermediate outputs. That's great! In the future, you should _read_ those outputs directly, instead of re-running the scripts, in your analysis Quarto document.

[NY] **At least one piece of functionality has been refactored into a function in its own file**

-   You should have a separate function in the R/ folder. This should be sourced in paper.qmd.
-   I still don't see an R/ folder with a function definition in it.

## Document

[M] The repo has a README that explains where to find (1) data, (2) analysis script, (3) supporting code, and (4) outputs

[M] **The README includes a flowchart and text explaining how the analysis works**

[M] **The code is appropriately commented**

[M] **Variable and function names are descriptive and follow a consistent naming convention**

## Scale

After cloning the repo on Workbench:

[M] Running the environment initialization script installs all required packages

-   You should have a script that installs the necessary packages for your analysis
-   You do have an install_packages.R script now which sets up your environment, which meets the spec. It is kind of hard to find, though. Consider pointing to it in your README.

[M] The analysis script runs without errors

## Collaborate

[M] **The student has provided attentive, constructive feedback in a peer review**

[E] **The student has contributed to a peer's repo by opening an issue and creating a pull request**

-   Thank you for being thoughtful in your contributions to your peer's work!!

[M] The repo has at least three closed GitHub issues

[M] The commit history includes at least one merged branch and a resolved merge conflict

[NY] The rendered analysis is accessible via GitHub Pages

-   There's nothing in your docs/ folder, so there's nothing on GitHub Pages

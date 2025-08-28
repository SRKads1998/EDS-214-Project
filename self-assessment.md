### **Automate**

##### Running the entire analysis requires rendering one Quarto document

*Not yet,* while the Quarto doc is rendering without any errors, it still needs to be properly formatted to include desired code segments, while erasing things like library information and the like

The analysis runs without errors

Meets spec. The quarto successfully runs/renders

##### The analysis produces the expected result

*Not yet,* unfortunately the graphs are not tied together in the same way as the example provided for replication.

##### Data import/cleaning is handled in its own script(s)

*Not yet,* while everything runs, I would work on updating the doc to better format and clean the specific data segments

### Organize

Raw data is contained in its own folder

*Meets spec*. All of the raw data CSVs are in their own folder "data"

Intermediate outputs are created and saved to a separate folder from raw data

*Meets spec.* There are separate folders for scripts, in a larger folder called "scripts"

##### At least one piece of functionality has been refactored into a function in its own file

*Meets spec.* there is an r script file that contains the rolling average function.

### Document

The repo has a ReadMe that explains where to find (1) data, (2) analysis script, (3) supporting code, and (4) outputs

##### The ReadMe includes a flowchart and text explaining how the analysis works

*Not yet,* I did create a flow chart, but its not showing on GitHub for some reason, also, could sproose up the text to make it a bit clearer on the actual steps of the project

##### The code is appropriately commented

*Not yet,* theres a lot of code with little to know explanation, you should write up some notes so that you can make sense of it.

##### Variable and function names are descriptive and follow a consistent naming convention

*Not yet,* I would try and create a bit more distinction between the script names, some of them are decent however

### Scale (cloned on Workbench)

Running the environment intialization script installs all required packages

The analysis script runs without errors

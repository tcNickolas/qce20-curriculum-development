# Deep Dive: Debugging Q# Code

*We'll start the third session of [the workshop](https://tcnickolas.github.io/qce20-quantum-curriculum.html) with the discussion of this unusual type of tasks and the motivation behind them. We will then analyze this example task, so we encourage you to try and find the bugs in the code before that!*

The Q# code in this task implements Deutsch-Jozsa algorithm for two example functions (one constant and one balanced). It contains exactly **8 bugs**, ranging from issues that will manifest as compilation errors to problems that will require running the fixed algorithm and analyzing its output.

> You can find the corresponding learning exercises are in the following katas/tutorials:
> 
> * [Exploring Deutsch-Jozsa Algorithm tutorial](https://github.com/microsoft/QuantumKatas/tree/main/tutorials/ExploringDeutschJozsaAlgorithm).
> * [Deutsch-Jozsa Algorithm kata](https://github.com/microsoft/QuantumKatas/tree/main/DeutschJozsaAlgorithm).

## Installation instructions

There are two ways to approach this task:

* As a Q# standalone project.  
  Please follow [this QDK installation guide](https://docs.microsoft.com/en-us/quantum/quickstarts/install-command-line). We recommend to use Visual Studio or Visual Studio code with corresponding extensions (they are very helpful for looking for syntax errors!), but you can also use any other editor.  
  In this scenario, the Q# code for the task can be found in the `DeutschJozsaCode.qs` file.
* As a Q# Jupyter Notebook.  
  Please follow [this QDK installation guide](https://docs.microsoft.com/en-us/quantum/quickstarts/install-jupyter). You can also [run it online without any installation](https://mybinder.org/v2/gh/tcNickolas/qce20-curriculum-development/main?filepath=debugging/DeutschJozsaNotebook.ipynb).
  In this scenario, the Q# code can be found in the `DeutschJozsaNotebook` notebook.


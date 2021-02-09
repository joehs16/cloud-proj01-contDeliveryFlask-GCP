# cloud-proj01-contDeliveryFlask-GCP
![Python application test with Github Actions](https://github.com/joehs16/cloud-proj01-contDeliveryFlask-GCP
/.github/workflows/main.yml/badge.svg) 

## Introduction
This project was to build a flask microframework website within Google Cloud Platform while setting up continous delivery.

The project's intentions was to learn how to utilize GCP to automate as much of the provisioning as possible so that the code that you generate is able to be continously running.

Within this repo are two .yaml files; the first .yaml file runs install, lint and black on the main.py code to ensure that the pushed code is usable, and the second .yaml file deploys the app.

The main.py file itself demos a few features of flask, returning simple jsons and connecting to Google's NLP API to return analysis on Wikipedia entries.

The launched app can be found at [here](https://proj01-contdeliveryflask-gcp.uc.r.appspot.com/), and the flask's routes can be accessed by typing them into the URL.

## Repository Contents and File Descriptions:
### 1. requirements.txt
This file contains all of the predetermined packages that the user has deemed essential for running this repository.

### 2. Makefile

'Make' is an automation tool that is integrated into bash that allows one to execute bash commands. It is especially useful in establishing the "scaffold" of a new project.
To run any of the commands, one merely has to type <code>make <command></code> into the terminal.
- The Makefile in this repository has the following commands:
  1. install - this reads the <code>requirements.txt</code> file and installs or upgrades all the packages declared by the user
  2. pytest - identifies where python code has failed
  3. format - this implements autoformatting on all targeted python code
  4. lint - this tool rates the quality of the <code>main.py</code> file in this repository
  5. credentials - this connects the not-uploaded creditial file to Google Language's API
  6. gcloud - configs the project to the current gcloud project

Additionally, there is a <code>make all</code> command that runs <code>make install</code>, <code>make lint</code>,  and <code>make test</code> sequentially.

### 3. main.py

This file contains the flask app which has six routes, demonstrating different capabilities of flask. A route of interest is the <code>wikipedia</code> route (demoed [here](https://proj01-contdeliveryflask-gcp.uc.r.appspot.com/wikipedia/game-stop) for GameStop, which allows a user to input a company into the URL and output [Google-Cloud-Language's](https://pypi.org/project/google-cloud-language/), which gives an output json file for use in NLP analysis.
  
### 4. workflow/main.yml

This .yml file automatically implements github's workflow action upon pushing code to github

### 5. cloudbuild.yaml

This .yaml file automatically deploys the code to google cloud upon pushing the code to github

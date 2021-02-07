# cloud-proj01-contDeliveryFlask-GCP

This project was to build a flask microframework website within Google Cloud Platform while setting up continous delivery.

The project's intentions was to learn how to utilize GCP to automate as much of the provisioning as possible so that the code that you generate is able to be continously running.

Within this repo are two .yaml files; the first .yaml file runs install, lint and black on the main.py code to ensure that the pushed code is usable, and the second .yaml file deploys the app.

The main.py file itself demos a few features of flask, returning simple jsons and connecting to Google's NLP API to return analysis on Wikipedia entries.

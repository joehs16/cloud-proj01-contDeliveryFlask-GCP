install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#python -m pytest -vv --cov=myrepolib test/*.py
	#python -m pytest --nbval notebook.ipynb

format:
	black *.py

lint:
	pylint --disable=R,C main.py

credentials:
	export GOOGLE_APPLICATION_CREDENTIALS="/home/joseph_c_hsieh/cloud-proj01-contDeliveryFlask-GCP/jch16-service-key.json"

gcloud:
	gcloud config set project proj01-contdeliveryflask-gcp

all: install lint test
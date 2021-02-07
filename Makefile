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

all: install lint test
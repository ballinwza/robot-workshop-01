# ------ Robot Command ------ #

create-lib:
	pip freeze > requirements.txt
	
install:
	pip install -r requirements.txt

use-local:
	source .venv/bin/activate

test:
    sourve env/bin/activate && robot -v BROWSER:headlesschrome google8.robot

run:
	robot google8.robot

create-env-win:
	python -m venv .venv

create-env-os:
	python3 -m venv .venv	

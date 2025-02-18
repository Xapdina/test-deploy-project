.PHONY: install collectstatic migrate build render-start

install:
	$(HOME)/.local/bin/uv pip install --python=$(which python3) .

collectstatic:
	python manage.py collectstatic --noinput

migrate:
	python manage.py migrate

build:
	./build.sh

render-start:
	gunicorn task_manager.wsgi
VBIN = venv/bin/python


all: start

clean:
	rm -rf venv
	rm -rf *.egg-info
	rm -rf *__pycache__

$(VBIN):
	python -m venv venv
	chmod +x venv/bin/activate
	./venv/bin/activate

start: $(VBIN)
	pip install -e .
	python pika_girl_music

.PHONY: clean all start
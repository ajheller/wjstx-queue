PYTHON ?= python3
SBITX_TARGET ?= pi@sbitx.local:~

.PHONY: test demo deploy-sbitx

test:
	$(PYTHON) -m unittest discover -s tests

demo:
	$(PYTHON) wsjtx_queue.py --call AK6IM --demo --view both

deploy-sbitx:
	scp wsjtx_queue.py $(SBITX_TARGET)


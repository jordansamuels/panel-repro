VENV=$(CURDIR)/.venv

.PHONY: run-jupyter
run-jupyter: $(VENV)
	PYTHONPATH=$(CURDIR)/src $(VENV)/bin/jupyter lab repro.ipynb

$(VENV): environment.yml
	conda env create -y -p $(VENV) -f environment.yml

clean:
	rm -rf $(VENV)

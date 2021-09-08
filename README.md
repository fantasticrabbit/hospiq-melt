###  Meltano testing:  

1. download meltano, preference for venv setup: pipx install meltano
1. pull code: git clone git@github.com:fantasticrabbit/hospiq-melt
1. config bigquery auth
1. install plugins, run: meltano install
1. run: meltano elt tap-csv target-bigquery --transform=run

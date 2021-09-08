###  Meltano testing:  

1. download meltano, prefer venv setup: pipx install meltano
1. pull code from git
1. config bigquery auth with JSON service key, store file location as local env var GSUITECREDS
1. install plugins, run: meltano install
1. run: meltano elt tap-csv target-bigquery --transform=run

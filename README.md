# abarqueroc-tfm-uoc

# Setup
* Tested in Ubuntu 20.04.4 LTS

Download the dataset and set a `creditcard.csv` file in the root folder
You can get the data from [Kaggle](https://www.kaggle.com/datasets/mlg-ulb/creditcardfraud) or [here](https://drive.google.com/file/d/1TmAYpjQOCDJ5_rluO737rQSWoUD1qkj5/view?usp=sharing)

## Linux 

* Install [pyenv](https://github.com/pyenv/pyenv)
* Install global / local interpreter with `Python v3.9.7`. `pyenv global 3.9.7`.
* Create virtual env. `python3 -m venv env 66 . env/bin/activate`
* Install poetry. `python3 -m pip install poetry`
* Install dependencies. `poetry install`
* Run `jupyter notebook --ip 0.0.0.0 --no-browser --allow-root`

## Docker
* Install [Docker](https://docs.docker.com/engine/install/ubuntu/)
* Build the image `docker build -t abarqueroc-tfm-uoc .`
* Run `docker run -v $(pwd)/creditcard.csv:/home/creditcard.csv -p 8888:8888 -t abarqueroc-tfm-uoc`

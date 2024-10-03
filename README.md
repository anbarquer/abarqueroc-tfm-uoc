# abarqueroc-tfm-uoc

# Setup
* Tested in Ubuntu 20.04.4 LTS

Download the dataset and set a `creditcard.csv` file in the root folder
You can get the data from [Kaggle](https://www.kaggle.com/datasets/mlg-ulb/creditcardfraud)

## Linux 

* Install [pyenv](https://github.com/pyenv/pyenv)
* Install global / local interpreter with `Python v3.9.7`. `pyenv global 3.9.7`.
* Create virtual env. `python3 -m venv env && . env/bin/activate`
* Install poetry. `python3 -m pip install poetry`
* Install dependencies. `poetry install`
* Run `jupyter notebook --ip 0.0.0.0 --no-browser --allow-root`

## Docker
* Install [Docker](https://docs.docker.com/engine/install/ubuntu/)
* Build the image `docker build -t abarqueroc-tfm-uoc .`
* Run `docker run -v $(pwd)/creditcard.csv:/home/creditcard.csv -p 8888:8888 -t abarqueroc-tfm-uoc`
* If everything goes well then you'll see some output like this
```
[I 13:17:34.541 NotebookApp] Writing notebook server cookie secret to /root/.local/share/jupyter/runtime/notebook_cookie_secret
[I 13:17:34.875 NotebookApp] Serving notebooks from local directory: /home
[I 13:17:34.875 NotebookApp] Jupyter Notebook 6.4.10 is running at:
[I 13:17:34.875 NotebookApp] http://0f98b2828a86:8888/?token=58f15b2d2cb319caeb2cfa6a0c1f1987cae8a81987470c85
[I 13:17:34.875 NotebookApp]  or http://127.0.0.1:8888/?token=58f15b2d2cb319caeb2cfa6a0c1f1987cae8a81987470c85
[I 13:17:34.875 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 13:17:34.879 NotebookApp] 
    
    To access the notebook, open this file in a browser:
        file:///root/.local/share/jupyter/runtime/nbserver-1-open.html
    Or copy and paste one of these URLs:
        http://0f98b2828a86:8888/?token=58f15b2d2cb319caeb2cfa6a0c1f1987cae8a81987470c85
     or http://127.0.0.1:8888/?token=58f15b2d2cb319caeb2cfa6a0c1f1987cae8a81987470c85
```
* You can access to the notebook opening one of those links.

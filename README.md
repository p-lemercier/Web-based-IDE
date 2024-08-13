# Web-based IDE

A Docker container running web-based Jupyter and RStudio user interface, ready for Python and R languages.

It's based on the [Rocker Project](https://rocker-project.org/).

## Open IDE on web browser

* Jupyter : `http://localhost:8888/lab`

* RStudio : `http://localhost:8888/rstudio`

The password is : __yourpassword__

***** Add image *******

## Install packages permanently

The persisting packages are stored locally in the `lib/` folder. Here is how to install them:

### Python

```pip install --target /usr/local/lib/python/persist-library package_name```

Exemple: ```pip install --target /usr/local/lib/python/persist-library pysqlite3```


### R

```install.packages("package_name", lib = "/usr/local/lib/R/persist-library")```

Exemple: ```install.packages("RSQLite", lib = "/usr/local/lib/R/persist-library")```

## Client side rendering of jupyter notebooks

The file `ipynb_viewer.html` renders Jupyter notebooks straight in the browser. This is a fork from [kokes/nbviewer.js](https://github.com/kokes/nbviewer.js).

#### Usage

Open the html file and then drag and drop one or many Jupyter notebooks.

#### Showcase

![screencast](https://raw.githubusercontent.com/kokes/nbviewer.js/master/preview.gif)

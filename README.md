# OCSLS

This is an R package that contains the results from 
the Online CollegeSocial Life Survey (OCSLS). 
The OCSLS was designed by Paula England and collected between
Autumn 2005-Spring 2011 at twenty-one four-year
colleges and universities in the United States.

Data downloaded from
http://www.nyu.edu/projects/england/ocsls/
on May 10, 2017.


### Installing

You can install this package by running the following command in R

```
# install.packages("devtools")
devtools::install_github("mrflick/ocsls")
```


## Details

This package provides the following tables

* students
* dates
* romances
* hookups

The variables included in these tables are documented in the
[online codebook](http://www.nyu.edu/projects/england/ocsls/codebook/index.html).

You can view the survey questions at http://www.nyu.edu/projects/england/ocsls/questionnaire/

Very small changes were made to the data published on the project website:
The data in this package have been converted to "tibbles."
Non-ASCII characters have removed.


## Acknowledgments

The original survey was designed by [Paula England](http://sociology.as.nyu.edu/object/paulaengland.html)
and the codebook was provided by [Jonathan Bearak](http://bearak.org/contact.html). Any use of this data should
properly acknowledge the Online College Social Life Survey http://www.nyu.edu/projects/england/ocsls/


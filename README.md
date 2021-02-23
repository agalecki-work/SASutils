# `SASutils` repository

SAS programs/macros/functions for internal use

## Datasets created

Programs for creating datasets

* `01create_testdata.sas` creates data in `./testdata` subfolder
* `02create_exampledata.sas` creates data in `./exampledata` subfolder
* `10create_metadata.sas` creates metadata for `testdata` 
   - Requires `01create_testdata.sas` to be executed first
   - Metadata are stored in in `./metadata` subfolder

## Examples

Programs illustrating various topics

### `driver` macro

The `driver` macro is used to create and append summary statistics for test data

* Run `01create_testdata.sas` and `10create_metadata.sas` first
* Datasets in `testdata` and `metadata` subfolders used as input
* `15by_summary.sas` creates `outdata.bymeans_summary` dataset
* `15data_summary.sas` creates `dataout.var_info` and `dataout.means_summary`


### Predicted values for a logistic regression model


# Releases history

* [v1.0](https://github.com/agalecki-work/SASutils/archive/v1.0.zip) released on Dec. 18th, 2020
* [v1.1](https://github.com/agalecki-work/SASutils/archive/v1.1.zip) released on Dec. 21th, 2020

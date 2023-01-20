This repository contain data and analysis script used in our ARM HPC performance and energy efficiency study:

Nikolay A. Simakov, Robert L. DeLeon, Joseph P. White, Mathew D. Jones, Thomas R. Furlani.
"Are we ready for broader adoption of ARM in the HPC community: Performance and Energy Efficiency Analysis of Benchmarks and Applications Executed on High-End ARM Systems".
International Conference on High Performance Computing in Asia-Pacific Region Workshops (HPCASIAWORKSHOP 2023), February 27-March 2, 2023, Singapore}
<https://doi.org/10.1145/3581576.3581618>

The data set is in `data` folder:

* ai_bench_performance.ods
* appkernel.Rda - Rdata file contains two dataframes `results_num` and `results_str` containing metrics for test runs executed with XDMoD AKRR.
  * appkernel_results_num.csv - the above `results_num` dataframe in CSV format
  * appkernel_results_str.csv - the above `results_str` dataframe in CSV format
* openfoam.Rda - Rdata file contains `openfoam` dataframe with openfoam metrics for test runs which were executed outside of XDMoD AKRR.
  * openfoam.csv - same as `openfoam.Rda` but in CSV format
* resource_spec.csv - resource specifications table
* ookami_power_openfoam.csv - power consumption for single OpenFOAM job executed on Ookami (ARM Fujitsu A64FX)
* ubhpc_power_openfoam.csv - power consumption for single OpenFOAM job executed on UBHPC (Intel Ice Lake)

Analysis script `01_Analyze.Rmd` aggregate data and write to `out/<app_name>.csv`.
The later files combined in `spreadsheet.xlsx` for final table visualization with sparklines.


`results_num` and `results_str` consists of same columns 
the difference is that `results_num` contains numeric metrics like `Wall Clock Time` and 
`results_str` contains string metrics like `App:Version`. Below is the description of a columns:

* resource - resource name
* app - name of application kernel
* nodes - number of cores used
* cores - number of cores used
* task_id - internal job id, rows with same `task_id` are from same batch job.
* metric_type - type of metric: either parameter or statistics, sometime there is a fine line between them.
* metric - metric name
* value - metric value
* units - metric units

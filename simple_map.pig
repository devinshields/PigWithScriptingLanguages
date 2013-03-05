
rows = LOAD './data/simulated_sample.tsv' USING PigStorage() AS (cookie_uid:int, webpage_uid:int, utc_time:int);

R_mapped_rows = STREAM rows THROUGH `mapper.R`;
STORE R_mapped_rows INTO './data/results/R_mapped_rows' USING PigStorage();

Py_mapped_rows = STREAM rows THROUGH `mapper.py`;
STORE Py_mapped_rows INTO './data/results/Py_mapped_rows' USING PigStorage();

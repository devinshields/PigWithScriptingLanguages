
json_grp_rows = LOAD 'data/groups.json';

R_mapped_json = STREAM json_grp_rows THROUGH `rjson.R`;

STORE R_mapped_json INTO './data/results/R_mapped_json' USING PigStorage();

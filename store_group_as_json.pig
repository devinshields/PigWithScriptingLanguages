
rows = LOAD './data/simulated_sample.tsv' USING PigStorage() AS (cookie_uid:int, webpage_uid:int, utc_time:int);
grps = GROUP rows by (cookie_uid, webpage_uid);

STORE grps INTO './data/groups_as_json' USING JsonStorage();

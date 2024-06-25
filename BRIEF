Brief how to set up the import of a new source
In order to add a new data source to the model, it is necessary to create an sql query in the models/data folder in which to register all the necessary fields for the import, according to MCDM(mcdm_paid_ads_basic_performance_structure). 
If there are no necessary fields in the source, then we assign NULL values to them.
Then you need to in the file models/data/_data_sources.xml isert this new sql query as a resource.
Then, in data/union_data.sql, write at the bottom, similar to the previous channels UNION with our new source. 
That's all.

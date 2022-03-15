# SSDT Benchmark Project
A simple set of projects that you can use to benchmark SQL Server Data Tools (SSDT) compilation times accross machines.
1. Clone or [download repository](https://github.com/sqlgreen/BenchDb/archive/refs/heads/main.zip)
1. Run one of the batch files
1. Check the elapsed time shown

# Projects
There are three solutions, each testing a different project approach:

## BenchDb
A single database project with 4000 tables, 2000 views and 2000 stored procedures.

## BenchDb.Build
A single database [MSBuild.Sdk.SqlProj](https://github.com/rr-wfm/MSBuild.Sdk.SqlProj) project which references the 4000 tables, 2000 views and 2000 stored procedures from BenchDb. This compares a MSBuild.Sdk.SqlProj project to the traditional SSDT project.

## BenchDbSplit
Three projects, one each for the 4000 tables (BenchDbTables), 2000 views (BenchDbViews) and 2000 stored procedures (BenchDbCode). They are combined as one database using *Same database* project references. This can be compared to BenchDb to asses the impact of spliting a database accross several projects.

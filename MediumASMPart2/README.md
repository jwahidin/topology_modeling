# Code for Medium article 
Listing of resources to complement the medium blog post on Topology Modeling


## database tables creation
- [create_custom.sql](./create_custom.sql) scripts to create and populate the database tables

## scripts / Netcool Impact Policy
- [asmFunctions.ipl](./asmFunctions.ipl) Library functions
- [createTopoBulkParam.ipl](./createTopoBulkParam.ipl) Impact Policy to read tables and push it into ASM.

Note you need to define the data types for the policy to work.
You also need to establish the TLS session between Netcool/Impact and ASM.



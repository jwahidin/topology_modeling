# topology_modeling
Listing of resources to complement the blog post on Topology Modeling

## Simnet probes

- [simnet.def](./simnet.def)  OMNIbus probe SIMNET definition file.
- [simnet.rules](./simnet.rules)  OMNIbus probe SIMNET rule file.

## database tables creation

- [table.sql](./table.sql) scripts to create the omnibus table.


## Netcool Impact Policies

Note you need to define the data types for the policy to work.
You also need to establish the CA for TLS connection between Impact and ASM.

The policy to populate the the OMNIbus table:
- [NCI_insertResAndEdgeFromEvent.ipl](./NCI_insertResAndEdgeFromEvent.ipl)

The three Policies to push the table to ASMare:
- [NCI_runBulkLoadOnNew.ipl](./NCI_runBulkLoadOnNew.ipl)
- [NCI_asmRest.ipl](./NCI_asmRest.ipl)
- [NCI_asmFunctions.ipl](./NCI_asmFunctions.ipl)
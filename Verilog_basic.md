# Verilog

> **Latch**
1. Latch is harmful in Combinational Logic Circuit
2. where does the Latch comes from?
   - in verilog code, if there is a code where to keep the output constant and there will be a Latch after synthesis.
   - https://blog.csdn.net/ARM_qiao/article/details/124309796

> **Generate**
1. **Generate statement** helps us to get verilog code where the Assignment statements or logic statements has the same structure but with different parameters.


> **Block RAM & Distributed RAM**

1. Need Clock signal?
   - BRAM is synchronous
   - DRAM is asynchronous
   - both are **written synchronously**



2. Random size implementation?
   - the minimum size of BRAM is 18kbits and unused part cannot be fetched anymore
   - DRAM can be used in any size

> **Type of Variables**
1. wire: must be used in __assign__ statement
2. reg: must be used in __initial__ and __always__ statements

> **Assignment Symbols**
1. <=: unblocking assignment. Means that the running of one unblocking assignment does not influence the following assignments.
2. =: blocking assignment. Means that the following assignment should wait until the current assignment being finished.
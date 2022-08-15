# Verilog

> **Latch**

   1. Latch is harmful in Combinational Logic Circuit
   2. where does the Latch comes from?
      - in verilog code, if there is a code where to keep the output constant and there will be a Latch after synthesis.
      - <https://blog.csdn.net/ARM_qiao/article/details/124309796>

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

1. wire: must be used in **assign** statement
2. reg: must be used in **initial** and **always** statements

> **Assignment Symbols**

1. <=: unblocking assignment. Means that the running of one unblocking assignment does not influence the following assignments.
2. =: blocking assignment. Means that the following assignment should wait until the current assignment being finished

> **2's complement representation**

1. it is used to prepresent negative numbers in computer;

2. How to represent a negative number?
   1. for example, there is a numer: -6
   2. represent **6** with four bits: **0110**
   3. convert each bit, 0->1 or 1->0
      1. get **1001**
      2. **1001 + 1 = 1010**

   4. 2's complement representation of -6 is **1010**

3. the representation range with n bits:
   1. **[-2^n, 2^n-1]**
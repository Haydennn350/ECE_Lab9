# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Peter Kjaer, 
## Summary

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
The outputs of the latch feed back into the input, so the delays from using structural Verilog cause errors. It can also confuse the Verilog simulations and builds, which will result in more issues.
### What is the meaning of always @(*) in a sensitivity block?
It just means to run when any signal changes, since * means any.
### What importance is memory to digital circuits?
Memory is very important, since it allows a circuit to interact with previous states of itself. It unlocks many things like flip-flops and clocks that are very important when building something bigger like a cpu.

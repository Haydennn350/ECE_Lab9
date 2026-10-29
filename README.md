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
Peter Kjaer, Hayden Nguyen, Tate Malloy
## Summary

In Lab 9, we learned about sequential logic and how circuits can store data instead of just reacting to inputs. We learned how SR-Latches and D-Latches work and how a D-Latch can remember a value even when the input changes. When E is high, Q follows D, and when E is low, it holds. In Part 1, we made a single bit D-Latch. In Part 2, we used D-Latches, multiplexers, and demultiplexers to build a four-byte memory system. We also learned how to use always blocks, reg, and non-blocking assignments.

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
The outputs of the latch feed back into the input, so the delays from using structural Verilog cause errors cause the outputs feed back into the inputs making a loop. It can also confuse the Verilog simulations and builds, which will result in more issues. 

### What is the meaning of always @(*) in a sensitivity block?

It means the block re-runs whenever any signal that is read inside that block changes. The * builds the sensitivity list. It makes it so that we don’t have to list each signal over and over. For the D-latch, the block is sensitive to E, D, and Q.

### What importance is memory to digital circuits?
Memory is very important, since it allows a circuit to interact with previous states of itself. It unlocks many things like flip-flops and clocks that are very important when building something bigger like a cpu.

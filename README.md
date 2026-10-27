
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
Wyatt Davis, Boston Holdaway
## Summary
In this lab we use multiplexers and demultiplexers in conjunction with a latch to create memory.
## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
Because we need the latches to have steady states. If we used structural Verilog, we would end up with a loop, so we would have no steady state and no memory.

### What is the meaning of always @(*) in a sensitivity block?
This makes the system update when any of the inputs are changed. With multiplexers this also uses no memory if we reset all other points.

### What importance is memory to digital circuits?
Memory is used everywhere. In computers alone memory is one of its most important capabilities. It allows us to keep track of information even after the input is gone so that we can go get another input without forgetting what just happened.

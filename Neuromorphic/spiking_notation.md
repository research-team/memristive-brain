# Spiking technology notation 

To extend previously started article:
https://www.overleaf.com/19697776yqzdttfnhwmq

Spiking memristive neurons have functions:

1. Threshold
1. Learning (STDP (Δt))
1. Integration (ex., inh.) in timeframe (Leakage)
    1. probabilistic
	1. temporal
	1. logic

## Notation

```
\ - earlier
/ - later
| - same time

* - conjunction
+ - disjunction
! - inhibition
> - implication 
```

## Examples 


```
A| * B > C = if A and B at the same time then C

A:0.5| * B:0.5 > C:0.25 = if A with probability 0.5 and B with probability 0.5 at the same time then C has probability 0.25

A:0.5\1 * B:0.5 > C:0.1 = if A with probability 0.5 is 1ms earlier B with probability 0.5 then C has probability 0.1 (because of leakage)

A:0.5\10 * B:0.5 > C:0.0 = if A with probability 0.5 is 10ms earlier B with probability 0.5 then C has probability 0.0 (because of leakage)

A\1 * B\0.1 * C > D = if A 1 ms earlier than B and B 0.1 ms earlier than C then D

A| * !B > C:0 = if A and B at the same time and B is inhibiting A then probability of C is 0.0

```

## Weights 



## Learning


# Spiking technology notation 

Spiking memristive neurons have functions:

1. Threshold
1. Learning (STDP (Δt))
1. Integration (ex., inh.) in timeframe (Leakage)
    1. probabilistic
	1. temporal
	1. logic
	
```
\ - earlier
/ - later
| - same time

* - conjunction
+ - disjunction
! - inhibition (negation) 
> - implication 
```

## Examples 

```
A +| B > C = if A and B at the same time then C

A:0.5 +| B:0.5 > C:0.25 = if A with probability 0.5 and B with probability 0.5 at the same time then C with probability 0.25

A:0.5 +/1 B:0.5 > C:0.1 = if A with probability 0.5 is earlier B with probability 0.5 at the same time then C with probability 0.1 (because of leakage)

A:0.5 +/10 B:0.5 > C:0.0 = if A with probability 0.5 is earlier B with probability 0.5 at the same time then C with probability 0.1 (because of leakage)

A +| !B > C:0 = if A and B at the same time and B is inhibiting A then probability of C is 0


```

	

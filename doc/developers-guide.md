# Developers guide

## Use small increments

If you


## Meaningful names for variables functions and files

### Naming convention

The naming could be done in as much as possible self explanatory convention with all important parameters included delimiters are underscore = _ :

```

bio_sci_rat16_flexor_eesF40_i100_s21_eesV5_1_2018-01-01.txt

bio = is the result of biological/simulatory experiment [Bio,Sim]
sci = the biological model was used with spinal cord injury [sci,healthy]
rat16 = the ID of the biological model;
flexor = name of the muscle [Flexor, Extensor, RTA, LTA, LMG, RMG]
eesF40 = EES frequency of 40 Hz
i100 = percent of the inhibition 100%
s21cms = speed of the biological model is 21 cm/s [0..100][ms,cms]
eesV5V = voltage of the EES 5V [0..10, ST, T] ST = subthreshold, threshold;
1 = the first iteration of the simulation from 25
2018-01-30 = date in ISO standard YYYY-MM-DD

```

## Use logging

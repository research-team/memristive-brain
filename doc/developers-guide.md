# Developers guide

## Use small increments

Don't try to complete the component before testing. 
Each function must be tested.
Adding small increment test it before staring new function.
Same approach should be applied to works with schematic: test each soldered op-amp before soldering other components.

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

Each module must include logging

```

import logging
logging.basicConfig(level=logging.DEBUG)

Recommended logging levels: info and debug.
```

## Document your code

1. Functions should be named in meaningful manner to identify what this functions is doing:
Ex: ees_slice (create slices according to EES), bio_deviation (calculate deviation according to biological data)

2. Each function and each parameter including return parameters must be documented

```
def slice_ees(data_array, slicing_index = 'Stim', data_index = 'RMG ', epsilon = .001) :
	"""
	Returns sliced array of voltages from raw data of myograms from matlab file
	Parameters
	----------
	data_array: dict
    	the dict of the raw voltages of myograms and EESes
	slicing_index: str
    	the string that indicates the stimulation dictionary (EESes)
	data_index: str
    	the sting that indicates the data dictionary (voltages)
	epsilon: float
    	the float to identify the maximums of EESes

	Returns
	-------
	list[array]
    	the list of slices (array of voltages)
	"""
```

3. All the path to files must be relative not absolute.
```
mat_data = sio.loadmat('../bio-data/SCI_Rat-1_11-22-2016_RMG_40Hz_one_step.mat')

```

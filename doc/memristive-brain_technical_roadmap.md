# Memristive brain project technical roadmap
From neuron to brain

The initial ideas could be found in [memristive_approach.md](memristive_approach.md).

## Neuron

Modulating, inhibitory, excitatory neuron principal schema is presented below.
![High-level modulatory and inhibitory memristive neuron](HL_mod_inh_mem_neuron.png)
There are three parts of the block diagram represented in colors: excitatory – orange, inhibitory – blue, modulatory – green. Inputs are depicted as triangles. The excitatory learning is implemented via *ExLTP[1..n<sub>e</sub>]* and *ExLTD[1..n<sub>e</sub>]* feedback loops of excitatory memristive device (*Ex[1..n<sub>e</sub>]*), where LTP (long term potentiation) blocks implement the learning function above x axis and LTD (long term depression) blocks implement learning function below x. *Generator 1* and *Generator n<sub>e</sub>* implement dendrite spikes. The inhibitory part has different structure, where

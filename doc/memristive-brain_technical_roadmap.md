# Memristive brain project technical roadmap
From neuron to brain

The initial ideas could be found in [memristive_approach.md](memristive_approach.md).

## Neuron

Modulating, inhibitory, excitatory neuron principal schema is presented below.
![High-level modulatory and inhibitory memristive neuron](HL_mod_inh_mem_neuron.png)
There are three parts of the block diagram represented in colors: excitatory – orange, inhibitory – blue, modulatory – green. In- puts are depicted as triangles. The excitatory learning is implemented via *ExLTP[1..ne]* and *ExLTD[1..ne]* feedback loops of excitatory memristive device (*Ex[1..ne]*), where LTP (long term potentiation) blocks implement the learning function above x axis and LTD (long term depression) blocks implement learning function below x. *Generator1* and *Generator n~e~* implement dendrite spikes. The inhibitory part has different structure, where

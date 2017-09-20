# Memristive brain project technical roadmap
From neuron to brain

The initial ideas could be found in [memristive_approach.md](memristive_approach.md).

As neuromodulation is the basement of emotional mechanisms especially taking in account neuro-psychological model: ["cube of emotions"](https://en.wikipedia.org/wiki/L%C3%B6vheim_cube_of_emotion) and roles of dopamine (DA), serotonin (5-HT), noradrenaline (NA). To implement emotional basement and drives with bio-plausible approach we have to start with most basic functionality of neuromodulation in neuron. We have used the memristive approach as a memristive device could be understood as electronic analog of synapse and already it was indicated that silicon and polyaniline memristors are capable of STDP or basic neuronal learning.

## Neuron

We have created and implemented following schema of modulating, inhibitory, excitatory neuron.
![High-level modulatory and inhibitory memristive neuron](HL_mod_inh_mem_neuron.png)
There are three parts of the block diagram represented in colors: excitatory – orange, inhibitory – blue, modulatory – green. Inputs are depicted as triangles. The excitatory learning is implemented via *ExLTP[1..n<sub>e</sub>]* and *ExLTD[1..n<sub>e</sub>]* feedback loops of excitatory memristive device (*Ex[1..n<sub>e</sub>]*), where LTP (long term potentiation) blocks implement the learning function above x axis (*eSTDP* graph) and LTD (long term depression) blocks implement learning function below x. *Generator 1* and *Generator n<sub>e</sub>* implement dendrite spikes. The *Blocking leaky integrator* implements a dendrite joint where first dendrite spike blocks second close one due to NA/K channels refractory dynamics.

The inhibitory part has different structure, where the LTP is implemented as feedback loop block that uses inbound pre-synaptic signals and outbound of memristive device signals. The LTD is implemented as feedback from neuron outbound signal. The LTP and the LTD implement learning function described in Hennequin et al.(2017) indicated as *iSTDP* graph. Modulatory blocks *Mod[1..m]* influence LTP and LTD functional blocks modulating the amplitude of learning impulses. The modulation influence over STDP is presented via *meSTDP* graph. *Integrator*, *Threshold adder* and *Generator* are the implementation of a neuronal soma and axon hillock that integrates excitatory and inhibitory inbound signals and generates the outbound signal.

## Cortical column 

### 1 layer

The next step from neuron is a cortical column (approximately 10<sup>4</sup> neurons with 10<sup>8</sup> synapses) that could be understood as basic functional structure of neocortex. 

The design starts from one layer approximately (2\*10<sup>4</sup> neurons and 2\*10<sup>8</sup> synapses) of a cortical column, the block diagram is presented below:

![Cortical column 1 layer implementation](HL_memristive_brain_1_layer.png)

The inbound signal is transmitted via *Metal connectors* see Tsai(2015) to layer of *Polyaniline memristors* that are stochastically organized Fontana(2011) and connected with neuromodulatory *Silicon neurons* described [above](#neuron) via *Metal connectors*. *Metal connectors* and *Silicon neurons* are created via modern lithography while *Polyaniline memristors* technology should be clarified. Outbound projections are created via lover layer of *Metal connectors*. 

The three dimensional structure of memristive cortical column is presented below:

![Cortical column 3D implementation](HL_memristive_brain_1_layer_3D.png)

Running through projections are organized via insulated channels to the *Polyaniline memristors* layer.

#### Quantitative parameters

Component | Parameter | Value
--:| --:| :--
Polyaniline memristors | Synapse | 2\*10<sup>8</sup>
Metal connectors | Connector | 2\*10<sup>8</sup>
Silicon neurons | Neuron | 2\*10<sup>4</sup>


### Minimalistic implementation

A minimalistic feed forward cortical should have following structure where each component is the 1 layer component presented [above](1_layer):

![Cortical column minimal implementation](HL_memristive_brain_minimized_column.png)

The biological 4th layer is inbound for thalamic projections. The 4th layer structure is presented in [1 layer](1_layer) section while all the rest are missing first *Metal connectors* component.

### Bio-plausible implementation

![Bio cortical column](HL_memristive_brain_bio_cortical_column.png)

![Cortical column bio-plausible implementation](HL_memristive_brain_cortical_column.png)

![Cortical column bio-plausible implementation](HL_memristive_brain_cortical_column_3D.png)

## Cortical and sub-cortical structures

![Cortical and sub-cortical structures](HL_memristive_brain_block_diagram.png)


## References

Tsai, D., John, E., Chari, T., Yuste, R., & Shepard, K. (2015). High-channel-count, high-density microelectrode array for closed-loop investigation of neuronal networks. In Engineering in Medicine and Biology Society (EMBC), 2015 37th Annual International Conference of the IEEE (pp. 7510–7513). IEEE. Retrieved from http://ieeexplore.ieee.org/abstract/document/7320129/

Fontana, M. P., & Erokhin, V. (2011). Thin Film Electrochemical Memristive Systems for Bio-Inspired Computation. Journal of Computational and Theoretical Nanoscience, 8(3). https://doi.org/10.1166/jctn.2011.1695


# Memristive brain project technical approach
How to make a machine "feel" emotions?

![Initial idea](mousebrainpink.png)

## Problem

Affects, emotions play crucial role in mammalian life including human life. Starting from Darwin researchers pay attention to emotional mechanisms of animals with special attention in psychology to emotions of humans. Currently it is clear that consciousness and human intelligence is not possible without emotions and emotions related mechanisms please refer to works of Antonio Damasio. This way the cornerstone of artificial intelligence and what it is missing for better social collaboration could be emotions and emotional drives system.

Because  the neuromodulation is the biological basement of emotional mechanisms especially taking in account neuro-psychological model: ["cube of emotions"](https://en.wikipedia.org/wiki/L%C3%B6vheim_cube_of_emotion) and roles of dopamine (DA), serotonin (5-HT), noradrenaline (NA). To implement neurobiological mechanisms and drives within bio-plausible approach we have to start with most basic functionality of neuromodulation in neuron. We have used the memristive approach as a memristive device could be understood as electronic analog of synapse and already it was indicated that silicon and polyaniline memristors are capable of STDP or basic neuronal learning.

## Neuron

We have created and implemented the following schema of modulating, inhibitory, excitatory neuron.
![High-level modulatory and inhibitory memristive neuron](HL_mod_inh_mem_neuron.png)
There are three parts of the block diagram represented in colors: excitatory – orange, inhibitory – blue, modulatory – green. Inputs are depicted as triangles. The excitatory learning is implemented via *ExLTP[1..n<sub>e</sub>]* and *ExLTD[1..n<sub>e</sub>]* feedback loops of excitatory memristive device (*Ex[1..n<sub>e</sub>]*), where LTP (long term potentiation) blocks implement the learning function above x axis (*eSTDP* graph) and LTD (long term depression) blocks implement learning function below x. *Generator 1* and *Generator n<sub>e</sub>* implement dendrite spikes. The *Blocking leaky integrator* implements a dendrite joint where first dendrite spike blocks second close one due to NA/K channels refractory dynamics.

The inhibitory part has different structure, where the LTP is implemented as feedback loop block that uses inbound pre-synaptic signals and outbound of memristive device signals. The LTD is implemented as feedback from neuron outbound signal. The LTP and the LTD implement learning function described in Hennequin et al.(2017) indicated as *iSTDP* graph. Modulatory blocks *Mod[1..m]* influence LTP and LTD functional blocks modulating the amplitude of learning impulses. The modulation influence over STDP is presented via *meSTDP* graph. *Integrator*, *Threshold adder* and *Generator* are the implementation of a neuronal soma and axon hillock that integrates excitatory and inhibitory inbound signals and generates the outbound signal.

## Cortical column 

### 1 layer

The next step from neuron is a cortical column (approximately 10<sup>4</sup> neurons with 10<sup>8</sup> synapses) that could be understood as basic functional structure of neocortex.

The design starts from one layer approximately (2\*10<sup>4</sup> neurons and 2\*10<sup>8</sup> synapses) of a cortical column, the block diagram is presented below:

![Cortical column 1 layer implementation](HL_memristive_brain_1_layer.png)

The inbound signal is transmitted via *Metal connectors* see Tsai(2015) to layer of *PANI memristors* (PANI stands for polyaniline) that are stochastically organized Fontana(2011) and connected with neuromodulatory *Silicon neurons* described [above](#neuron) via *Metal connectors*. *Metal connectors* and *Silicon neurons* are created via modern lithography while *PANI memristors* technology should be clarified. Outbound projections are created via lover layer of *Metal connectors*.

### 1 layer 3D structure

The three dimensional structure of memristive cortical column is presented below:

![Cortical column 3D implementation](HL_memristive_brain_1_layer_3D.png)

Running through projections are organized via insulated channels to the *PANI memristors* layer.

#### Quantitative parameters

Component | Parameter | Value
--:| --:| :--
PANI memristors | Synapse | 2\*10<sup>9</sup>
Metal connectors | Connector | 2\*10<sup>9</sup>
Silicon neurons | Neuron | 2\*10<sup>5</sup>


### Minimalistic implementation

A minimalistic feed forward cortical should have following structure where each component is the 1 layer component presented [above](1-layer):

![Cortical column minimal implementation](HL_memristive_brain_minimized_column.png)

The biological 4th layer is inbound for thalamic projections. The 4th layer structure is presented in [1 layer](1-layer) section while all the rest are missing first *Metal connectors* component. The 4th layer component has excitatory projections mainly to *3/2* layers. *3/2* layers are have efferent projections to other layers and *5/6* layers, that in their turn have efferent projections to the thalamus. The number of neurons per each layer is presented in section [Bio-plausible implementation](https://github.com/research-team/memristive-brain/blob/master/doc/memristive-brain_technical_roadmap.md#bio-plausible-implementation)

### Bio-plausible implementation

Simplified bio cortical column projections are presented on the diagram below Feldmeyer(2012):

![Bio cortical column](HL_memristive_brain_bio_cortical_column.png)

*Glu* - are the glutamate projections that are excitatory 
*GABA* - gamma-Aminobutyric acid inhibitory projections mainly internal to cortical column layer except for 6->4 inhibitory projections. 

The inbound thalamic projections come to the 4th layer, outbound are from 2nd and 3rd layers to other cortical columns, and from 6th to thalamus.

The implementation could be organized as 3D structure, where 4th layer projects to *5A*, *3* via electrical contact to their *PANI memristors* components and projects to *5B*, *2* via 3D memristive channels. 

![Cortical column bio-plausible implementation](HL_memristive_brain_cortical_column.png)

The number of neurons are inherited from Meyer(2010).

Thalamus has approximately 200 efferent projections to 4th layer of the cortical column that contains approximately 4084 silicon neurons. The 4th layer projects to 2, 3, 5A and 5B layers. The 6th layer has positive and negative feedback loops to the 4th layer and positive to the 5A. The 2nd layer has more projections to the 5A with less feedback, the 3rd has more projections to the 5B with less feedback, while the 5A has stronger projections to the 3rd layer and the 5B to the 2nd. Seems to be common pattern that the 2nd and the 3rd layer have stronger "crossing" projections to the 5A and the 5B while the 5A and the 5B have "direct" projections to the 3rd and the 2nd. Similar to the [minimalistic implementation](https://github.com/research-team/memristive-brain/blob/master/doc/memristive-brain_technical_roadmap.md#minimalistic-implementation) the 3rd layer has efferent projections to other columns and the 6th has efferent projections to the thalamus.

![Cortical column bio-plausible implementation](HL_memristive_brain_cortical_column_3D.png)

The 3D structure of projections is demonstrated above, limited to one-layer projections are depicted via green arrows, lilac arrows depict cross layer projections thus electrical connections. Projections from 6th and 4th layer are depicted via lilac circles, that are created as indicated in section [3D structure](memristive-brain_technical_roadmap.md#1-layer-3d-structure)

## Cortical and sub-cortical structures

![Cortical and sub-cortical structures](HL_memristive_brain_block_diagram.png)

Cortical areas are organized according to principles discussed earlier analogous to biological cortical columns Mountcastle (1978). The DA, 5-HT, NA subsystems are integrated with cortex via several pathways and neuronal activity is modulated via DA, 5-HT, NA. Subcortical areas usually have similar layered structure as the cortex thus could be constructed in a similar way as described above. 
Cortex is connected with DA pathways via thalamocortical projections that are modulated via the striatum and level of the DA produced by substantia nigra pars compacta. The DA subsystems are modulated, mainly inhibited by the 5-HT subsystems and both of them are modulated via NA subsystems. The DA subsystem has feedback loop with NA subsystem. Overall we could reimplement emotional drives via reimplementing emotional involved subsystems starting from the DA as most simple to implement technically.

![Dopamine diagram](dopamine.png)
![Serotonin diagram](serotonin.png)
![Noradrenaline diagram](noradrenaline.png)


## References

The initial ideas could be found in [memristive_approach.md](memristive_approach.md).


Tsai, D., John, E., Chari, T., Yuste, R., & Shepard, K. (2015). High-channel-count, high-density microelectrode array for closed-loop investigation of neuronal networks. In Engineering in Medicine and Biology Society (EMBC), 2015 37th Annual International Conference of the IEEE (pp. 7510–7513). IEEE. Retrieved from http://ieeexplore.ieee.org/abstract/document/7320129/

Fontana, M. P., & Erokhin, V. (2011). Thin Film Electrochemical Memristive Systems for Bio-Inspired Computation. Journal of Computational and Theoretical Nanoscience, 8(3). https://doi.org/10.1166/jctn.2011.1695

Feldmeyer, D. (2012). Excitatory neuronal connectivity in the barrel cortex. Frontiers in Neuroanatomy, 6. https://doi.org/10.3389/fnana.2012.00024

Meyer, H. S., Wimmer, V. C., Oberlaender, M., de Kock, C. P. J., Sakmann, B., & Helmstaedter, M. (2010). Number and Laminar Distribution of Neurons in a Thalamocortical Projection Column of Rat Vibrissal Cortex. Cerebral Cortex, 20(10), 2277–2286. https://doi.org/10.1093/cercor/bhq067

V. B. Mountcastle, “An organizing principle for cerebral function: the unit module and the distributed system,” in The Mindful Brain: Cortical Organization and the Group-Selective Theory of Higher Brain Function, G. M. Endelman and V. B. Montcastle, Eds., pp. 7–51, MIT Press, Cambridge, Mass, USA, 1978.



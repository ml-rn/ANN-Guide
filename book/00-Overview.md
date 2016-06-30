
= Overview

# Overview

## Overview

- What is Machine Learning?
- What is Deep Learning?
- Different Architectures of NNs
- Why ANNs are so awesome


## What is Machine Learning

- hard to describe, some kind of Buzzword
- Teaching a Machine to do things itself
- Teaching a Machine to describe problems itself
- Teaching a Machine to solve problems itself

## What should it do?

- Problem -> Machine Learning -> Solution
- Dataset -> Classification -> Yes/No to a question
- Dataset -> Analysis -> Yes/No to a question

## Architectures

- Math sector: NN, ENN, RNN, CNN, Q-RNN
- Biology sector: HTM engine (not covered here)
- Engineering sector: ANN, NEAT, HyperNEAT, ES/HyperNEAT


= Neural Networks

# Neural Networks

## Neural Networks

- Idea to build a human brain
- can figure things out on their own (in a limited way)
- reward ("good dog!") to identify good things (yes)
- punish ("bad dog!") to identify bad things (no)

## Neural Networks

- How does a Neural Network look like?

![neural-network](/asset/neural-network.png)

## Backpropagation

- Idea: NNs will get better over time by rewards
- is just a nested loop of two two-dimensional (layers and neurons) arrays
- outer array is old set of neurons, inner array is new set of neurons
- If `training_function(old_neuron.value) > 0.5`, update old neuron


## Neural Networks

- can only work with vectors (0.0 - 1.0)
- don't question treatment or punishment
- don't question datasets
- don't question input vectors
- don't question output vectors


## Example Neural Network Usage

![neural-network-usage](/asset/neural-network-usage.png)


## Problems with Neural Networks

- used as so-called Classifier
- Dataset for cars has 4 vectors (4 wheels) as inputs
- [1,1,0,1] or whatever data representation
- NN gets treatment if found broken car (assuming broken occurs less than working cars)

## Neural Networks

- can be seen as dumb Monkeys wanting a banana
- don't question their reward
- don't have a sense of time
- only know good/bad, no matter how long the timespan
- overfitting problem
- first 1000 cars are good means every car is good.
- Want banana now.

## Problems with Classification

![classification-problem](/asset/classification-problem.png)


## Problems with Classification

- Datasets can be not finite anymore
- Let's assume 5000 (insert big number here) 4 wheel cars and 10 cars were 6 wheel cars
- [1,1,1,1,1,1] is a good car
- [1,1,1,1,0,0] is a also good car (last 2 vectors not tracked)

## Problems with Changing Datasets

- How to adapt to classifications?
- How to adapt to new dataset vectors?
- How to adapt to minimally occuring marginal conditions?


= Evolution Cycles

# Evolution Cycles

## Evolution Cycles

- Evolution as Dominance classification
- "Agents" that compete against each other
- Best agents get to mate and produce babies
- Genome (DNA) represents weights of neurons

## Evolution Cycles

![genome-nn-weights](/asset/genome-nn-weights.png)

## Evolution Cycles

- Genome DNA split is randomized
- 2 babies are produced, a son and a daughter
- 2 babies have each more of mothers or fathers genes

## Evolution Cycles

![genome-nn](/asset/genome-nn.png)

## Evolution Cycles

- Evolution always wins
- Randomization always wins

## Disadvantages of Evolution Cycles

- Adaptive to "bad seasons" (depressive behaviour)
- Adaptive to "good seasons" (optimistic behaviour)
- Needs long time to get better
- Needs parallelization of hundreds of agents

## Advantages of Evolution Cycles

- Eventually will always come up with correct classifier
- Adaptive to infinite datasets
- Adaptive to time-based datasets


= Backpropagation

# Backpropagation

## Backpropagation

- outer last-hidden-layer-update function
- typically sigmoid or gaussian (depending on use case)

## Backpropagation

![backpropagation-sigmoid](/asset/backpropagation-sigmoid.png)

## Backpropagation

![backpropagation-gaussian](/asset/backpropagation-gaussian.png)

## Backpropagation

- If function result is bigger than 0.5, increase neuron value
- If function result is lower than 0.5, decrease neuron value

## Problems with Backpropagation

![backpropagation-vector-problem](/asset/backpropagation-vector-problem.png)

## Problems with Backpropagation

![backpropagation-input-problem](/asset/backpropagation-input-problem.png)

## Problems with Backpropagation

- input vectors influence reward function
- time and occurance problem
- 6 wheels occur less than 4 wheels, but still a car
- new reward function necessary for bigger set of inputs
- how to value different rewards for different inputs?


= Recurrent Neural Networks

# Recurrent Neural Networks

## Recurrent Neural Networks

- so-called unfolding neural networks
- hidden layers will unfold in another dimension
- unfolding leads to sense of time/occurance

## Recurrent Neural Networks

![recurrent-nn](/asset/recurrent-nn.png)

## Disadvantages of RNN

- It's super ineffective (computation time)
- Each change in dataset vectors needs manual correction of reward function
- Eventually RNNs will always lead to hacking the reward function
- Mostly RNNs will end up with a single uber strategy

## LSTM Recurrent Neural Network

- Long Short Term Memory RNNs
- forget data and training that was irrelevant
- do so by introducing forget gates

## LSTM RNN

![lstm-rnn](/asset/lstm-rnn.png)

## LSTM RNN

- additional so called forget gates
- values close to zero (neuron output) are ignored
- good at identifying positive values
- very bad at identifying negative values

## Disadvantages of LSTM RNN

- very good at reoccuring datasets
- basically the computer variant of captain obvious
- bad for identifying new strategies
- new strategies require combination of multiple RNNs (in line or a graph)

## Deep Learning

- Combination of Neural Networks
- Most companies use RNNs because they do picture or time-based data stuff anyways
- Probability-based assumptions for determining results
- focus on having many tiny (easy to compute) neural networks
- tiny neural networks aim to exist one specified purpose

## Deep Learning

![deep-learning](/asset/deep-learning.png)


= Adaptive Neural Networks

# Adaptive Neural Networks

## Adaptive Neural Networks

![adaptive-nn](/asset/adaptive-nn.png)

## Disadvantages of Adaptive Neural Networks

- Randomization always wins
- Always better than RNNs without manual influence
- Unsupervised learning effect
- Lower efficiency than Evolution (parallelization) concepts


= NEAT

# NEAT

## NEAT

- Neuroevolution of augmenting topologies
- genetic algorithm that generates ANNs
- finds best fitness of evolved solutions
- respects diversity by tracking genes with history markes
- can predict what genes will be dominant in future
- can predict dominant species in future
- tracks history, crossover techniques, speciation

## NEAT

- typical NEAT implementation has agents
- best agents get to make babies based on their fitness
- starts minimally and predicts maximum efficiency in growth
- can predict where to spawn neurons to get more effective
- only problem is unwanted cross-talk between near-end neurons

## Advantages of NEAT

- Adaptive to anything
- Figures out anything itself, given enough time
- Mutates connections between neurons (so-called substrates)
- Mutates nodes (neurons) in locations
- history markers are awesome for prediction


= HyperNEAT

# HyperNEAT

## HyperNEAT

- Hypercube based encoding for NEAT
- CPPN usage (Compositional Pattern Producing NN)
- Evolutionary algorithms generate neural network
- Describes patterns of connectivity (called encoding)
- Represents patterns like symmetry, repetition and variation of substrates

## HyperNEAT

- 4D Hypercube (x1 , x2 , y1 , y2) for substrates
- 2D and 3D space is called a substrate

## Disadvantages of HyperNEAT

- Basically a shitload of neuron data

## Advantages of HyperNEAT

- Aweomse prediction of geometric relations
- Can see if sensors (inputs) are related to each other
- does not require adaption of reward function
- does not exploit reward function


= ES-HyperNEAT

# ES-HyperNEAT

## ES-HyperNEAT

- Evolvable substrate HyperNEAT
- places connections (substrates) automatically
- respects neuron cloud density
- respects neuron cloud locations
- can increase substrates via evolution

## Advantages of HyperNEAT

- exponential growth of neurons via time
- geometry decides where to place neurons


= RTES-HyperNEAT

# RTES-HyperNEAT

## RTES-HyperNEAT

- Multi-agent implementation of ES-HyperNEAT
- made for realtime (RT) usage
- uses limited epoches for dominance of agents
- best agents produce babies based on fitness


= lychee.js CARTEL

# lychee.js CARTEL

## lychee.js CARTEL

- botnet size (read: computers in the cloud) is above 500k+
- each bot runs hundreds / thousands of agents in parallel
- ES/HyperNEAT is really slow
- RTES/HyperNEAT is pretty good, but still very static in inputs
- Humans have no clue which inputs are relevant
- Humans have no clue which training data is relevant

## CARTEL/ES-HyperNEAT

- you can basically forget all RNN solutions for code-analysis
- ES-HyperNEAT is the closest to a problem where you have no clue
- adaptive ANN required that learns which inputs play a role
- adaptive ANN required that learns which training data plays a role
- computation time in a botnet (peer-cloud) is very limited with ES/HyperNEAT
- focus of the CARTEL is on performance, cache optimization and delegation

## CARTEL/ES-HyperNEAT

- Clone-Adaptive Real-Time Evolvable Legation / Evolvable-Substrate HyperNEAT
- adaptive to varying inputs
- adaptive to legation (voted "minister" on each bot for botnet synchronization)
- hashing of inputs/outputs with murmur hash (ultrafast non-crypto hashing)
- delegating agent clones to do the same thing behind the scenes
- proxying clones to increase fitness based on occurance

## CARTEL/ES-HyperNEAT

- decides when randomization is good for evolution
- agent clones can be targeted with opposite datasets
- better variance for sigmoid behaviour
- better variance for gaussian behaviour
- sigmoid vs. gaussian still have to be evaluated (currently being evaluated)

## CARTEL/ES-HyperNEAT

- Academic work still needs to be done
- Reference implementation public around September 2016
- needs some polishing work and well, much code decoupling to be not lychee.js centric
- Anybody want to write some papers and help?


= Summary

# Summary

## Summary

- github.com/cookiengineer/ANN-Guide (this talk)
- github.com/Artificial-Engineering/lycheejs (reference implementation)
- github.com/Artificial-Engineering/lycheejs-cartel (academic stuff, zero content by now)


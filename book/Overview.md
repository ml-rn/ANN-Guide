
= Overview

# Overview

## Overview

- What is Machine Learning?
- What is Deep Learning?
- Different Architectures
- Biology vs. Evolution vs. AI


## What is Machine Learning

- hard to describe, some kind of Buzzword
- Teaching a Machine to do things itself
- Teaching a Machine to describe problems itself
- Teaching a Machine to solve problems itself

## Architectures

- Math sector: NN, ENN, RNN, CNN, Q-RNN
- Biology sector: HTM engine
- Engineering sector: ANN, NEAT, HyperNEAT, ES/HyperNEAT

## What does ML do?

- Problem -> ML -> Solution
- Dataset -> Classification -> Yes/No to a question


= Neural Networks

# Neural Networks

## Neural Networks

- Idea to build a human brain
- can figure things out on their own (in a limited way)
- reward ("good dog!")
- punish ("bad dog!")

## Neural Networks

- How does a Neural Network look like?

![neural-network](neural-network.png)

## Backpropagation

- When being rewarded, NNs will get better over time.
- Backpropagation is just a nested loop. If function is > 0.5, add value to outer Array


## Neural Networks

- can only work with Vector input (0.0 - 1.0)
- are totally dumb, but don't question treatment or punishment

## Example Neural Network Usage

![neural-network-usage](neural-network-usage.png)


## Problems with Neural Networks

- used as so-called Classifier
- Dataset for cars has 4 vectors (4 wheels) as inputs
- [0,1,1,1] or whatever...
- NN gets treatment if found broken car (assuming broken occurs less than working cars)

## Neural Networks

- can be seen as dumb Monkeys wanting a banana
- don't question their reward
- don't have a sense of time
- only know good/bad, no matter how long last time was ago
- overfitting problem
- first 1000 cars are good means every car is good. Want banana now.

## Problems with Classification

![classification-problem](classification-problem.png)


## Problems with Classification

- Dataset was not finite anymore (6 wheels more than 4 wheels)
- Let's assume 5000 (insert big number here) 4 wheel cars
- Let's assume 10 6 wheel cars
- [1,1,1,1,1,1] is a good car
- [1,1,1,1,0,0] is a bad car (last 2 vectors were not tracked)

## Problems with Infinite/Changing Datasets

- How to adapt to classifications?
- How to adapt to new dataset vectors?

= Evolution Cycles

# Evolution Cycles

## Evolution Cycles

- Evolution as Dominance classification
- "Agents" that compete against each other
- Best agents get to mate and produce babies
- Genome (DNA) represents weights of neurons

## Evolution Cycles

- Genome DNA split is randomized
- 2 babies are produced, a son and a daughter
- 2 babies have more of mothers or fathers genes

![genome-nn](genome-nn.png)

# Evolution Cycles

- Evolution always wins
- Randomization always wins

## Problems with Evolution Cycles

- Adaptive to "bad seasons" (depressive behaviour)
- Adaptive to "good seasons" (optimistic behaviour)
- Needs long time to get better
- Needs parallelization of hundreds of agents

## Good things with Evolution Cycles

- Eventually will always come up with correct classifier
- Adaptive to infinite datasets
- Adaptive to time-based datasets


= Backpropagation

# Backpropagation

## Backpropagation

- The treatment / reward function is typically sigmoid or gaussian

![sigmoid-gaussian](sigmoid-gaussian.png)

## Backpropagation

- If function result is bigger than 0.5, increase neuron value
- If function result is lower than 0.5, decrease neuron value

## Problems with Backpropagation

![problems-backpropagation](problems-backpropagation.png)


= Recurrent Neural Networks

# Recurrent Neural Networks

## Recurrent Neural Networks



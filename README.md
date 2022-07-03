# OOV-RateCalculation

OOV words are a critical issue in language models, especially for morphologically rich languages. They lead to 0 MLE estimates, and also reduce the performance of the model as the OOV rate increases. In this project, we will try to address the problem of OOV words by using subword representations. We will perform the task in the following steps:

Find appropriate subwords for a given corpus.
Train a neural network model over these subwords.
Use the trained model to generate a newer, larger "corpus".
Compare the OOV rates obtained on varying sizes of the generated corpora with a baseline OOV rate over word tokens.
Perform hyperparameter tuning at subword and neural network level to get the optimal OOV rates over the generated corpora.

We will repeat the above steps for two language corpora: English, and Bengali.

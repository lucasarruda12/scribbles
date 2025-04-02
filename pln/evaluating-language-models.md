The best way to evalluate the performance of a language model is to embed it in an application and mesure how much the application improves. Such end-to-end evaluation is called extrinsic evaluation.

- Extrinsic evaluation is the onyl way to know if a particular improvement in the language model is really going to help the task at hand

- Unfortunately, running NLP systems end-to-end is often very expensive. Instead, it is helpful to have a metric that can be used to quickly evaluate potential improvemens. For that, we use intrinsic evaluation.

# Training and Test Sets

In order to evaluate any machine learning model, we need at least three distinct data sets: the training set, the development set, and the test set.

- The training set is the data we use to learn the parameters of our model.

- The test set is a different, held-out set of data, not overlapping with the training set, that we use to evaluate our model.

- When comparing language models, whichever assigns a higher probability to the test set - which means it more accurately predicts the test set - is a better model!

- Training on the test set can introduce bias.

- Testing multiple times on the test set can cause one to implicityl tune the model to its caracteristics. For this reason, we only want to run themodel on the test set onde, or a very few number of times.

- For this reason, we normally have a thirds dataset, called a development set (or a devset). We do all our testing on this dataset until the very end, and then test on the test set once to see how good the model is.

# Perplexity

The perplexity (PP or PPL) of a language model onnn atest ss theee inverse probabiiiiility of thetst set, nnnnnormalized by the number of words(or tokens). Fo this reason, it's sometimes ca the per-word or per-token perplexity. We normalize by the number of words N by taking the Nth root.

$$
\begin{align}
\text{perplexity }(W) &= P(w_1w_2...w_N)^{- \frac 1 N} \\
&= \root N \of {\frac 1 {P(w_1w_2...w_n}}
\end{align}
$$

> Note that because of the inverse, the higher the probabilityof the word sequence, the lower the perplexity. Thus, the lower the perplexity of amodel on the data, the better the model.

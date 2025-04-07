There is a problem with using maximum likelihood estimate for probabilities: any fitine training corpus will be missing some perfectly acceptable English word sentences. These unseen sequences (or zeros) are a problem for two reasons:

- Their presence means we are underestimating the probability of word sequences tha might occur,
- and, since the perplexity of a model is based on the inverse of the probability of the test set, if the probability of any word in the test set is zero we can't compute perplexity at all.

- Smoothing (or discounting) is the standard way to deal with these "zero probability n-grams".

# Laplace Smoothing

A smothing algoritm that consists of adding 1 to every n-gram count, before normalizing them into probabilities.

- Does not perform well on modern n-gram models.

# Stupid Backoff

# Interpolation

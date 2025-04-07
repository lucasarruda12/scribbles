An n-gram is a sequence of n words: a 2-gram (which we'll) call a bigram) is a two-word sequence of words.

## The basics

- One way to compute the probability P(w|h) of a word w given some history h is to, given a very large corpus, just count the number of times we see the history w and how many times it is followed by the 

- The problem is that there aren't corpus large enough give us good estimates for counts of entire sentences.
    > This is because language is creative; new sentences are invented all the time, and we can't expect to get accurate cunts for such large objects as entire sentences.

## The Markov assumption

The intuiton of the n-gram model is that instead of computing the probability of a word given its entire history, we can approximate the history by just the last few words.

> The assumption that the probability of a word depends only on the previous word is called a Markov assumption. Markov models are te class of probabilistic models that assume we can predict the probabiity of some future unit without looking too far into the past.

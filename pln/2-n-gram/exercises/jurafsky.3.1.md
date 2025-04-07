**Write out the equation for trigram probability estimation (modifying Eq. 3.11).**

$$
P(W_n | W_{n-2:n-1}) = \frac{C(W_{n-2}W_{n-1}W_n)} {\sum_W C(W_{n-2} W_{n-1} W)}
$$

**Now write out all the non-zero trigram probabilities for the I am Sam corpus on page 4**

```
<s> I am Sam </s>
<s> Sam I am </s>
<s> I do not like green eggs and ham </s>
```

$P(am | (s),I) = \frac{1}{2} = 0.5$
$P(Sam | I,am) = \frac{1}{2} = 0.5$
$P((/s) | am,Sam) = \frac{1}{1} = 1$
$P(I | (s),Sam) = \frac{1}{1} = 1$
$P(am| Sam,I) = \frac{1}{1} = 1$
$P((/s) | I,am) = \frac{1}{2} = 0.5$
> Parei aqui pois cansei desse trabalho de corno


The solution involves using a finite portion of the infinite list or employing techniques to force evaluation only when necessary. Here's one way to modify the code:

```haskell
infiniteList = 1 : infiniteList

sumFiniteList :: Int -> [Integer] -> Integer
sumFiniteList n xs = sum $ take n xs

main :: IO ()
main = print $ sumFiniteList 10 infiniteList
```

This corrected version uses `take n xs` to limit the summation to the first `n` elements of the list, thus avoiding the infinite recursion.  Other techniques, such as using explicit recursion with base cases or employing folds, can also solve this problem.
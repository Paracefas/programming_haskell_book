mysum :: (Num a) => [a] -> a
mysum [] = 0
mysum (x:xs) = x + mysum xs

lqsort :: (Ord a) => [a] -> [a]
lqsort [] = []
lqsort (x:xs) = lqsort smaller ++ [x] ++ lqsort larger
                where
                  smaller = [ a | a <- xs, a <= x ]
                  larger  = [ a | a <- xs, a >  x ]

-- 1. Q:   Give another possible calculation for the result of double (double 2).
--    Ans: [TODO]
-- 2. Q:   Show that sum [x] = x for any number x.
--    Ans: mysum [x]
--             { applying sum }
--         x + mysum []
--             { applying sum }
--         x + 0
--             { applying + }
--         x

-- 3. Define a function product that produces the product of a list of numbers, and show using your
--    definition that product [2,3,4] = 24.
myproduct :: (Num a) => [a] -> a
myproduct [] = 1
myproduct (x:xs) = x * myproduct xs

-- 4. How should the definition of the funcion qsort be modified so that it produces a reverse sorted
--    version of a list?
rqsort :: (Ord a) => [a] -> [a]
rqsort [] = []
rqsort (x:xs) = rqsort larger ++ [x] ++ rqsort smaller
                where
                  larger  = [ a | a <- xs, a >= x ]
                  smaller = [ a | a <- xs, a <  x ]

      -- 5. Q:    What would be the effect of repacing <= by < in the definition of qsort?
--    Hint: Consider the example qsort [2,2,3,1,1]
--    Ans:  By reaplacing it, the result of the example will be [1, 2, 3]. Forgiving the repetitions.
--          Why? Because when you have x == a, ex.: 2 == 2, it is not consider in none of the cases.

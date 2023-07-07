module Mizip (mizip) where
    mizip :: [a] -> [b] -> [(a,b)]
    mizip (a:as) (b:bs) = (a,b): mizip as bs
    mizip [] _ = []
    mizip _ [] = []

    mizipWith ::  (a -> b -> c) -> [a] -> [b] -> [(a,b,c)]
    mizipWith f (a:as) (b:bs)  = (a,b,f a b): mizipWith f as bs 
    mizipWith _ _ _ = []

    toList :: [(a,b,c)] -> [c]
    toList [] = []
    toList ((_,_,c):xs) = c: toList xs


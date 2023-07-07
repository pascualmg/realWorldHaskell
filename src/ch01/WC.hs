module WC
    ( wc,
    myDrop,
    myTail,
    lastButOne'
    ) where

wc :: IO ()
wc =
    interact (myDrop (5::Int))

myTail :: [a] -> [a]
myTail (_:xs) = xs
myTail [] = []


myDrop :: (Ord t, Num t) => t -> [a] -> [a]
myDrop n xs =
    if n < 0 || null xs
    then xs
    else myDrop (n - 1) (myTail xs)



lastButOne' ::  [a] -> Maybe a
lastButOne' [] = Nothing 
lastButOne' [x, _] = Just x
lastButOne' (_:xs) = lastButOne' xs




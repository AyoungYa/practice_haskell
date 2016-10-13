import Data.Char (toUpper)

upperCase :: String -> String
upperCase (x:xs) = toUpper x : upperCase xs
upperCase []     = []

myMap :: (a -> b) -> [a] -> [b]
myMap f (x:xs) = f x : myMap f xs
myMap _ []     = []


oddList :: [Int] -> [Int]
oddList (x : xs) | odd x     = x : oddList xs
                 | otherwise = oddList xs
oddList []                   = [] 



mySum xs = helper 0 xs
    where helper acc (x:xs) = helper (acc + x) xs
          helper acc []     = acc
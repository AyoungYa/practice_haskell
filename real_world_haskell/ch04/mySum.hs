mySum xs = helper 0 xs
      where helper acc (x:xs) = helper (acc + x) xs
            helper acc []     = acc


foldlSum xs = foldl (+) 0 xs
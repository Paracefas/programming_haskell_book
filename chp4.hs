{--- Wtf?
(¬) :: Bool -> Bool
(¬) x = if x then False else True
-}
{- ?
(^) :: Bool -> Bool -> Bool
True ^ True = True
_ ^ _ = False
-}

test :: [Char] -> Bool
test ['a', _] = True
test _ = False

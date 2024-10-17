doubleMe x = x + x

doubleUs x y = x * 2 + y * 2

-- As expected, you can call your own functions from other functions that you made.
-- With that in mind, we could redefine doubleUs:
doubleUsEnhanced x y = doubleMe x + doubleMe y
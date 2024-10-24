-- A common task is putting two lists together. This is done by using the ++ operator.

-- Watch out when repeatedly using the ++ operator on long strings.
-- When you put together two lists (even if you append a singleton list to a list, for instance: [1,2,3] ++ [4]), internally,
-- Haskell has to walk through the whole list on the left side of ++.
-- However, putting something at the beginning of a list using the : operator (also called the cons operator) is instantaneous.

joinTwoLists x y = x ++ y

-- [1,2,3,4] ++ [9,10,11,12] => [1,2,3,4,9,10,11,12]
-- "hello" ++ " " ++ "world" => "hello world"
-- ['w','o'] ++ ['o','t'] => "woot"

consItemToList a b = a : b

-- 'A':" SMALL CAT" => "A SMALL CAT"
-- 5:[1,2,3,4,5] => [5,1,2,3,4,5]

retrieveFromIndex a x = x !! a

-- "Steve Buscemi" !! 6 => 'B'
-- [9.4,33.2,96.2,11.2,23.25] !! 1 => 33.2

-- Lists can also contain lists. They can also contain lists that contain lists that contain lists …

-- ghci> let b = [[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3]]
-- ghci> b
-- [[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3]]
-- ghci> b ++ [[1,1,1,1]]
-- [[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3],[1,1,1,1]]
-- ghci> [6,6,6]:b
-- [[6,6,6],[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3]]
-- ghci> b !! 2
-- [1,2,2,3,4]

-- Lists can be compared if the stuff they contain can be compared. When using <, <=, > and >= to compare lists, they are compared in lexicographical order. First the heads are compared. If they are equal then the second elements are compared, etc.

-- ghci> [3,2,1] > [2,1,0]      => True
-- ghci> [3,2,1] > [2,10,100]      => True
-- ghci> [3,4,2] > [3,4]      => True
-- ghci> [3,4,2] > [2,4]      => True
-- ghci> [3,4,2] == [3,4,2]      => True

-- head takes a list and returns its head. The head of a list is basically its first element.
-- ghci> head [5,4,3,2,1] returns 5

-- tail takes a list and returns its tail. In other words, it chops off a list's head.
-- ghci> tail [5,4,3,2,1] returns [4,3,2,1]

-- last takes a list and returns its last element.
-- ghci> last [5,4,3,2,1] returns 1

-- init takes a list and returns everything except its last element.
-- ghci> init [5,4,3,2,1] returns [5,4,3,2]

somaMaybe (Just x) (Just y) = Just(x + y)
somaMaybe (Just x) Nothing = Just(x)
somaMaybe Nothing (Just y) = Just(y)
somaMaybe Nothing Nothing = Nothing

main = do
    print $ somaMaybe (Just 5) (Just 7) == Just(12)
    print $ somaMaybe (Just 5) Nothing == Just(5)
    print $ somaMaybe Nothing (Just 3) == Just(3)
    print $ somaMaybe Nothing Nothing == Nothing

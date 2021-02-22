module Todo where

data TodoResult s a = TitleEmpty | PastDueDate | Success (Todo s a) deriving (Eq, Show, Ord)

data Todo s a = Todo
  { title :: s,
    dueDate :: Maybe a,
    creationDate :: a
  }
  deriving (Eq, Show, Ord)

validation "" _ _ = TitleEmpty
validation t (Just d) n | d > n = PastDueDate
validation t d n = Success (Todo t d n)

module TodoSpec where

import Lib
import Test.Hspec
import Test.Hspec.QuickCheck
import Test.QuickCheck.Property
import Todo

spec :: Spec
spec = describe "Simple test" $ do
  prop "property-based unit test" $
    \d n -> validation "" d (n :: Int) == TitleEmpty

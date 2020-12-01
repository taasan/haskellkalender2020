module Advent.Lib
  ( Door(..)
  ) where

class Door a where
  open :: a -> String

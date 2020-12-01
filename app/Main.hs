module Main
  ( main
  ) where

import Advent.Door1
import Advent.Lib
import qualified Data.Time as Time

main :: IO ()
main = do
  today <- Time.utctDay <$> Time.getCurrentTime
  let (_, _, dayOfMonth) = Time.toGregorian today
  sequence (doOpen <$> take dayOfMonth doors) >>= mapM_ putStrLn
  where
    prefix day = show day ++ "\t"
    doOpen (day, Nothing) = pure $ prefix day ++ "*** Nothing ***"
    doOpen (day, Just answer) = do
      solution <- answer
      pure $ prefix day ++ solution

readDoor :: Door a => Int -> (String -> a) -> IO a
readDoor day mkDoor = readFile fileName >>= \s -> pure $ mkDoor s
  where
    fileName :: String
    fileName = "input/" ++ show day

openDoor :: Door a => (String -> a) -> Int -> IO String
openDoor mkDoor day = open <$> readDoor day mkDoor

door1 :: Maybe (IO String)
door1 = Just $ openDoor Door1 1

door2 :: Maybe (IO String)
door2 = Nothing

door3 :: Maybe (IO String)
door3 = Nothing

door4 :: Maybe (IO String)
door4 = Nothing

door5 :: Maybe (IO String)
door5 = Nothing

door6 :: Maybe (IO String)
door6 = Nothing

door7 :: Maybe (IO String)
door7 = Nothing

door8 :: Maybe (IO String)
door8 = Nothing

door9 :: Maybe (IO String)
door9 = Nothing

door10 :: Maybe (IO String)
door10 = Nothing

door11 :: Maybe (IO String)
door11 = Nothing

door12 :: Maybe (IO String)
door12 = Nothing

door13 :: Maybe (IO String)
door13 = Nothing

door14 :: Maybe (IO String)
door14 = Nothing

door15 :: Maybe (IO String)
door15 = Nothing

door16 :: Maybe (IO String)
door16 = Nothing

door17 :: Maybe (IO String)
door17 = Nothing

door18 :: Maybe (IO String)
door18 = Nothing

door19 :: Maybe (IO String)
door19 = Nothing

door20 :: Maybe (IO String)
door20 = Nothing

door21 :: Maybe (IO String)
door21 = Nothing

door22 :: Maybe (IO String)
door22 = Nothing

door23 :: Maybe (IO String)
door23 = Nothing

door24 :: Maybe (IO String)
door24 = Nothing

doors :: [(Int, Maybe (IO String))]
doors =
  zip
    [1 .. 24]
    [ door1
    , door2
    , door3
    , door4
    , door5
    , door6
    , door7
    , door8
    , door9
    , door10
    , door11
    , door12
    , door13
    , door14
    , door15
    , door16
    , door17
    , door18
    , door19
    , door20
    , door21
    , door22
    , door23
    , door24
    ]

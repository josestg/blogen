module Main where

import Html (Html, append_, html_, p_, render)

myhtml :: Html
myhtml =
  html_ "My Title" $
    append_
      (p_ "Paragraph #1")
      (p_ "Paragraph #2")

main :: IO ()
main =
  putStrLn $ render myhtml
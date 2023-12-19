module Main where

el :: String -> String -> String
el tag con =
  "<" <> tag <> ">" <> con <> "</" <> tag <> ">"

html_ :: String -> String
html_ = el "html"

head_ :: String -> String
head_ = el "head"

body_ :: String -> String
body_ = el "body"

title_ :: String -> String
title_ = el "title"

p_ :: String -> String
p_ = el "p"

h1_ :: String -> String
h1_ = el "h1"

makeHtml :: String -> String -> String
makeHtml t c =
  html_ $
    (head_ . title_) t <> body_ c

main :: IO ()
main =
  putStrLn $
    makeHtml "The Title" $
      h1_ "Heading 1"
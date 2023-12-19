module Main where

html_ :: String -> String
html_ child = "<html>" <> child <> "</html>"

head_ :: String -> String
head_ child = "<head>" <> child <> "</head>"

body_ :: String -> String
body_ child = "<body>" <> child <> "</body>"

title_ :: String -> String
title_ child = "<title>" <> child <> "</title>"

makeHtml :: String -> String -> String
makeHtml t c =
  html_ $
    (head_ . title_) t <> body_ c

main :: IO ()
main =
  putStrLn $
    makeHtml "The Title" "The Body"
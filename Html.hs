module Html
  ( Html,
    el,
    h1_,
    p_,
    html_,
    append_,
    render,
  )
where

-- A complete Html document.
newtype Html = Html String

-- A type for html structures such as headings and paragraphs that can go inside the tag.
newtype Structure = Structure String

-- Alias type for naming the title.
type Title = String

el :: String -> String -> String
el tag con =
  "<" <> tag <> ">" <> con <> "</" <> tag <> ">"

h1_ :: String -> Structure
h1_ = Structure . el "h1"

p_ :: String -> Structure
p_ = Structure . el "p"

html_ :: Title -> Structure -> Html
html_ t (Structure c) =
  Html
    ( el
        "html"
        ( el
            "head"
            (el "title" t)
        )
        <> el "body" c
    )

append_ :: Structure -> Structure -> Structure
append_ c1 c2 = Structure (unwrap c1 <> unwrap c2)
  where
    unwrap (Structure t) = t

render :: Html -> String
render (Html s) = s
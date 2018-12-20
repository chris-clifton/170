# Preparing for HTML

## DOCTYPE
HTML files require certain elements to set up the document properly.  You can let web browsers know that you are using HTML with the doctype documentation.
```html
<!DOCTYPE html>
```
This declaration is ain instruction and must be first line of code in an HTML document.

## `<html>` tag
To create HTML structure, opening and closing `<html>` tags are needed.  Anything in between will be interpreted as HTML code- without them, its possible browsers could misinterpret HTML code.

## The Head
The `<head>` element goes above the `<body>` element- it contains the *metadata* for a webpage.  Unlinke info in `<body>`, it is info about the page itself.

Typically the first item after first HTML tag.

Metadata is important for user experience- web crawlers, search engines, browsers, etc.  Used to improve SEO.

## Page Titles
A browser's tab displays the title specified in the `<title>` tag.  
`<title>` is always inside `<head>`

## Linking to Other Web Pages
One of the most powerful aspects of HTML is being able to link to other web pages.

You can add links to a web page by using the anchor tags- `<a> </a>`

Anchor tabs need an `href` attribute in order to link- href stands for *hyperlink reference* and is used to link to a *path*.  Paths are often URLs, but could be local/absolute.
```html
<a href="https://www.wikipedia.org/">This Is A Link To Wikipedia</a>
```
In the example above, the `href` attribute has been set to the value of the URL.

Target attribute allows links to open in new window. The value `_blank` will do this. Other attributes: `_self`, `_parent`, `_top`.

## Linking to Relative Page
When making static pages, dev's often store HTML files in root directory.
```html
<a href="./contact.html">Contact</a>
```
The `./` tells browser to look for file in current folder.

## Linking at Will
You can use images as links by wrapping the `<img>` tags with anchor tags.
```html
<a href="https://en.wikipedia.org/wiki/Opuntia" target="_blank"><img src="#" alt="A red prickly pear fruit"/></a>
```
This is nesting an `<img>` element within an `<a>` element to make clickable links.  The `<a>` element can contain both inline and block-level elements, like `<h1>`.  But we don't want to nest `<li>` tags within an anchor.

## Linking to Same Page
Sometimes want users to click a link and auto scroll to specific section of same page. In order to do this, we neeed to link to a target and give the target an `id`.
```html
<p id="top">This is the top of the page!</p>
<h1 id="bottom">This is the bottom! </h1>
```
In this example, the paragrah element is assigned `id` "top" and `<h1>` is assigned "bottom".
```html
<ol>
  <li><a href="#top">Top</a></li>
  <li><a href="#bottom">Bottom</a></li>
</ol>
```
An `id` is especially helpful for organizing content belonging to a `<div>`.

## Whitespace
Programmers use two tools to visualize relationship between elements: whitespace and indentation.  Both take advantage of fact that position of elements on browser doesn't care about whitespace or indentation in code.

## Indentation
2 spaces for indentation in HTML.  Used to easily identify which elements are nested within other elements.

## Comments
Begin: `<!--`  
End: `-->`

## HTML Tags
- `<!DOCTYPE html>` declaration should always be first line of HTML file
- `<html>` element will contain all HTML code
- Meta data should always be within the `<head>` of the page
- You can add a title to a page with the `<title>` tag, title appears in browser tab
- `<a>` anchor tags are used to link 
- You can create sections on a webpage and jump to them using `<a>` tags and adding `id`'s to the elements you want to jump to.
- Whitespace in HTML elements helps make code easier to read while not changing behavior in browser
- Indentation also helps make code easier to read and makes parent-child relationships visible
- Comments are written with `<!--` and `-->` syntax
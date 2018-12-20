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
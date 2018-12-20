# Introduction to HTML

- Hyper Text Markup Language
- Markup = computer language that defines the structure and presentation of raw text

## Elements
`<p>Hello World</p>`
- Element: whole thing
  - A unit of content in an HTML doc formed by HTML tags and the text or media it contains
- Content: string hello world
- Opening tag: `<p>`
- Closing tag: `</p>`

## The Body
One of the key elements we use to build a webpage is the body element.  Only content inside the opening and closing body tags can be displayed to the screen.

## HTML Structure
HTML is organized as a colelction of family tree relationships.  When an element is contained inside another element, it is considered a *child* of that element.
  - Child element is said to be *nested* inside of the *parent* element.
  - Since there can be multiple levels of nesting, this analogy can be extended to grandchildren, great-grandchildren, etc.
  - Relationship between elements and their ancestor/descendent elements is known as *hierarchy*
  - Child elements can inherit behavior and styling from their parent element

## Headings
Headings in HTML are similar to headings in other types of media.  In HTML, there are six different headings, or *heading elements*.

They are listed `<h1>` through `<h6>` and ordered from largest to smallest in size.

## Divs
One of the most popular elements in HTML is the `<div>` element.  `<div>` is short for "division", or a container that divides the page into sections.  These sections are very useful for grouping elements in your HTML together.

Div's can contain any text or other HTML elements (links, images, videos, etc.).  Remember to always add two spaces of indentation when you enst elements inside of `<div>` tags for better readability.

    Question
    Adding <div> elements to our HTML document doesn’t seem to change anything on the page. What’s the point of nesting other elements within a <div>? Doesn’t this just increase the complexity of our HTML structure?

    Answer
    When using <div> tags as containers, it is true that our nesting might become more complex. However, the benefit is that if we create a thoughtful HTML structure we can more readily parse and target related content. In other words, there is often a trade-off between complexity and either readability or targetability. As developers, we want to find the right balance between creating enough coherent structure to enhance readability and targetability without venturing into “divitis 3.5k” territory.

## Attributes
If we want to expand an element's tag, we can do so using an *attribute*.  Attributes are content added to the opening tag of an element and can be used in several different ways, from providing information to changing styling.

Attributes are made up of the following two parts:
- the name of the attribute
- the value of the attribute

Any opening HTML tag can have an attribute.

One commonly used attribute is the `id`.  We can use the `id` attribute to specify different content (such as `<div>`s) and is really helpful when you use an element more than once.  `id`s have several different purposes in HTML.

When we add an `id` to a `<div>`, we place it in the opening tag.

```html
<div id="intro">
  <h1>Introduction</h1>
</div>
```

## Displaying Text
If you want to display text in HTML, you can use a *paragraph* or *span*
- Paragraphs `<p>` contain a block of plain text
- Spans `<span>` contains short pieces of text other than HTML- they are used to separate small pieces of content that are on the same line as other content.

```html
<div>
  <h1>Technology</h1>
</div>
<div>
  <p><span>Self-driving cars</span> are anticipated to replace up to 2 million jobs over the next two decades.</p>
</div>
```

In above example, there are two different `<div>`.  Second `<div>` contains a paragraph with `<span>self-driving cars</span>`.  This span element allows us to separate the string self-driving cars from the rest of the text in the paragraph, while keeping it inline.

It's best to use span elements to target a specific piece of content that is *inline*, and to divide your content in blocks using a `<div>`.

## Styling Text
You can also use HTML tags to style text.  the `<em>` tag emphasizes text, while `<strong>` highlights important text.
  - `<em>` will generally render as italic
  - `<strong>` will generally render as bold

## Line Breaks
Spacing between HTML code doesn't affect positioning of elements in browser. If you want to modify spacing in the browser, you can use HTML's line break element `<br>`.

`<br>` element is unique because it is only composed of a starting tag- there is no closing tag.

## Unordered Lists
In addition to organizing text in paragraph form, you can also display content in a list.

The `<ul>` tag is used to create a list of items in no particular order and outlines individual list items in bullet point form.

The `<li>` tag is used to describe  an item in the list.

## Ordered Lists
The `<ol>` tag represents ordered list tag- where every item is numbered.  Useful when you need to list different steps in a process or rank items from first to last.

## Images
The `<img>` tag allows you to add an image to a webpage.
```html
<img src="image-location.jpg" />
```
The `<img>` tag is self closing and the forward slash at the end is not necessary.
The `<img>` tag has a required attribute called `src`- which is the source, or location of image.  Value must be a URL of image.

## Image Alts
The `alt` attribute, which means alternative text, brings meaning to the images on our sites- used for assistive technologies such as screen readers.
```html
<img src="#" alt="A field of yellow sunflowers" />
```

The value of `alt` should be a description of the image.

Other purposes:
- if an image fails to load on a page, a user can mouse over area intended for image to get an idea of what was supposed to be there.
- Visually impaired users use screen readers
- `alt` attribute plays role in SEO because engines can't "see" the images on website as they crawl the internet.  Descriptive `alt`s is a plus.
 If it doesn't convey any meaningful info to a user then `alt` should be left empty.


## Videos
Like images, the `<video>` tag also requires a `src` attribute with a link to the video source.  `<video>` does require a closing tag, however.

```html
<video src="myVideo.mp4" width="320" height="240" controls>
  Video not supported
</video>
```

Videos require several attributes.
- Source
- Width
- height
- controls (pause, play, skip)

The text `Video not supported` will only be displayed when browser is unable to load the video.

## Review
1. HTML = HyperText Markup Language and is used to create structure and content of a webpage.
2. Most HTML elements contain opening and closing tags, with raw text of other HTML tags between them.
3. HTML elements can be nested inside other elements.  The enclosed element is the child of the enclosing parent element.
4. Any visible content should be placed within the opening and closing `<body>` tags.
5. Headings and sub-headings `<h1>` and `<h6>` are used to enlarge text.
6. `<p>`, `<span>`, and `<div>` tags specify text or blocks.
7. The `<em>` and `<strong>` tags are used for emphasis.
8. Line breaks are created with the `<br>` tag.
9. Ordered lists `<ol>` are numbered and Unordered `<ul>` are bulleted.
10. Images (`<img>`) and video (`<video>`) can be added by linking to an existing source.
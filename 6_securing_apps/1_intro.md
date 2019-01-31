# Introduction

- Part of reason many dev's prefer Sinatra over frameworks such as Rails is taht Sinatra is a smaller library.  Can be beneficial if you don't need all the functionality provided by Rails as there is less to learn and understand in order to be productive.

- Downside to smaller and simpler tools is they require you to do things manually that larger frameworks would do for you automatically- one such example is escaping HTML.

## Keeping HTML Safe

- Your app is only as secure as the code that is running in the browser when someone uses it.  Primarily, this code will be the HTML, CSS, and JavaScript you ahve created, in addition to third party libraries such as jQuery or analytics packages.

- The fact that webpages are building HTML dynamically means that there are lots of opportunities for someone to influence what code is written into the page.  If they are able to modify the code in the page, they have all the access they need to steal data or potentially credentials.


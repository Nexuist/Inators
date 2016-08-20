### Preamble

'Twas the morning of November 19th, 2015.

I was in school. Biotech.

We had a big project due on DNA. Part of it was to have some kind of interactive experience to guide the user through certain aspects of DNA: discovery, protein synthesis, recombination...

Guess who hadn't started?

Yup. From about 7:50 to 8:30AM, I worked intensely on writing the code below to make something presentable. Honestly, it came out better than expected. We were able to browse the page on an iPad and provide an above-average experience to our peers. As a result, we aced the project :)

Here's a screenshot:

![Page showing introduction](http://i.imgur.com/Y7OfnZ0.png)

I wanted to put this up for historical purposes, but also to demonstrate the power of using open-source tools to create professional(ish?) solutions really quickly.

### Standing On The Shoulders of Giants

On my short journey, there were a few tools I used to simplify the process. They are:

* [jade-server](https://github.com/ded/jade-server) - This tiny package lets you host `jade` files directly from the command line. Ideal for rapid prototyping while developing, and for providing a way to share your work across devices (such as the iPad we used) in a way that "just works."

* [jade](http://jade-lang.com/) - HTML for minimalists. A JavaScript templating engine with a simple but powerful and extensive syntax. In the site, I wrote a custom mixin named `media` to generate dynamic jade snippets to save even more time.

* [Bootstrap](http://getbootstrap.com/) - Probably the 2nd most attributable to our success, Bootstrap handles browser inconsistencies, layout, element styling, and a lot more. I could focus on researching the content and figuring out what it should look like, while Bootstrap did the heavy lifting behind the scenes.

* [Bootswatch](http://bootswatch.com/) - Stock Bootstrap is powerful, but the Web would be a very boring experience if every website looked exactly like stock Bootstrap. Bootswatch solves this problem by providing several themes to throw on top of Bootstrap to have a professional, semi-unique look while maintaining all of the flexibility that Bootstrap provides.

* [Wikipedia](https://en.wikipedia.org) - Our teacher was chill and let us use it, so we did (we cited it too!) I wanted to use this space to commend it again, as Wikipedia was the most attributable source to our success. Bootstrap made the content look pretty, but Wikipedia helped make the content. Wikipedia runs off the open source [MediaWiki](https://www.mediawiki.org/wiki/MediaWiki).

* [Chrome Developer Tools](https://developers.google.com/web/tools/chrome-devtools/) - Ideal for debugging, mobile simulation, real-time modification, etc.

### Conclusions

1. I should've probably done this at home.

2. I'm glad I didn't, because coding under pressure is actually kind of fun.

3. Jade + Bootstrap is a sweet front-end coding stack if you know how to use it.

4. Open source is a blessing.

Thanks for stopping by!

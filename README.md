## Git Word Processor (GWP)
GWP is an app in **very** preliminary development. I wrote a little about it on [Medium](https://medium.com/p/434abffc751f). Obviously, it needs a better name.

### Development Concept
Currently I envision GWP as an application written in HTML, CSS and JavaScript, and made available basically everywhere though software like PhoneGap, MacGap and others that wrap web technology apps for native platforms.

#### Problems With a Pure Web Application
[Draft](https://draftin.com/) is an unbelievably impressive and feature-complete word processing app. But I think one impediment to adoption is the inability of web apps to access the client's actual file structure. The [FileSystem API](http://www.html5rocks.com/en/tutorials/file/filesystem/) only allows you to read/write from a sandboxed file system that is somewhere deep in the program files labyrinth. Chrome Apps can navigate the complete file system, but obviously require Chrome. If you want to steal users from Word, letting them save and see their documents easily on their hard drive is a must.

People are use Google Docs because they trust that Google can reliably store and retrieve their document. Sure, you can download your document as a Word document, but then your workflow becomes forked. Then there's this ![Boooooo!](https://raw.github.com/git-word-processor/git-word-processor.github.io/master/img/app-unreachable.png)

So a web app can't save to a user's disk like Word, and doesn't have the implicit guarantee a name like Google brings, you're in a tough spot. And Google Docs requires a network connection anyway. There are third party native apps that integrate with Google Docs, but then you might as well just use Word and save to a Dropbox folder or something like that.

Finally, most writing web apps (with the notable exception of Google docs) present your content in a fluid content column. This is well suited for content that will appear on the internet. But many fields like academia, law, and government expect documents to be printed -- or be a PDF that resembles a printed document.

#### The Pledge
Edit and write text documents non-destructively. Painlessly revert to older versions or compare changes. Leave proprietary binary formats behind. Easily format your writing without leaving the keyboard. 

#### The Turn
Write in an intuitive, comfortable, distraction-free environment that defaults to a paginated, Word-like layout. No internet connection required.

#### The Prestige
Your documents, seamlessly committed to a Git repository, and synced to GitHub, available from anywhere.

### Roadmap
I personally have never built anything on this scale, so my current plan is to build a number of relatively trivial apps that explore a single part of this project (i.e. text editing, file system, Git, formatting tools, etc.) to get a handle on what building out a full prototype would entail, and maybe identify some early roadblocks or pitfalls early on. I have no idea what the timeframe is. Any and all collaborators are welcome. Open an issue on this repo or contact me on Twitter [@nickhbottomley](https://twitter.com/nickhbottomley).

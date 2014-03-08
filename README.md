# Git Word Processor (GWP)
GWP is an app in **very** preliminary development. I wrote a little about it on [Medium](https://medium.com/p/434abffc751f). Obviously, it needs a better name.

## Development Concept
Currently I envision GWP as an application written in HTML, CSS and JavaScript, and made available basically everywhere though software like PhoneGap, MacGap and others that wrap web technology apps for native platforms.

### Problems With a Pure Web Application
[Draft](https://draftin.com/) is an unbelievably impressive and feature-complete word processing app. But I think one impediment to adoption is the inability of web apps to access the client's actual file structure. The [FileSystem API](http://www.html5rocks.com/en/tutorials/file/filesystem/) only allows you to read/write from a sandboxed file system that is somewhere deep in the program files labyrinth. Chrome Apps can navigate the complete file system, but obviously require Chrome.

People are use Google Docs because they trust that Google can reliably store and retrieve their document. Sure, you can download your document as a Word document, but generally you would only do that when you either know you need to work on it without an internet connection, or need to submit it to someone in that format. 

So a web app can't save to a user's disk like Word, and doesn't have the implicit guarantee a name like Google brings, you're in a tough spot. Indeed, using Git under the hood requires quite a bit of file system and system access. Hence, a web technology app wrapped up as a native application.

## The Pledge
Edit and write text documents non-destructively. Painlessly revert to older versions or compare changes. Leave proprietary binary formats behind. Easily format your writing without leaving the keyboard. 

## The Turn
Write in an intuitive, comfortable, distraction-free environment that defaults to a paginated, Word-like layout. No internet connection required.

## The Prestige
Your documents, seamlessly committed to a Git repository, and synced to GitHub, available from anywhere.
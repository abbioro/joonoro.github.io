# A Theory of Bookmarks
*Nov 1, 2016*

My bookmarks menu used to be a huge mess, so being an engineer instead
of putting up with it I sat down one day and thought about bookmarks
for a while and came up with what I think is the *perfect* way to
organize them. It works by using a personal web archive to store what
I call *reference* bookmarks in PDF files, while stuff like your
favorite subreddit goes in the bookmarks bar.

## The Two Kinds of Bookmarks

The first step to fixing my bookmarks is that I realized that they can
be all be divided into two types:

1. Reference material
2. Non-reference material

Reference material is pages like blog posts and monad tutorials,
basically anything specific that you might want to read later. The
important about them is that they *rarely change*, so it makes sense
to archive them. Non-reference material is the opposite, they're sites
like your favorite subreddit or the front page of a blog and they
often change *daily*. They're pages that you visit every day to see
what's new.

## Why Bookmarks are a Bad Idea for Reference Material

Now that you understand what I mean by reference material, lets talk
about why bookmarks are a terrible way of organizing them:

1. They share space with non-reference bookmarks
2. They outnumber non-reference bookmarks by a huge margin
3. You only visit them a couple times a year
4. You have no guarantee that they will remain available

The first three reasons are why your bookmarks menu is a mess. You've
got a bunch of stuff you hardly ever visit and a few things you visit
every day in the *same place*. The fourth reason is why bookmarks for
reference material aren't even effective in the long run. You have no
guarantee that that handy git tutorial will be there in a year.

## Solving the Problem

The solution is to start maintaining a personal web archive. There's a
few ways to save web pages, but I prefer using Print-to-PDF, which is
usually just Ctrl-P (set the destination as PDF). I just save them to
`~/web` as A4 size pages. This gives me a single self-contained file
of the web page. Another thing I like to do is use a tool like
[pdfgrep](https://pdfgrep.org/) to search the entire archive.

## Conclusion

After I started doing this, I've managed to shrink my bookmarks down
to about 60 items. That's a lot better than the hundreds it used to
be, and they fit nicely into 7 folders. If you're willing to try out
my method, remember to backup your existing bookmarks by exporting
them to HTML before you start deleting them.

Good luck!

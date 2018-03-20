"Molokai"?  Like "Monokai"?
---------------------------

Indeed.  This color theme is based on Tomas Restrepo's [Molokai color
scheme for Vim](http://winterdom.com/2008/08/molokaiforvim), which is
based on a darker variant by Hamish Stuart Macpherson of the [Monokai
theme](http://www.monokai.nl/blog/2006/07/15/textmate-color-theme/) by
[Wimer Hazenberg](http://www.molokai.nl) for TextMate.


That means nothing to me.
-------------------------

Pretty colors.


Will it make things look funny?
-------------------------------

Probably not.  Maybe.  Keep reading.

Here are some things that *won't* look funny:
     
 * Font-lock (or "syntax highlighting", to sane people).
 * The mode-line and minibuffer.
 * Isearch.
 * Icomplete.
 * MuMaMo.
 * Outline-mode.
 * [Markdown-mode](http://jblevins.org/projects/markdown-mode/).
 * `diff`s.


Cool!  How do I use it?
-----------------------

Save the [color-theme-molokai.el](https://github.com/alloy-d/color-theme-molokai/blob/master/color-theme-molokai.el) file to
`YOUR_EMACS_PLUGIN_DIRECTORY`, then add the following to your `.emacs`:

    (load "~/YOUR_EMACS_PLUGIN_DIRECTORY/color-theme-molokai.el")
    (color-theme-molokai)


Do I need anything special?
---------------------------

Sure.  Emacs, of course (this was tested with GNU Emacs 23.1.1, but I imagine old version 22 releases would work, too).  You'll also need [color theme](http://www.emacswiki.org/emacs/ColorTheme) support.


This sucks!
-----------

My apologies!  If there's something you think should be better, please
[report it](../issues/new).  In particular, I'm sure it doesn't cover
all possible use cases: someone is bound to find something that isn't
themed and looks atrocious.  If you are that someone, please let me
know!

If the cool, dark background doesn't suit you, you might try the
warmer variant
[almost-monokai](http://github.com/lut4rp/almost-monokai/).


Anything else you want to tell me?
----------------------------------

It doesn't support `C-x M-c M-butterfly`.


Drat.  Can I fix that?
----------------------

Feel free!  In fact:

<pre>
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see &lt;http://www.gnu.org/licenses/&gt;.
</pre>

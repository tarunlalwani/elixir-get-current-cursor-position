## Get Cursor Position in Elixir

This is a proposed solution for below StackOverflow problem

https://stackoverflow.com/questions/46654611/get-cursor-position-in-command-line-elixir

To test it 

1. Clone the repo
2. Run `mix deps.get`
3. Run `mix escript.build`
4. Run `./cursorpos`

Below are all the references I used to come up with a solution

https://unix.stackexchange.com/questions/88296/get-vertical-cursor-position

https://stackoverflow.com/questions/2575037/how-to-get-the-cursor-position-in-bash

https://groups.google.com/forum/#!topic/elixir-lang-talk/9B1oe3KgjnE

https://hexdocs.pm/elixir/IO.html#getn/3

https://unix.stackexchange.com/questions/264920/why-doesnt-the-enter-key-send-eol

http://man7.org/linux/man-pages/man1/stty.1.html

https://github.com/jfreeze/ex_ncurses

https://stackoverflow.com/questions/35526014/how-can-i-get-the-cursors-position-in-an-ansi-terminal

https://stackoverflow.com/questions/39805210/get-console-user-input-as-typed-char-by-char

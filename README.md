# vim-verifast

Syntax highlighting for the [Verifast](https://github.com/verifast/verifast) programming language.

## Installation

Copy this package into your `.vim` directory, or use your `vim` plugin manager of choice.

Note that this package only detects `.gh` files as Verifast automatically- you don't necessarily want to apply Verifast syntax highlighting to every `.c` and `.h` file, after all.  Just invoke `:set filetype=verifast` on your file of choice.  (You can also add `au BufRead,BufNewFile *.c set filetype=verifast` to your `.vimrc` if you're bold.)

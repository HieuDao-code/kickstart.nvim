# Key bindings

- `<CR>` Enter
- `<M>` Meta (Alt)

## Information

- `<space>` leader key
- `:checkhealth [<pluginname>]` check base or plugin status
- `:checkhealth lsp` show details of LSP attached to buffer
- `:Lazy` show package manager UI
- `:Lazy profile` show startup time
- `:Mason` show Mason UI
- `:TSUpdate` update all Tree-sitter parsers
- `:ConformInfo` autoformatter information

## Working on text and code

#### <abbr title="blink.cmp">Autocomplete </abbr>

- `<C-space>` show Autocompletion manually
- `<CR>` select and accept
- `<C-p>` select previous
- `<C-n>` select next
- `<C-k>` select signature

#### <abbr title="conform.nvim">Autoformatter</abbr>

- `<leader>` format

#### Text editing

##### <abbr title="mini.ai">Around & Inside textobject</abbr>

- `a` around
- `i` inside
- `g[` goto start of `a` textobject
- `g]` goto end of `a` textobject

##### <abbr title="mini.move">Move selection </abbr>

Move selection in visual mode or current line

- `<M-h>` left
- `<M-j>` down
- `<M-k>` up
- `<M-l>` right

##### <abbr title="mini.surround">Surround</abbr>

- `ys{motion}{char}` add surrounding in Normal and Visual modes
- `ds{char}` delete surrounding
- `cs{target}{replacement}` replace surrounding
- `hs` highlight surrounding

- `l` suffix to search with "prev" method
- `n` suffix to search with "next" method

#### <abbr title="nvim-treesitter">Treesitter</abbr>

##### Incremental selection

- `<C-space>` init selection
- `<C-space>` node incremental
- `bs` node decremental

##### Textobjects

- `af` select outer part of a method/function definition
- `if` select inner part of a method/function definition
- `ac` select outer part of a class
- `ic` select inner part of a class

##### Swap with next object

- `<leader>na` swap parameter/argument with next
- `<leader>pa` swap parameter/argument with next
- `<leader>nm` swap function with next
- `<leader>pm` swap function with next

##### Move

- `]f` next method/function def start
- `]F` next method/function def end
- `]c` next class start
- `]C` next class end
- `]a` next parameter/arguement start
- `]A` next parameter/arguement end

- `[f` prev method/function def start
- `[F` prev method/function def end
- `[c` prev class start

- `[a` prev parameter/arguement start
- `[A` prev parameter/arguement end

#### <abbr title="snacks.zen">Zen mode</abbr>

- `<leader>z` toggle zen mode
- `<leader>Z` toggle zoom

#### <abbr title="todo-comments.nvim">TO-DO comments</abbr>

- `]t` move to next to-do comments
- `[t` move to previous to-do comments

#### LSP

#### Diagnostics

## Working with files and navigating between files

## Git Integration

## Miscellaneous

### <abbr title=""></abbr>

<!-- ## NAVIGATING -->
<!---->
<!-- ## Windows, splits & tabs -->
<!---->
<!-- - `Ctrl`+`wq` close window -->
<!-- - `Ctrl`+`ws` split window **horizontally** -->
<!-- - `Ctrl`+`wv` split window **vertically** -->
<!-- - `Ctrl`+`h/j/k/l` move between split windows -->
<!-- - `Ctrl`+`w=` equalize split window width and height -->
<!-- - `Ctrl`+`wr` swap position of two windows -->
<!-- - `Ctrl`+`wT` move active split window to new tab -->
<!-- - `gt` or `gT` switch forward/reverse between tabs -->
<!---->
<!-- ## Buffers -->
<!---->
<!-- - `leader`+`leader` lists open buffers in `snipe.nvim` -->
<!-- - In snipe.nvim popup: Hit `d` to close the selected buffer -->
<!-- - `:bd` close current buffer -->
<!-- - `:bn/p` go to next/previous buffer -->
<!---->
<!-- ## Text -->
<!---->
<!-- - `w/e` move to **start/end of next word** (ignores punctuation due to remap) -->
<!-- - `b` move to **start of previous word** (ignores punctuation due to remap) -->
<!-- - `0` start of line -->
<!-- - `$` end of line -->
<!-- - `Ctrl`+`d/u` scroll down/up 1/2 page while keeping the cursor centered -->
<!-- - `Ctrl`+`o` jump to location you were before (e.g. after using `gg`) -->
<!-- - `Ctrl`+`i` jump back to location you were before (after using `Ctrl`+`o`) -->
<!-- - `s<string>` highlight jump targets via `flash.nvim` -->
<!---->
<!-- ## LSP, Code & Diagnostics -->
<!---->
<!-- - `Ctrl`+`n/p` scroll down/up through LSP suggestions -->
<!-- - `K` show LSP context info -->
<!-- - `Ctrl`+`l` accept selected suggestion -->
<!-- - `gd` go to definition -->
<!-- - `gr` show references of function -->
<!-- - `grn` renames all refs of the symbol under cursor -->
<!-- - `leader`+`q` toggle `trouble.nvim` quickfix list -->
<!-- - `leader`+`da` go to next diagnostic (any severity) -->
<!-- - `leader`+`dw` go to next diagnostic (_warning_ severity) -->
<!-- - `leader`+`de` go to next diagnostic (_error_ severity) -->
<!---->
<!-- ## Telescope -->
<!---->
<!-- - `↓` or `Ctrl`+`n` scroll down (**n**ext) file list -->
<!-- - `↑` or `Ctrl`+`p` scroll up (**p**revious) file list -->
<!-- - `Ctrl`+`d/u` scroll down/up in preview pane -->
<!-- - `Ctrl`+`/` help -->
<!-- - `Ctrl`+`v` open file in **vertical** split -->
<!-- - `Ctrl`+`x` open file in **horizontal** split -->
<!-- - `Ctrl`+`t` open file in new tab -->
<!---->
<!-- ## Oil -->
<!---->
<!-- - `Ctrl`+`d/u` bottom/top of file list -->
<!-- - `Ctrl`+`p` preview file -->
<!-- - `Ctrl`+`v` open file in **vertical** split -->
<!-- - `Ctrl`+`x` open file in **horizontal** split -->
<!-- - `Ctrl`+`t` open file in new tab -->
<!---->
<!-- ## EDITING -->
<!---->
<!-- ### Code editing -->
<!---->
<!-- - `leader`+`o` re-format whole file or visual w/ `conform.nvim` -->
<!-- - `i` insert mode at cursor position -->
<!-- - `I` insert mode at **beginning of line** -->
<!-- - `a` insert mode **after the current char** -->
<!-- - `A` insert mode at **end of line** -->
<!-- - `o` insert mode a line **below** the cursor -->
<!-- - `O` insert mode a line **above** the cursor -->
<!-- - `cw` replace the current word -->
<!-- - `cc` replace whole line -->
<!-- - `C` replace to the end of the line -->
<!-- - `yy` copy the current line -->
<!-- - `yap` "yank-around-paragraph" -->
<!-- - `yip` "yank-inside-paragraph" -->
<!-- - `yaW` copy word w/ dashes/underscores -->
<!-- - `p/P` paste yanked line below/above -->
<!-- - `:windo diffthis` open `vimdiff` for open splits -->
<!-- - `:vert diffsplit <other/file>` diff this file and `<other/file>` -->
<!-- - `:windo diffoff` to close diff view -->
<!---->
<!-- ## SELECTING -->
<!---->
<!-- ### Visual mode -->
<!---->
<!-- - `v` at cursor position -->
<!-- - `V` line mode -->
<!-- - `Ctrl`+`v` block mode -->
<!-- - `vap` "visual-select-around-paragraph" -->
<!-- - `vip` "visual-select-inside-paragraph" -->
<!---->
<!-- ### Code selection -->
<!---->
<!-- - `Ctrl`+`leader` context-sensitive text selection w/ Tree-sitter -->
<!-- - `Backspace` reduce context-sensitive selection -->
<!---->
<!-- ## SEARCH/OPEN -->
<!---->
<!-- - `leader`+`fg` search text in files (also searches for text under cursor) -->
<!-- - `leader`+`ff` search files (respects `.gitignore`) -->
<!-- - `leader`+`e` toggle Oil file explorer -->
<!-- - `leader`+`fo` recently opened files -->
<!-- - `gf` open file under cursor in a new buffer -->
<!-- - `gx` open link under cursor in default browser -->
<!-- - `*` search word under cursor -->

-- TODO this should be done soon

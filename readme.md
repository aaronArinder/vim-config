## Setup
### Prerequisites
- `mkdir undodir` within `.vim`

###
- `:PlugInstall` to install plugins
## Remappings
- `jj` acts as ESC
- <shift-K> shows documentation of a symbol, such as TypeScript typings or JSDoc comments
- `gd` goes to a symbol's definition
- `gy` goes to a symbol's type definition
- `gi` goes to a symbol's implementation
- `gr` goes to a symbol's references
- `gb` goes back to the most recent file
- `ctrl-j` opens a journal (make sure `~/notes` exists)
- `ctrl-n` opens `notes.txt` in whatever directory you opened vim in
    - useful for taking on-the-fly repo notes
- `ctrl-o` opens netrw, based on this excellent [blog post](https://shapeshed.com/vim-netrw/)

## Auto Commands and Automatic Features
- Whitespace is removed on `:w`
- Prettier runs on `:w` for those filetypes in in `coc-settings`'s `formatOnSaveFiletypes`.


## Manual Commands
- `FormatJSON` formats JSON files with a Python's [json.tool](!https://docs.python.org/3/library/json.html#module-json.tool).


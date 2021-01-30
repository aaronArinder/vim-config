# Vim
This vim config was started when I didn't know much about setting one up (spoiler: I still don't know much about setting one up), but it's slowly taking shape into something respectable.

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

## Auto Commands and Automatic Features
- Whitespace is removed on `:w`
- Prettier runs on `:w`, but only for TypeScript files

## Manual Commands
- `FormatJSON` formats JSON files with a Python's [json.tool](!https://docs.python.org/3/library/json.html#module-json.tool).
-



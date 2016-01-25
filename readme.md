Installation:

	git clone git://github.com/yizaiwu/dotvim.git ~/.vim

Create symlinks:

	ln -s ~/.vim/vimrc ~/.vimrc
	ln -s ~/.vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory, and fetch submodules:

	cd ~/.vim
	git submodule init
	git submodule update

---

### Shortcut, 快速鍵
```
F2 = TaskList
F3 = NERDTree（ ,t = open nerdtree with the current file selected )
F4 = Tagbar
F5 = Dbg over
F6 = Dbg into
F7 = Dbg out
F8 = Dbg here
F9 = Dbg break
F10 = Dbg watch
F11 = Dbg down
F12 = Dbg up
```

* **Pending tasks browser** pressing ``F2``. This reads the current file searching for comments that start with "TODO", "FIXME", and such, and shows them on a list that allows navigation similar to the class browser.

* **Classes/module browser**
Tagbar(Class browser) 可以列出程式中的函數、變數列表，方便我們瀏覽。Using Tagbar that lists classes, functions, methods, and such of the current file, and navigates to them when ENTER is pressed. Toggle it with ``F4``.

### Under normal mode
```
:wq             - save and quit
i               - insert
x VIM           - delete character
dd              - delete line, copied in clipboard
p               - paste
y               - copy
:help <command> - look up help doc
:?<pattern>     - search backward
:Explore        - file explore
```

### Python-mode
```
\r = 執行，Run the curren python file and display the output on a split
\b = 除錯，設定中斷點，Insert and remove ipdb breakpoints
K = Query PyDoc. 查詢，查詢目前Statement使用方式，Search and read python documentation with the :PymodeDoc command. Example: :PymodeDoc collections / :PymodeDoc print(also works over the current word with vim's default help keybinding: Shift-K).
,d / Ctrl+C,g = 移動到定義(函數、class），Go to definition (<C-c>g for :RopeGotoDefinition)
:PymodeLintAuto = Autofix PEP8 errors
```

* **Error checking of code** using Syntastic (it will detect unused variables or imports, syntax errors, and such), for several languages, highlighting the errors and warnings in the code. You can open an errors list with ``\e``. In python, the error checking includes **pep8** validation, and **pylint**.(``:Errors`` show list of errors and warnings on the current file.)

### move effeciently between splits
```
gh  = <C-w>h（左)
gj = <C-w>j（下)
gk = <C-w>k（上)
gl = <C-w>l（右)
```

### Bash like keys for the command line
```
<C-A>      <Home>
<C-E>      <End>
<C-K>      <C-U>
```

### tab navigation mappings
```
tn = tabn
<C-S-Right> = tabn
tp = tabp
<C-S-Left> = tabp
tm = tabm
tt = tabnew
ts = tab split
```

### navigate windows with meta+arrows
```
<M-Right> = <c-w>l
<M-Left> = <c-w>h
<M-Up> = <c-w>k
<M-Down> = <c-w>j
<M-Right> = <ESC><c-w>l
<M-Left> = <ESC><c-w>h
<M-Up> = <ESC><c-w>k
<M-Down> = <ESC><c-w>j
```

### old autocomplete keyboard shortcut (omnifunc?)
```
<C-J> = <C-X><C-O>
```

### CtrlP: Fuzzy file, code and command finder (like Textmate or Sublime Text 2)
* ``,e`` = file finder mapping, open file (like the original :e) but with recursive and fuzzy file name matching. Example: if you type "mopy" it will find a file named "models.py" placed on a subdirectory. And allows you to open the selected file on a new tab with ``Ctrl-t``!
  * ``,g`` = fuzzy symbol finder (classes, methods, variables, functions, ...) on the current file. Example: if you type "usr" it will find the User class definition on the current file. ``,G`` does the same but on all opened files. (,g: tags (symbols) in current file finder mapping)(,G: tags (symbols) in all files finder mapping)
  * ``,c`` = commands finder mapping, fuzzy command finder (internal vim commands, or custom commands). Example: if you type "diff" it will find ``:GitDiff``, ``:diffthis``, and many other similar commands.
  * ``,f`` = general code finder in all files mapping, fuzzy text finder on all the opened files. Example: if you type "ctm=6" it will find the line containing "current_time = 16".
  * ``,m`` = recent files finder mapping, fuzzy finder of most recently used files.
  * ``,we``, ``,wg``, ``,wc``, ``,wf`` and ``,wm`` = same as ``,e``, ``,g``, ``,c``, ``,f`` and ``,m`` but initiate the search with the word under the cursor (also the upper case version of ``,G``, ``,wG``). Is useful to think about the ``,wg`` as a "fuzzy go to definition" (if the definition is in the same file, or ``,wG`` if the definition is on any of the opened files).(same as previous mappings, but calling with current word as default text)
  * ``,pe`` = same as ``,e`` but initiates the search with the path under the cursor.

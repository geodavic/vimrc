syntax on
set autoindent

"---------Navigation and Msc ----------

"navigation
map \ 5k
map ] 5j
map 1 $
noremap a $
map <C-\> G 20o
map `` ``10j10k

"obfuscate
map <C-o> ggvGg?``

"show line numbers
map <Tab> :windo set invnumber<CR>


"---------Tabs and mouse---------------

"tabs and mouse
set tabstop=4
autocmd Filetype cpp setlocal tabstop=2
set hlsearch
set mouse=a
let loaded_matchparen=1

"temp for files using spaces over tabs
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab


"--------------LaTeX------------------

"tex compiling
autocmd FileType tex setlocal makeprg=pdflatex\ --shell-escape\ '%' 
"compile bind (only compile with .tex files)
"au FileType tex map <buffer>= :w<CR>:silent !pdflatex %<CR>:!open -a Skim -g %<.pdf<CR> 
au FileType tex map <buffer>= :w<CR>:silent !pdflatex %<CR> <Tab> <Tab>
au FileType tex map <buffer>- :!open -a Skim -g %<.pdf<CR> <CR>
"map = :w<CR>:silent !pdflatex %<CR>:!open -a Skim -g %<.pdf<CR> 

"tex macros
au FileType tex map <C-p> :normal i\begin{center}\includegraphics[width=0.5\textwidth]{}\end{center}<CR>
au FileType tex map <C-c> :normal i\colorbox{lightgray}{\parbox{17.3cm}{{\small \lstinputlisting[language=Python]{code.py}}}}<CR>
au FileType tex map <C-l> :normal i\item[{\bf a)}] <CR> ka3h


"--------------plugins------------------

"indentLine
"set conceallevel=1
let g:indentLine_conceallevel=1
let g:indentLine_char = '▏'
let g:tex_conceal = ""
set backspace=indent,eol,start

"NERDTree
map <C-n> :NERDTreeToggle<CR>

"--------Spelling and Shortcuts---------

iab funciton function
iab directoin direction
iab consturction construction
iab tidle tilde
iab chian chain
iab ahve have
iab adn and
iab teh the
iab hte the
iab tehn then
iab beign begin
iab lenght length
iab Schrodinger Schr\"{o}dinger
iab Mobius M\"{o}bius
iab Kunneth K\"{u}nneth
iab Poincare Poincar\'{e}
iab Cech \v{C}ech
iab equaiton equation
iab yeild yield
iab yeilds yields
iab schx Schwarzschild
iab gtx Grothendieck
iab Kahler K\"{a}hler
iab Legendiran Legendrian
iab ofr for
iab Grobner Gr\"{o}bner
iab Plucker Pl\"{u}cker

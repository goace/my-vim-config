  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  "     FileName: .vimrc
  "         Desc: 
  "       Author: Ace
  "        Email: goace@acm.org
  "     HomePage: http://www.goace.co.cc
  "      Version: 0.0.1
  "   LastChange: 2011-05-16 21:17:45
  "      History:
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " 一般设定
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " 设定默认解码
  set fenc=utf-8
  set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936

  " 显示行号
  set nu

  " 设置配色
  set t_Co=256
  color molokai 

  set guifont=Monaco:h12

  " 不要使用vi的键盘模式，而是vim自己的
  set nocompatible

  " history文件中需要记录的行数
  set history=100
 
  " 在处理未保存或只读文件的时候，弹出确认
  set confirm
 
  " launch pathogeen
  execute pathogen#infect()

  " 侦测文件类型
  filetype on
  au BufNewFile,BufRead *.py,*.pyw setf python
 
  " 载入文件类型插件
  filetype plugin on
 
  " 为特定文件类型载入相关缩进文件
  filetype indent on
 
  " 保存全局变量
  set viminfo+=!
 
  " 带有如下符号的单词不要被换行分割
  set iskeyword+=_,$,@,%,#,-
 
  " 语法高亮
  syntax on
 
  " 高亮字符，让其不受100列限制
  :highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white
 
  " 状态行颜色
  highlight StatusLine guifg=SlateBlue guibg=Yellow
  highlight StatusLineNC guifg=Gray guibg=White
 
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " 文件设置
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " 不要备份文件（根据自己需要取舍）
  set nobackup
 
  " 不要生成swap文件，当buffer被丢弃的时候隐藏它
  setlocal noswapfile
  set bufhidden=hide
 
  " 字符间插入的像素行数目
  set linespace=0
 
  " 增强模式中的命令行自动完成操作
  set wildmenu
 
  " 在状态行上显示光标所在位置的行号和列号
  set ruler
  set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)
 
  " 命令行（在状态行下）的高度，默认为1，这里是2
  set cmdheight=2
 
  " 使回格键（backspace）正常处理indent, eol, start等
  set backspace=2
 
  " 允许backspace和光标键跨越行边界
  set whichwrap+=<,>,h,l
 
  " 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
  set mouse=a
  set selection=exclusive
  set selectmode=mouse,key
 
  " 启动的时候不显示那个援助索马里儿童的提示
  set shortmess=atI
 
  " 通过使用: commands命令，告诉我们文件的哪一行被改变过
  set report=0
 
  " 不让vim发出讨厌的滴滴声
  set noerrorbells
 
  " 在被分割的窗口间显示空白，便于阅读
  set fillchars=vert:\ ,stl:\ ,stlnc:\
 
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " 搜索和匹配
  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
  " 高亮显示匹配的括号
  set showmatch
 
  " 匹配括号高亮的时间（单位是十分之一秒）
  set matchtime=1
 
  " 在搜索的时候忽略大小写
  set ignorecase
 
  " 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
  set incsearch
 
  " 输入:set list命令是应该显示些啥？
  set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$
 
  " 光标移动到buffer的顶部和底部时保持3行距离
  set scrolloff=3
 
  " 不要闪烁
  set novisualbell
 
  " 我的状态行显示的内容（包括文件类型和解码）
  set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")}
 
  " 总是显示状态行
  set laststatus=2
 
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " 文本格式和排版
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " 自动格式化
  set formatoptions=tcrqn
 
  " 继承前一行的缩进方式，特别适用于多行注释
  set autoindent
 
  " 为C程序提供自动缩进
  "set smartindent
  set expandtab 
 
  " 使用C样式的缩进
"  set cindent
 
  " 制表符为4
  set tabstop=4
 
  " 统一缩进为4
  set softtabstop=4
  set shiftwidth=4
 
  " 不要用空格代替制表符
  "set noexpandtab
 
  " 不要换行
  set nowrap
 
  " 在行和段开始处使用制表符
  set smarttab
 
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Taglist的设定
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " 按照名称排序
  let Tlist_Sort_Type = "name"

  " 设定ctags目录
  let Tlist_Ctags_Cmd = "/usr/local/bin/ctags"
 
  " 压缩方式
  let Tlist_Compart_Format = 1
 
  " 如果只有一个buffer，kill窗口也kill掉buffer
  let Tlist_Exist_OnlyWindow = 1
 
  " 关闭其他文件的tags
  let Tlist_File_Fold_Auto_Close = 1 

  " 不要显示折叠树
  let Tlist_Enable_Fold_Column = 0

  " 设置全局tags
  set tags+=/usr/include/tags

  set updatetime =1000

  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Autocommands
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " 能够漂亮地显示.NFO文件
  set encoding=utf-8
  function! SetFileEncodings(encodings)
      let b:myfileencodingsbak=&fileencodings
      let &fileencodings=a:encodings
  endfunction
  function! RestoreFileEncodings()
      let &fileencodings=b:myfileencodingsbak
      unlet b:myfileencodingsbak
  endfunction
  au BufReadPre *.nfo call SetFileEncodings('cp437')|set ambiwidth=single 
  au BufReadPost *.nfo call RestoreFileEncodings()

  " 高亮显示普通txt文件（需要txt.vim脚本）
  au BufRead,BufNewFile *  setfiletype txt

  " 用空格键来开关折叠
  set foldenable
  set foldmethod=manual
  nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

  " minibufexpl插件的一般设置
  let g:miniBufExplMapWindowNavVim = 1
  let g:miniBufExplMapWindowNavArrows = 1
  let g:miniBufExplMapCTabSwitchBufs = 1
  let g:miniBufExplModSelTarget = 1

  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Plugins 
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " WinManager
  let g:winManagerWindowLayout='FileExplorer|TagList'
  nmap wm :WMToggle<cr>

  " tagbar
  nmap tb :TagbarToggle<CR>
  let g:tagbar_width = 40
  let g:tagbar_left = 1

  " Authorinfo
  let g:vimrc_author='Ace' 
  let g:vimrc_email='madaokuan@gmail.com' 
  let g:vimrc_homepage='http://orzace.com' 
  nmap <F4> :AuthorInfoDetect<cr>

  " DoxygenToolkit
  let g:DoxygenToolkit_briefTag_pre="function   : " 
  let g:DoxygenToolkit_paramTag_pre="parameters : " 
  let g:DoxygenToolkit_returnTag="return     : " 
  let g:DoxygenToolkit_blockHeader="---------------------------------------------------------------"
  let g:DoxygenToolkit_blockFooter="---------------------------------------------------------------"
  nmap <F5> :Dox<cr>

  " setting for omnicppcomplete
  set nocp

  " 下面的设置用于当用户预先声明namespace时也能自动补全代码（如使用using std::string） 
  let OmniCpp_DefaultNamespaces = ["std"]

  " 键位映射 
  nmap q  <S-^>
  nmap w  <S-$>
  nmap tt :TlistToggle<CR>
  vmap z \cc
  vmap x \cu

  " pydiction
  "set omnifunc=pythoncomplete#Complete
  let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
  let g:pydiction_menu_height = 20

  " 对齐线
  let g:indentLine_char = '┆'
  let g:indentLine_color_term = 8 

  " highlight current column
  nmap dq :call SetColorColumn()<CR>
  function! SetColorColumn()
      let col_num = virtcol(".")
      let cc_list = split(&cc, ',')
      if count(cc_list, string(col_num)) <= 0
          execute "set cc+=".col_num
      else
          execute "set cc-=".col_num
      endif
  endfunction

  " powerline
  let g:Powerline_symbols = 'fancy'

  " rainbow parentheses
  " color name: http://linguistics.berkeley.edu/~rscook/socrates/public_html/html/colors/hexcolor0.html
  let g:rainbow_active = 1
  let g:rainbow_operators = 2
  let g:rainbow_guifgs = ['HotPink2', 'DarkOrange', 'yellow', 'turquoise', 'DarkSlateGray2', 'DeepSkyBlue1', 'purple']

  " js and html indent 
  let g:html_indent_inctags = "html,body,head,tbody"
  let g:html_indent_script1 = "inc"
  let g:html_indent_style1 = "inc"
  au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

  " settings for mvim
  set guioptions-=L
  set guioptions-=r
  set guioptions-=T
  "set ambiwidth=double

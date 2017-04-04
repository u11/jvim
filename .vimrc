execute pathogen#infect()  
" About NERDTree  
noremap :NERDTreeToggle  
autocmd vimenter * if !argc() | NERDTree | endif  "open a NERDTree automatically when vim starts up if no files were specified  
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif  )"
" TagBar 自动生成参数和方法  
" Then the F8 key will toggle the Tagbar window.  
nmap :TagbarToggle 
"syntastic 保存检查代码时候传入参数  
let g:syntastic_java_javac_args="-cp ../../lib:../../bin -sourcepath ../../bin -Djava.ext.dirs=../../lib -d ../../bin"
" 关于Java自动文件补全插件  
autocmd Filetype java set omnifunc=javacomplete#Complete  
autocmd Filetype java set completefunc=javacomplete#CompleteParamsInf  
inoremap  
inoremap  
" 在VIM编辑java文件时当敲入 . 时会出发  
autocmd Filetype java,javascript,jsp inoremap   .  .  
autocmd Filetype java,javascript,jsp inoremap   .  .  
" 一键编译java文件  
map <F5>:!cd %:p:h && java -cp ../../bin -Djava.ext.dirs=../../lib %:p:h:t.%:p:t:r  
map <F4>:!cd %:p:h && javac -cp ../../lib:../../bin -sourcepath ../../bin -Djava.ext.dirs=../../lib -d ../../bin *.java

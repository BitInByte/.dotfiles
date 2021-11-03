fun! JavacCompile()
  execute 'echo "Starting compiling, please wait..."'
  "echo getcwd()
  "execute 'cd ./src'
  "echo getcwd()
  "execute 'javac --class-path . com/company/Main.java -verbose -d ../output/production/'
  execute '!find . -name "*.java" -print | xargs javac -verbose -d ./output/production/'
  "execute 'cd ..'
endfun

"nnoremap <leader>k :call JavacCompile()<CR>

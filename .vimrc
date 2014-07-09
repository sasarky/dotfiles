set runtimepath+=~/.vim/

let filelist = split(glob("~/.vim/inits/*"), "\n")
for file in filelist
  " ここもうちょっとスマートにかけないかな
  execute ':source ' . file
endfor

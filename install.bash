for f in `ls -a --ignore='\.' --ignore='\.\.' --ignore='.git*' --ignore='install.bash'`;
do
  ln -s ${PWD}/${f} ~/${f}
done

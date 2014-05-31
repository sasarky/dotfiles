for f in `ls -a --ignore='\.' --ignore='\.\.' --ignore='.git*' --ignore='install.sh'`;
do
  ln -s ${PWD}/${f} ~/${f}
done

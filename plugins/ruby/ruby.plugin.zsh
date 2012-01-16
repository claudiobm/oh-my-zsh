# TODO: Make this compatible with rvm.
#       Run sudo gem on the system ruby, not the active ruby.
alias sgem='sudo gem'

# Find ruby file
alias rfind="find . -name '*.rb' | xargs grep -n"

function cpex(){
  FILE=$(echo $1 | sed -e "s/\.example//")
  cp -rf $1 $FILE
}

echo "It looks like you have been using the 'rails3' plugin,"
echo "which has been deprecated in favor of a newly consolidated 'rails' plugin."
echo "You will want to modify your ~/.zshrc configuration to begin using it."
echo "Learn more at https://github.com/robbyrussell/oh-my-zsh/pull/2240"
# Rails 3 aliases, backwards-compatible with Rails 2.

function _rails_command () {
  if [ -e "script/server" ]; then
    ruby script/$@
  else
    if [ -e "bin/rails" ]; then
      bin/rails $@
    else
      rails $@
    fi
  fi
}

alias rc='_rails_command console'
alias rd='_rails_command destroy'
alias rdb='_rails_command dbconsole'
alias rdbm='rake db:migrate db:test:clone'
alias rg='_rails_command generate'
alias rgm='_rails_command generate migration'
alias rp='_rails_command plugin'
alias ru='_rails_command runner'
alias rs='_rails_command server'
alias rsd='_rails_command server --debugger'
alias devlog='tail -f log/development.log'
alias testlog='tail -f log/test.log'
alias prodlog='tail -f log/production.log'
alias rdm='rake db:migrate'
alias rdr='rake db:rollback'
alias rspec_exec='RAILS_ENV=test bundle exec rake db:migrate && bundle exec rspec spec'

alias -g RET='RAILS_ENV=test'
alias -g REP='RAILS_ENV=production'
alias -g RED='RAILS_ENV=development'

alias rspec_exec='RAILS_ENV=test bundle exec rake db:migrate && bundle exec rspec spec'

function reload_folder() {
  cd ../
  cd +1
}

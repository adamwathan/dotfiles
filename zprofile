export PATH=/usr/local/bin:/usr/local/sbin:"/Applications/MAMP/bin/php/php5.4.4/bin":~/.composer/vendor/bin:"./vendor/bin":"./node_modules/.bin":~/AndroidSDK/sdk/platform-tools:~/AndroidSDK/sdk/tools:$PATH

alias getcomposer='curl -sS https://getcomposer.org/installer | php'
alias getlaravel='git clone git@github.com:laravel/laravel.git'
alias twt='cd ~/Development/Personal/gpug-laravel/tweeter'
alias codecept='vendor/bin/codecept'
alias link-mamp='sudo ln -s /Applications/MAMP/tmp/mysql/mysql.sock /tmp/mysql.sock'

alias t="phpunit"
alias ts="phpunit --testsuite="


alias artisan='php artisan'
alias migmake='php artisan migrate:make'
alias migrate='php artisan migrate:refresh --seed'

alias srv="php artisan serve"
alias dump="composer dump-autoload"
alias cg="coffeegulp"

alias s.='subl .'
alias killaudio="sudo kill -9 `ps ax|grep 'coreaudio[a-z]' |awk '{print $1}'`"

alias cpssh="pbcopy < ~/.ssh/id_rsa.pub"

alias ssh-do='ssh root@192.241.139.156'
alias vsh='vagrant ssh'
alias vup='vagrant up'
alias vdown='vagrant halt'
alias vdes='vagrant destroy'

alias cpx='cd cpx/yb2/backend/api/prod/laravel'

alias gs='git status'
alias gc='git commit'
alias gcam='git commit -am'
alias gp='git push'
alias gpu='git push -u origin $(current_branch)'
alias gl='git log'
alias gpl='git pull'
alias pull='git pull'
alias gaa='git add --all :/'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gb="git branch"
alias gba="git branch -a"
alias rst="git reset --hard"
alias gf="git fetch"
alias gbd="git branch -d"
alias gbD="git branch -D"

alias ctags="`brew --prefix`/bin/ctags"
alias zpro='vim ~/.zprofile && source ~/.zprofile'


function vhost() {
   echo "192.168.33.10 $1" >> /etc/hosts 
}


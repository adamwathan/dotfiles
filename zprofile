export PATH=~/.phpenv/bin:"./vendor/bin":/usr/local/bin:/usr/local/sbin:~/.composer/vendor/bin::"./node_modules/.bin":~/AndroidSDK/sdk/platform-tools:~/AndroidSDK/sdk/tools:$PATH

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
alias add-spacer="defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="'"''spacer-tile";}'"'"

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
alias gcup='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'

function gpu() {
	local remote=origin
	if [ $# = 1 ]; then
		local remote=$1
	fi
	git push -u $remote $(current_branch)
}

function gtd() {
	local remote=origin
	if [ $# = 2]; then
		local remote=$2
	fi
	git tag -d $1
	git push $2 :refs/tags/$1
}

function prq() {
	gaa
	gcam $1
	gpu
	hub pull-request -m $1 | pbcopy
}

alias ctags="`brew --prefix`/bin/ctags"
alias zpro='vim ~/.zprofile && source ~/.zprofile'

alias be="bundle exec"

alias hs="homestead"

function vhost() {
   echo "192.168.33.10 $1" >> /etc/hosts
}

function gitty() {
  git push
}

function scublish() {
    sculpin generate --env=prod
    cd output_prod
    git add --all
    git commit -am "$1"
    git push origin master
    cd ..
}

eval "$(phpenv init -)"



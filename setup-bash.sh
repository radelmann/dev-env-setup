# create sublime sym link
ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin/sublime

# append bash_profile_ra.txt -> ~/.bash_profile
cat bash_profile_ra.txt >> ~/.bash_profile

# git aliases & config settings
git config --global core.autocrlf input
git config --global core.safecrlf true

git config --global alias.co "git checkout"
git config --global alias.ci "git commit"
git config --global alias.st "git status"
git config --global alias.br "git branch"

git config --global alias.hist "log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
git config --global alias.type "cat-file -t"
git config --global alias.dump "cat-file -p"
git config --global alias.lol "log --graph --decorate --pretty=oneline --abbrev-commit --all"

# copy sublime snippets
cp sublime-snippets/* ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/

# create node build system for sublime
cp node.sublime-build ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/node.sublime-build

ECHO 'Done :-)'

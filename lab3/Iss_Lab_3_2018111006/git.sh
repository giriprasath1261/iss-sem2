git init giri
cd giri
touch foo.txt
git add foo.txt
git commit -m "made foo"
git checkout -b new
touch bar.txt
git add bar.txt
git commit -m "made bar"
git checkout master
git merge new

git clone https: //github.com/Georg360/Georg360.git
touch foo.txt
git add foo.txt
git commit -m "made foo.txt"
git checkout -b new
touch bar.txt
git add bar.txt
git commit -m "made bar.txt"
git checkout master
git merge new
git push --set-upstream origin new

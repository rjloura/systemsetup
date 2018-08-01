sudo apt-get install $(cat packages | tr "\n" " ")

echo "set -o vi" >> ~/.bashrc
echo "export PATH=$PATH:~/scripts:~/bin"
echo "export PAGER=less"



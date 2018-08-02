echo "#################################"
echo "######Installing Packages########"
echo "#################################"
./install_packages.sh
echo "############## Done #############"


echo "set -o vi" >> ~/.bashrc
echo "export PATH=$PATH:~/scripts:~/bin" >> ~/.bashrc
echo "export PAGER=less" >> ~/.bashrc

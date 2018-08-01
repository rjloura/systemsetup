alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias acs='apt-cache search'
alias shpkg='apt-cache showpkg'
alias gimme='sudo apt-get install'
alias sshnas='ssh root@nas'
alias vi='vim'
alias murder='kill -9'
alias scpr='rsync -P --rsh=ssh'
alias make="make -j $(cat /proc/cpuinfo | grep processor |wc -l)"
alias sshrothbard='ssh rui@rothbard'
alias sshspooner='ssh rui@spooner'
alias sshmac='ssh mac'
alias sshcoal='ssh mac -t "ssh root@coal"'
alias umountnas='sudo umount /mnt/nas'
alias gencscope='cscope -R' # Generates the cross reference
alias gentags='ctags -R *' # Generates ctags
alias goscope='cscope -d' # starts cscope with an existing cscope.out
alias rothbardupdate="ssh -t rothbard 'export PATH=$PATH:~/scripts/; goupgrade'"
alias spoonerupdate="ssh -t spooner 'export PATH=$PATH:~/scripts/; goupgrade'"
alias llh='ls -lh'
alias t='triton'
alias th='thoth'
alias signthis='msign -e $(date -d "5 days" "+%s")'
alias mountnas='sudo mount -t nfs nas:/nfsshare /mnt/nas'


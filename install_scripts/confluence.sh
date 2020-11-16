#https://www.atlassian.com/hu/software/jira/download
#https://confluence.atlassian.com/adminjiraserver/installing-jira-applications-938846823.html
#https://confluence.atlassian.com/adminjiraserver/unattended-installation-938846846.html

#todo Sync CONFLUENCE value with ../start.cmd
CONFLUENCE=atlassian-confluence-7.4.5-x64.bin
yum install -y java-1.8.0-openjdk-devel
java -version
cd /tmp
chmod +x $CONFLUENCE
sudo ./$CONFLUENCE -q -varfile response.varfile


#firewall-cmd --permanent --add-port=8090/tcp
#firewall-cmd --reload
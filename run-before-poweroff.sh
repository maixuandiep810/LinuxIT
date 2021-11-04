echo "start"
echo "stop mssql"
sudo systemctl stop mssql-server
sudo systemctl status mssql-server
echo "end"

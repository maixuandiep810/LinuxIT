echo "start"
echo "restart mssql"
sudo systemctl restart mssql-server
sudo systemctl status mssql-server
echo "end"

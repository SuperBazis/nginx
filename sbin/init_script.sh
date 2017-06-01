[Unit]
Description=The NGINX HTTP and reverse proxy server
After=syslog.target network.target remote-fs.target nss-lookup.target
[Service]
Type=forking
PIDFile=/home/Aleh_Tsuranau/nginx/logs/nginx.pid
ExecStartPre=/home/Aleh_Tsuranau/nginx/sbin/nginx -t
ExecStart=/home/Aleh_Tsuranau/nginx/sbin/nginx
ExecReload=/bin/kill -s HUP $MAINPID
ExecStop=/bin/kill -s QUIT $MAIN
PIDPrivateTmp=true
[Install]
WantedBy=multi-user.target

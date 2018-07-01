Для разворачивания пакетов при старте инстанса, используем скрипт https://gist.githubusercontent.com/greates2/96efb41dfcc373afbe2eca12a721cd25/raw/4d2b3a1e54b6d50d24411ed7f9972f6b9cbca6f9/startup-script

Прописываем его при создание инстанса, указываем дополнительный параметр команды gcloud:
--metadata startup-scripts='wget https://gist.githubusercontent.com/greates2/96efb41dfcc373afbe2eca12a721cd25/raw/4d2b3a1e54b6d50d24411ed7f9972f6b9cbca6f9/startup-script | bash'

Для создания правила фаервола используем команду:
gcloud compute firewall-rules create default-puma-server \
 --allow=tcp:9292 \ 
 --network=default \ 
 --target-tags=puma-server \ 
 --source-ranges="0.0.0.0/0"



testapp_IP = 35.195.176.33 

testapp_port = 9292 

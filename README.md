# Note 

container need to run on `centos`.

>    tools
>  - docker  
>  - docker-compose


## Clone project 
```bash
git clone https://github.com/guan840912/ansible-lab-container-on-centos7.git

cd nsible-lab-container-on-centos7
```

Start Lab .
```bash
# run server 
$ docker-compose up -d 


$ docker exec -it ansible-server bash

[container] : pip install ansible 

[container] : cd ~/ansible 

[container] : ansible -i host -m ping 

[container] : ansible-playbook -i host nginx-install.yml -vv 

```

Close Lab .
```bash
$ dokcer-compose down 
```
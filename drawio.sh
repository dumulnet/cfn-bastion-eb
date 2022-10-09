cfn-dia d -t ./main.old.yml -o  docs/main.drawio
cfn-dia d -t ./templates/bastion.cfn.yml -o  docs/bastion.drawio
cfn-dia d -t ./templates/vpc.cfn.yml -o  docs/vpc.drawio     
cfn-dia d -t ./templates/elastic-beanstalk.cfn.yml -o  docs/eb.drawio  

cfn-dia h  -t ./main.old.yml -o  docs/
cfn-dia h  -t ./templates/bastion.cfn.yml -o  docs/bastion
cfn-dia h -t ./templates/vpc.cfn.yml -o  docs/vpc     
cfn-dia h -t ./templates/elastic-beanstalk.cfn.yml -o  docs/eb  

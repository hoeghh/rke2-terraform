.PHONY: tf-init tf-plan tf-apply tf-destroy

TF = terraform
TFVAR = -var-file=../terraform.tfvars

tf-init-upgrade:
	${TF} -chdir=./terraform init -upgrade

tf-init:
	${TF} -chdir=./terraform init

tf-plan:
	${TF} -chdir=./terraform plan ${TFVAR}

tf-apply:
	${TF} -chdir=./terraform apply ${TFVAR} -auto-approve

tf-destroy:
	${TF} -chdir=./terraform destroy ${TFVAR} -auto-approve
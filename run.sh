env=$1
action=$2

if [ -z "$env" ]; then
  echo "env is not provided(dev|qa|stage|prod)"
  exit
fi

if [ -z "$action" ]; then
  echo "action is not provided(apply | destroy)"
  exit
fi

rm -rf .terraform/terraform.tfstate
terraform init -backend-config= env-$env/state.tfvars
terraform $action -var-file=env-$env/main.tfvars -auto-approve
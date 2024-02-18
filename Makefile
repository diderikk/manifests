argocd-context:
	kubectl config set-context --current --namespace=argocd

apps-context:
	kubectl config set-context --current --namespace=apps

# argocd repo add git@github.com:diderikk/manifests.git --ssh-private-key-path ~/.ssh/argocd --insecure-ignore-host-key

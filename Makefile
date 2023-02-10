argocd-context:
	kubectl config set-context --current --namespace=argocd

apps-context:
	kubectl config set-context --current --namespace=apps
argocd-context:
	kubectl config set-context --current --namespace=argocd

apps-context:
	kubectl config set-context --current --namespace=apps

# argocd repo add git@github.com:diderikk/manifests.git --ssh-private-key-path ~/.ssh/argocd --insecure-ignore-host-key

# sudo apparmor_parser -q <<EOF
# #include <tunables/global>

# profile deny-write flags=(attach_disconnected) {
#   #include <abstractions/base>

#   file,

#   # Deny all file writes.
#   deny /** w,
# }
# EOF
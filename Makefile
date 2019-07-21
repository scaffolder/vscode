.PHONY: show-releases check-tags create-release sync-origin push-branches push-tags 

show-releases:
	@echo "List of all release numbers:"
	git tag
	

check-tags:
	@read -p "Enter Environemtn to provision: " ENVIRONMENT; \
	$$ENVIRONMENT provision

patch:
	echo "Patching vscode plugin"
	

sync-origin:
	git push origin --all
	git push origin --tag

push-branches:
	git push origin --all

push-tags:
	git push origin --tag

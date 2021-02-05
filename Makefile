.PHONY: login show-releases package  publish check-tags patch sync-origin push-branches push-tags

login:
	vsce login

show-releases:
	@echo "List of all release numbers:"
	git tag

package:
	vsce package

publish:
	vsce publish
	
check-tags:
	@read -p "Enter Environment to provision: " ENVIRONMENT; \
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

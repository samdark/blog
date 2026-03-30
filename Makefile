CLI_ARGS := $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))
$(eval $(sort $(subst :,\:,$(CLI_ARGS))):;@:)

ifeq ($(MAKECMDGOALS),)
	PRIMARY_GOAL := help
else
	PRIMARY_GOAL := $(firstword $(MAKECMDGOALS))
endif

ifeq ($(PRIMARY_GOAL),update)
update: ## Update the image
	docker pull ghcr.io/yiipress/engine:latest
endif

ifeq ($(PRIMARY_GOAL),build)
build: ## Build the site
	docker run --rm \
		--user=root \
        -v ./content:/app/content \
        -v ./output:/app/output \
        ghcr.io/yiipress/engine:latest \
        ./yii build --content-dir=content --output-dir=output --no-cache
endif

ifeq ($(PRIMARY_GOAL),up)
up: ## Up the dev environment
	docker run -d \
        --name samdark_blog \
        -p 8099:443 \
		--user=root \
		-v ./content:/app/content \
		-v ./output:/app/output \
		ghcr.io/yiipress/engine:latest
endif

ifeq ($(PRIMARY_GOAL),down)
down: ## Down the dev environment
	docker rm -f samdark_blog
endif

ifeq ($(PRIMARY_GOAL),stop)
stop: ## Stop the dev environment
	docker stop samdark_blog
endif

ifeq ($(PRIMARY_GOAL),shell)
shell: ## Get into container shell
	docker exec -it samdark_blog /bin/bash
endif

ifeq ($(PRIMARY_GOAL),yii)
yii: ## Execute Yii command
	docker run --rm \
		--user=root \
		-e XDEBUG_MODE=off \
		-v ./content:/app/content \
		-v ./output:/app/output \
		ghcr.io/yiipress/engine:latest \
		./yii $(CLI_ARGS)
.PHONY: yii
endif

#
# Other
#

ifeq ($(PRIMARY_GOAL),help)
# Output the help for each task, see https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)
endif

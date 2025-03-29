.PHONY: dev build

dev:
	hugo server --config config.base.toml,config.development.toml

build:
	hugo --config config.base.toml,config.production.toml


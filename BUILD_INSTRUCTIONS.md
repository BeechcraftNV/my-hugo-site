# Hugo Build Instructions
This Hugo site uses different configuration files for development and production environments.
## Configuration Files
- `config.base.toml`: Contains common settings such as language, title, theme, and other shared configurations 
- `config.development.toml`: Settings for local development 
- `config.production.toml`: Settings for production/GitHub Pages deployment
## Development Environment
To run the site locally during development:
```bash
hugo server --config config.base.toml,config.development.toml
```
This uses the following settings:
- Base URL: http://localhost/
- Relative URLs: true
- Canonify URLs: false
## Production Build
To build the site for deployment to GitHub Pages:
```bash
hugo --config config.base.toml,config.production.toml
```
This uses the following settings:
- Base URL: https://BeechcraftNV.github.io/my-hugo-site-public/
- Relative URLs: false
- Canonify URLs: true
## Key Differences Between Environments
| Setting | Development | Production |
|---------|-------------|------------|
| baseURL | http://localhost/ | https://BeechcraftNV.github.io/my-hugo-site-public/ |
| relativeURLs | true | false |
| canonifyURLs | false | true |
## Optional: Convenience Scripts
For convenience, you can add these commands to your scripts section in package.json or create a Makefile:

**package.json:**
```json
{
  "scripts": {
    "dev": "hugo server --config config.base.toml,config.development.toml",
    "build": "hugo --config config.base.toml,config.production.toml"
  }
}
```

**Makefile:**
```makefile
.PHONY: dev build

dev:
	hugo server --config config.base.toml,config.development.toml

build:
	hugo --config config.base.toml,config.production.toml
```


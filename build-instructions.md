# Hugo Build Instructions

This guide shows how to build your Hugo site for different environments using multiple configuration files.

## For Local Development

To build your site for local development:

```bash
hugo --config config.toml,config.development.toml -D
```

This will:
- Use local development settings
- Set baseURL to "http://localhost/"
- Enable relative URLs
- Disable URL canonification

## For Production (GitHub Pages)

To build your site for production deployment:

```bash
hugo --config config.toml,config.production.toml -D
```

This will:
- Use production settings
- Set baseURL to "https://BeechcraftNV.github.io/my-hugo-site-public/"
- Disable relative URLs
- Enable URL canonification for absolute paths

## Testing Your Changes

After building for local development, you can test your site by visiting http://localhost/

## Notes

- The `-D` flag includes draft content
- If you add new common settings, add them to the base `config.toml`
- Environment-specific settings should go in the respective config file

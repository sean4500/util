# Utilities
This is a library of utilities I find useful for my daily work. Some are unique, some aren't - feel free to use or modify them at your own risk.

## Tinify
Simple tool to optimize images for the web directly from your command line. Uses the Tinify API - you'll have to provide your own API key. What I do is add an alias in my .zshrc file to make it easy to call. Don't forget your API key!

For example:
```sh
# Tinify alias
alias tinify='path/to/tinify.sh'
```

Add API Key to environment:
```sh
# Tinify API Key (replace your own) Get your here: https://tinify.com/developers
export TINIFY_API_KEY="YOUR_API_KEY"
```

Then in your terminal you can run:
```sh
tinify ./path-to/filename.jpg
```

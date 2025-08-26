# Utilities
This is a library of utilities I find useful for my daily work. Some are unique, some aren't feel free to use or modify them at your own risk.

## Tinify
Simple CLI tool to optimize images from the command line. Uses the Tinify API - you'll have to provide your own API key. What I do is add an alias in my .zshrc file to make it easy to call.

For example:
```sh
alias tinify='path/to/tinify.sh'
```

Then in your terminal you can run:
```sh
tinify ./path-to/filename.jpg
```

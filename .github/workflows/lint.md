name: Sync Wiki3

on:
  pull_request

jobs:
  lint:
    runs-on: ubuntu-latest

    steps:
    - name: Check out repo
      uses: actions/checkout@v2

    - name: Install Markdownlint-cli
      run: |
        npm install -g markdownlint-cli

    - name: Lint
      run: |
        markdownlint -i _* --disable MD033 MD034 MD013 MD024 MD036 -- .

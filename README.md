# action-yq

This Github action provides a docker environment with yq, vim and python
installed.

## Usage

action-yq only has one (required) parameter: `file`
This is a shell script that will be executed in a docker environment (using the command `sh`).

### Example

```yaml
name: main

on:
  pull_request:
    branches:
      - master

jobs:
  build-yaml:
    runs-on: ubuntu-latest
    steps:
    - name: Generate json file
      uses: awesome-global-contributions/action-yq@v0.1.2
      with:
        file: src/generateJson.sh
```

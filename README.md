# can-create-release (for GitHub Actions)
Whether a new github release of the repository can be created.

## Usage
If the git tag is already is use, an error will occur.

``` yaml
- uses: tshion/can-create-release@(version)
  with:
    repository: (git repository name)
    tag: (git tag name)
    token: (github token)
```

## Examples
### Check same repository
``` yaml
- uses: actions/checkout@4

- uses: tshion/can-create-release@(version)
  with:
    tag: (git tag name)
```

### Check other repository
``` yaml
- uses: actions/checkout@4
  with:
    repository: (git repository name)
    token: (github token)

- uses: tshion/can-create-release@(version)
  with:
    repository: (git repository name)
    tag: (git tag name)
    token: (github token)
```

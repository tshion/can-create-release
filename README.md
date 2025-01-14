# can-create-release (for GitHub Actions)
Whether a new github release of the repository can be created.

## Usage
If the tag name is already is use, an error will occur.

``` yaml
- uses: tshion/can-create-release@(version)
  with:
    # Repository name with owner. For example, tshion/can-create-release
    #
    # Default: ${{ github.repository }}
    repository: ''

    # Tag name you want to release
    tag: ''

    # Personal access token (PAT) used to fetch the repository. The PAT is configured
    # with the local git config, which enables your scripts to run authenticated git
    # commands. The post-job step removes the PAT.
    #
    #
    # We recommend using a service account with the least permissions necessary.
    # Also when generating a new PAT, select the least scopes necessary.
    #
    #
    # [Learn more about creating and using encrypted secrets](https://help.github.com/en/actions/automating-your-workflow-with-github-actions/creating-and-using-encrypted-secrets)
    #
    # Default: ${{ github.token }}
    token: ''
```

## Examples
Please refer to the [release page](https://github.com/tshion/can-create-release/releases) for the latest `version`.

### Check the same repository
``` yaml
- uses: tshion/can-create-release@(version)
  with:
    tag: (Tag name you want to release)
```

### Check the other public repository
``` yaml
- uses: tshion/can-create-release@(version)
  with:
    repository: (Repository name with owner)
    tag: (Tag name you want to release)
```

### Check the other private repository
``` yaml
- uses: tshion/can-create-release@(version)
  with:
    repository: (Repository name with owner)
    tag: (Tag name you want to release)
    token: (Personal access token (PAT) used to fetch the repository)
```

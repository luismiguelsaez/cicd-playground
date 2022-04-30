
## Jenkins

### CasC

- Docs
  - Docker
    - https://github.com/jenkinsci/docker#preinstalling-plugins
  - CasC
    - https://plugins.jenkins.io/configuration-as-code/
    - https://github.com/jenkinsci/configuration-as-code-plugin/blob/master/README.md
    - http://localhost:8080/configuration-as-code/reference ( Jenkins server )


### Generic Wehook trigger

- Launch from GitHub

```bash
curl 'http://localhost:8080/generic-webhook-trigger/invoke' -H"Token:dummy" -H"User-Agent:GitHub-Hookshot/b1f85d8" -H"Content-type:application/json" -XPOST -d @example/github/payload.json
```

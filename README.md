# github-action-maven-deploy

Action to run `mvn deploy` lifecycle hook.

## Usage

```
- name: Run maven deploy action
  uses: danubetech/github-action-maven-deploy@master
  with:
    server_id: <maven-settings-server-id> //optional, settings file can be prepared with prepare-settings-action https://github.com/danubetech/github-action-prepare-maven-settings-xml 
    path_to_pom: <path_to_pom.xml> //optional, default: /github/workspace
  env:
    MAVEN_USERNAME: ${{ secrets.MAVEN_USERNAME }} //optional for public repo
    MAVEN_PASSWORD: ${{ secrets.MAVEN_PASSWORD }} //optional for public repo
```

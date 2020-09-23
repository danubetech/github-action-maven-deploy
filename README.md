# github-action-maven-deploy

Action to run `mvn deploy` lifecycle hook.

## Usage

```
- name: Run maven deploy action
  uses: danubetech/github-action-maven-deploy@master
  with:
    server_id: <maven-settings-server-id> //required
    path_to_pom: <path_to_pom.xml> //optional, default: /github/workspace
  env:
    MAVEN_USERNAME: ${{ secrets.MAVEN_USERNAME }} //optional for public repo
    MAVEN_PASSWORD: ${{ secrets.MAVEN_PASSWORD }} //optional for public repo
```

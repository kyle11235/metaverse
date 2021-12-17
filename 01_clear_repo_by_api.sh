

FROM=app1-generic-dev-local
curl -H 'X-JFrog-Art-Api: '"$ART_API_KEY"'' \
-X DELETE "https://soleng.jfrog.io/artifactory/$FROM"


FROM=app1-generic-test-local
curl -H 'X-JFrog-Art-Api: '"$ART_API_KEY"'' \
-X DELETE "https://soleng.jfrog.io/artifactory/$FROM"


FROM=app1-generic-prod-local
curl -H 'X-JFrog-Art-Api: '"$ART_API_KEY"'' \
-X DELETE "https://soleng.jfrog.io/artifactory/$FROM"
curl -X PATCH "https://soleng.jfrog.io/artifactory/api/metadata/app1-generic-dev-local/metaverse/hero/0b8f3b8d5df0c7d12c786eeb6c8a447c.jpg"  \
-H 'X-JFrog-Art-Api: '"$ART_API_KEY"'' \
-H "Content-Type: application/json" \
--data-raw '{"props":{"nickname": "kai"}}'





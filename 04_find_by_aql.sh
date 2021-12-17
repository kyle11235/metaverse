
curl -X POST 'https://soleng.jfrog.io/artifactory/api/search/aql' \
-H 'X-JFrog-Art-Api: '"$ART_API_KEY"'' \
-H 'Content-Type: text/plain' \
--data-raw 'items.find(
    {  
        "repo": {"$eq" : "app1-generic-dev-local"},
        "path": {"$match" : "metaverse/hero"},
        "@test": {"$ne" : "1"}
    }
)'
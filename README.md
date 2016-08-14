# abstractions-util

## Demo

1. Show configmap (/usr/share/nginx/html/assets/data)
2. Update configmap
```
{
  "name": "Steve Sloka",
  "image": "steve-sloka.jpg",
  "bio": {
    "short": "Kubernaut / UPMC Enterprises",
    "long": "Kubernetes / Golang / Containers"
  },
  "talk": {
    "topic": "Containers, Cloud, Kubernetes",
    "title": "Containerized Cloud Native Deployments",
    "abstract": "foo"
  },
  "twitter": "stevesloka"
}
```
3. Show secrets
4. Update / deploy / printenv
5. Create namespace
6. Update deis router namespace
7. Deploy same app
8. Build new version of web / deploy (readinessProbe should fail!)
9. Deploy new version of api
10. Web should then go healthy and app should work

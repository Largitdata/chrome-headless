Docker image for Headless chrome on top of alpine linux
============
---

1. Chrome version: 61
2. Chrome driver: 2.30
3. alpine linux: 3.6

After running container it will expose chromedriver on default port 9515:

`docker run --cap-add=SYS_ADMIN -p 9999:9515 largitdata/chrome-headless`

# docker-nightwatch

Run with a volume mount folder containing the tests dir and the main test script for running nightwatch. Provide the names of both of these via ENVs.

Example docker-compose.yml (combine with required chrome and selenium):

```
nightwatch:
  environment:
    FILELOCATION: /opt/nightwatch
    TESTSFILE: nightwatch-tests.sh
    SOMEVAR: OtherVarNeededInMyScript
  image: uqlibrary/docker-nightwatch:3
  links:
  - hub
  volumes:
  - .:/opt/nightwatch
chrome:
  environment:
    VIRTUAL_HOST: node.chrome.docker
    HUB_PORT_4444_TCP_ADDR: hub
    HUB_PORT_4444_TCP_PORT: '4444'
  image: selenium/node-chrome:latest
  links:
  - hub
hub:
  ports:
  - 4444:4444/tcp
  image: selenium/hub:latest
```

## Yet another NodeJS development docker environment 

To build this container:  

```
docker build -t node-dev .
```

To run this container, it would be a command something like this, juts make sure to include your port forwards.
```
docker run --rm -it -v ${PWD}:/app -p 3001:3001 -p 16006:16006 node-dev
```

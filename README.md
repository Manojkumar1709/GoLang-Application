# GoLang Sample Web Server APP 

## Requirement

- Docker

## Usage

Clone it!

```
$ git clone https://github.com/Manojkumar1709/GoLang-Application.git
$ go run main.go
```

Go into the project directory and run the command:

```
$ docker build --no-cache -t golang-app-image .
$ docker run -d -p 5000:5000 golang-app-image
```

Open `http://localhost:5000` and enjoy!

package main

import (
    "fmt"
    "net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
    http.ServeFile(w, r, "index.html")
}

func main() {
    http.HandleFunc("/", handler)
    fmt.Println("Server listening on port 5000")
    http.ListenAndServe(":5000", nil)
}

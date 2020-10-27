package main

import (
	"fmt"
	"log"
	"net/http"
)

func httpHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Printf("Request coming in.\n")
	http.Error(w, "500 Internal Server Error", http.StatusInternalServerError)
}

func main() {
	fmt.Printf("Starting server at port 80.\n")

	log.Fatal(http.ListenAndServe(":80", http.HandlerFunc(httpHandler)))
}

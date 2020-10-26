package main

import (
	"net/http"
)

func redirectAway(w http.ResponseWriter, r *http.Request) {
	http.Redirect(w, r, "https://www.anonoz.com", http.StatusFound)
}
func main() {
	http.ListenAndServe(":80", http.HandlerFunc(redirectAway))
}

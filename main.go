package main

import (
	"fmt"
	"log"
	"net/http"

	"github.com/pacenthink/golang-boilerplate/router"
)

func main() {
	r := router.Router()
	fmt.Println("Server is getting started...")
	log.Fatal(http.ListenAndServe(":4000", r))
}

package router

import (
	"github.com/gorilla/mux"
	"github.com/pacenthink/golang-boilerplate/controller"
)

func Router() *mux.Router {
	router := mux.NewRouter()

	router.HandleFunc("/", controller.Health).Methods("GET")

	return router
}

package controller

import (
	"encoding/json"
	"net/http"
)

// Most Import Connection

func Health(w http.ResponseWriter, r *http.Request) {
	json.NewEncoder(w).Encode("Hello from BnD!")
}

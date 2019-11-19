package main

import (
	"github.com/oms-services/pagerduty/route"
	"log"
	"net/http"
)

func main() {
	router := route.NewRouter()
	log.Fatal(http.ListenAndServe(":5000", router))
}
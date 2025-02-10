package main

import (
	"fmt"
	"helloword/pkg/webservice"
)

/* This is entyr point */
func main() {
	display("aneesh")
	webservice.Start()
}

func display(name string) {
	fmt.Printf("hello %s", name)
}

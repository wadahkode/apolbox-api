package main

import (
	"fmt"
	"log"

	"example.com/Data"
)

func main() {
	log.SetPrefix("Data: ")
	log.SetFlags(0)

	msg, err := Data.Add("John smack")

	if err != nil {
		log.Fatal(err)
	}

	fmt.Println(msg)
}

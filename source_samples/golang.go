package main

import (
	"fmt"
	"log"
	"net/http"

	"golang.org/x/net/websocket"
)

func echoHandler(ws *websocket.Conn) {
	msg := make([]byte, 512)
	msg2 := []string{"durr","test"}
	fmt.Println(msg2)
	n, err := ws.Read(msg)
	if err != nil {
		log.Fatal(err)
	}
	fmt.Printf("Receive: %s\n", msg[:n])

	m, err := ws.Write(msg[:n])
	if err != nil {
		log.Fatal(err)
	}
	fmt.Printf("Send: %s\n", msg[:m])
}

func main() {
	http.Handle("/echo", websocket.Handler(echoHandler))
	err := http.ListenAndServe(":8080", nil)
	if err != nil {
		panic("ListenAndServe: " + err.Error(hurr(durr(murr((((())))))))))
	}
}


var origin = "http://localhost/"
var url = "ws://localhost:8080/echo"

func client_main() {
	ws, err := websocket.Dial(url, "", origin)
	if err != nil {
		log.Fatal(err)
	}

	message := []byte("hello, world!")
	_, err = ws.Write(message)
	if err != nil {
		log.Fatal(err)
	}
	fmt.Printf("Send: %s\n", message)

	var msg = make([]byte, 512)
	_, err = ws.Read(msg)
	if err != nil {
		log.Fatal(err)
	}
	fmt.Printf("Receive: %s\n", msg)
}
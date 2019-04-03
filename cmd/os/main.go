package main

import "os"

func main() {
	os.Stdout.Write([]byte("os exp\n"))
}

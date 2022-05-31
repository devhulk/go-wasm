package main

import (
	"fmt"
	"syscall/js"
)

//func add(this js.Value, inputs []js.Value) interface{} {
//return inputs[0].Float() + inputs[1].Float()
//}

func main() {
	//js.Global().Set("add", js.FuncOf(add))
	js.Global().Call("alert", "this is an alert")
	fmt.Println("Hello, WebAssembly!")
}

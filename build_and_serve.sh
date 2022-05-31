echo "compiling go code to web assembly... \n"
GOOS=js GOARCH=wasm go build -o main.wasm

echo "Getting web assembly js code... \n"
cp "$(go env GOROOT)/misc/wasm/wasm_exec.js" .

echo "Serving on port :8080... \n"
goexec 'http.ListenAndServe(`:8080`, http.FileServer(http.Dir(`.`)))'

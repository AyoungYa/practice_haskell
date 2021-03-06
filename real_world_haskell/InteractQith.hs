import System.Environment (getArgs)

interactWith function inputFile outPutFile = do 
    input <- readFile inputFile
    writeFile outPutFile (function input)

main = mainWith myFunction
    where mainWith function = do 
        args <- getArgs
        case args of
            [input, output] -> interactWith function input output
            _ -> putStrLn "error: exactly two arguments needed"

        myFunction = id    
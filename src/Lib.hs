module Lib
    (
     wtf
    ) where


wtf :: IO ()
wtf = do
    putStrLn "nombre del file a crear"
    name <- getLine
    writeFile name "hola mundo"
    putStrLn "archivo creado"

    



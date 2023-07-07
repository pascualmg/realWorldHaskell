module BookStore (BookInfo ()) where
import Prelude hiding (id)

data BookInfo = Book Int String [String]
 deriving (Show)

data MagazineInfo = Magazine Int String [String]
 deriving (Show)

type Tojunto = (BookInfo, MagazineInfo)

someBook :: BookInfo
someBook = Book 9780135072455 "Algebra of Programming"
         ["Richard Bird", "Oege de Moor"]

someMagazine :: MagazineInfo
someMagazine = Magazine 9780135072455 "Algebra of Programming"
               ["Richard Bird", "Oege de Moor"]

miTojunto :: Tojunto
miTojunto = (someBook, someMagazine)


type Biblioteca = [BookInfo]
type Titulo = String


buscaLibro :: Biblioteca -> Titulo -> Biblioteca
buscaLibro [] _ = []
buscaLibro (Book id titulo autores:xs) tituloBuscado
  | titulo == tituloBuscado = Book id titulo autores : buscaLibro xs tituloBuscado
  | otherwise = buscaLibro xs tituloBuscado

miBiblioteca :: Biblioteca
miBiblioteca = [Book 1 "Libro 1" ["Autor 1", "Autor 2"], Book 2 "Libro 2" ["Autor 1", "Autor 2"], Book 3 "Libro 3" ["Autor 1", "Autor 2"]]

libros :: Biblioteca
libros = buscaLibro miBiblioteca "Libro 1"

  



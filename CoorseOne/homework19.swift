//
//  homework19.swift
//  CoorseOne
//
//  Created by Виктория Виниславская on 04.07.2022.
//

import Foundation

let homework19 = {
    
//    1) Библиотеку книг и видео библиотеку фильмов
    
    struct Library: CustomStringConvertible {
        var title: String
        var author: String
        var genge: String
        
        
        init(author: String, title: String, genge: String) {
            self.author = author
            self.title = title
            self.genge = genge
    }
        
        var description: String {
            "Name of creation - \(title), author of creation - \(author), genge of creation - \(genge)"
        }
    }
    
//    2)Возможность добавлять новые книги и фильмы и после добавления должна происходить автоматическая сортировка по алфавиту
//    3)Сделать так что б когда я вызову метод(создайте сами его) - "Sort by mood" то фильмы должны отсортировать по настроению:)
//    4)И такойже медод придумать для книг 🙂
    
    class Book {
       var book = [Library]()
        
        func addBook(author: String, title: String, genge: String) {
            book.append(Library(author: author, title: title, genge: genge))
            let sortedBooksArray = book.sorted { $0.title < $1.title }
        }
        
        func sortedByMood(bookGenge: String) {
            let fillteredBooksArray = book.filter { $0.genge == bookGenge}
            for element in fillteredBooksArray {
                print(element.title, element.genge)
            }
        }
    }
    
    var book = Book()
    book.addBook(author: "Elizabeth Gilbert", title: "Eat, pray, love", genge: "drama")
    book.addBook(author: "Viktor Pelevin", title: "Life of insects", genge: "novel")
    book.addBook(author: "Edgar Allan Poe", title: "The Murders in the Rue Morgue", genge: "short story")
    book.addBook(author: "Harper Lee", title: "To kill a mockingbird", genge: "novel")
    print(book.book)
    
    
    book.sortedByMood(bookGenge: "novel")
    
    
    class Movie {
        var movie = [Library]()
        
        func addMovie(author: String, title: String, genge: String) {
            movie.append(Library(author: author, title: title, genge: genge))
            let sortedMovieArray = movie.sorted { $0.title < $1.title }
        }
        
        func sortedByMood(movieGenge: String) {
            let fillteredMoviesArray = movie.filter { $0.genge == movieGenge}
            for element in fillteredMoviesArray {
                print(element.title, element.genge)
            }
        }
    }
    
    
    let movie = Movie()
    movie.addMovie(author: "Luc Besson", title: "The Story of Leon", genge: "Action")
    movie.addMovie(author: "Quentin Tarantino", title: "Inglourious Basterds", genge: "Action")
    movie.addMovie(author: "James Cameron ", title: "Point Break", genge: "Crime")
    
    movie.sortedByMood(movieGenge: "Action")

    
}

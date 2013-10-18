book_author("1984", "Wilson").
book_author("El Aleph", "Jorge Luis Borges").
book_author("La Divina Comedia", "Dante").
book_author("Lord of the Rings", "Tolkien").
book_author("The Hobbit", "Tolkien").

same_author(X, Y) :- book_author(X, Z), book_author(Y, Z).
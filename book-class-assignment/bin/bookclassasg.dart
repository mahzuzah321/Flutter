class Book {
  // Properties
  String title;
  String author;
  int publicationYear;
  int pagesRead;

  // Static property to track total books created
  static int totalBooks = 0;

  // Constructor
  Book(this.title, this.author, this.publicationYear, this.pagesRead) {
    totalBooks++;
  }

  // Method to add pages read
  void read(int pages) {
    pagesRead += pages;
  }

  // Getter methods
  int getPagesRead() {
    return pagesRead;
  }

  String getTitle() {
    return title;
  }

  String getAuthor() {
    return author;
  }

  int getPublicationYear() {
    return publicationYear;
  }

  // Method to calculate book age
  int getBookAge() {
    int currentYear = DateTime.now().year;
    return currentYear - publicationYear;
  }
}

void main() {
  // Create three Book objects
  Book book1 = Book('Book One', 'Author A', 2000, 100);
  Book book2 = Book('Book Two', 'Author B', 2010, 150);
  Book book3 = Book('Book Three', 'Author C', 2020, 200);

  // Simulate reading pages
  book1.read(50);  // 50 pages read for book1
  book2.read(30);  // 30 pages read for book2
  book3.read(70);  // 70 pages read for book3

  // Print details of each book
  print('Title: ${book1.getTitle()}, Author: ${book1.getAuthor()}, Publication Year: ${book1.getPublicationYear()}, Pages Read: ${book1.getPagesRead()}, Book Age: ${book1.getBookAge()} years');
  print('Title: ${book2.getTitle()}, Author: ${book2.getAuthor()}, Publication Year: ${book2.getPublicationYear()}, Pages Read: ${book2.getPagesRead()}, Book Age: ${book2.getBookAge()} years');
  print('Title: ${book3.getTitle()}, Author: ${book3.getAuthor()}, Publication Year: ${book3.getPublicationYear()}, Pages Read: ${book3.getPagesRead()}, Book Age: ${book3.getBookAge()} years');

  // Print total number of books created
  print('Total books created: ${Book.totalBooks}');
}

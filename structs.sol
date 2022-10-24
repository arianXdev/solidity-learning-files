pragma solidity >= 0.7.0 < 0.9.0;

// Struct (Structure)
// Struct are types that are used to represent a record. Suppose you want to keep track of your movies in a library.
// You might want to track the following attributes about each movie.

// Syntax: struct <structName> {element1, element2, ...}

// Structs are custom data types that can group several variables. 
// Structs in Solidity are a collection of variables (that can be of different types) under a single name.
// This enable you to group many variables of multiple types into one user defined type.

contract Structs {
    // Structs in Solidity are a collection of variable (that can have different types) under a single name.
    struct Book {
        uint bookId;
        string title;
        string author;
        string price;
        uint numbersOfPages;
        bool isThisForeign;
    }


    struct Movie {
        uint movieId;
        string title;
        string director;
        string time;
        bool isThisForeign;
    }


    // My favorite Movies
    Movie ironMan = Movie(1, "Iron Man", "Jon Favreau", "1h and 30m", true);
    Movie wishDragon = Movie(2, "Wish Dragon", "Chris Appelhans", "1h 38m", true);
    Movie encanto = Movie(3, "Disney: Encanto", "Byron Howard", "1h 49m", true);


    function getMovieTitle(uint _movieId) private view returns(string memory) {
        if (_movieId == 1) {
            return ironMan.title;
        } else if (_movieId == 2) {
            return wishDragon.title;
        } else {
            return encanto.title;
        }
    }


    function getMovieDirector(uint _movieId) private view returns(string memory) {
          if (_movieId == 1) {
            return ironMan.director;
        } else if (_movieId == 2) {
            return wishDragon.director;
        } else {
            return encanto.director;
        }
    }


    function getMovieTime(uint _movieId) private view returns(string memory) {
        if (_movieId == 1) {
            return ironMan.time;
        } else if (_movieId == 2) {
            return wishDragon.time;
        } else {
            return encanto.time;
        }
    }


    
    // My favorite Books
    Book theCompoundEffect = Book(1, "The Compound Effect", "Darren Hardy", "$39", 320, true);
    Book howToWinFriendsAndInfluencePeople = Book(2, "How to win friends and influence people", "Dale Carnegie", "$69", 270, true);
    Book selfDisipline = Book(3, "The sign of Self-Disipline", "Brian Tracy", "$49", 180, true);
    


    function getBookTitle(uint _bookId) public view returns(string memory) {
        if (_bookId == 1) {
            return theCompoundEffect.title;
        } else if (_bookId == 2) {
            return howToWinFriendsAndInfluencePeople.title;
        } else if (_bookId == 3) {
            return selfDisipline.title;
        } else {
            return "There aren't any books with the Book Id!";
        }
    }

    function getBookAuthor(uint _bookId) public view returns(string memory) {
        if (_bookId == 1) {
            return theCompoundEffect.author;
        } else if (_bookId == 2) {
            return howToWinFriendsAndInfluencePeople.author;
        } else if (_bookId == 3) {
            return selfDisipline.author;
        } else {
            return "There aren't any books with the Book Id!";
        }
    }

    function getBookPrice(uint _bookId) public view returns(string memory) {
        if (_bookId == 1) {
            return theCompoundEffect.price;
        } else if (_bookId == 2) {
            return howToWinFriendsAndInfluencePeople.price;
        } else if (_bookId == 3) {
            return selfDisipline.price;
        } else {
            return "There aren't any books with the Book Id!";
        }
    }

    function getBookNumbersOfPages(uint _bookId) public view returns(uint) {
        if (_bookId == 1) {
            return theCompoundEffect.numbersOfPages;
        } else if (_bookId == 2) {
            return howToWinFriendsAndInfluencePeople.numbersOfPages;
        } else {
            return selfDisipline.numbersOfPages;
        }
    }


}

// Exercise:
// 1. Create a a new movie and set it up so that it updates to the movie in the setMovie function
// 2. Return the ID of the new movie
// 3. Create a new variable called comedy and set up comedy to the datatype Movie
// 4. Update the setMovie function with a comedy movie that contains the name director and an Id 
// 5. Return the movie Id of the comedy

contract Exercise {
    struct Movie { // struct stands for "structure"
        uint movieId;
        string title;
        string director;
        string time;
    }
    
    Movie movie;
    Movie comedy;


    function setMovie() public {
        movie = Movie(1, "Iron Man", "Jon Favreau", "1h 39m");
        comedy = Movie(2, "Mr. Bean", "Steve Bendelack", "1h 23m");
    }

    function getMovieId() public view returns(uint) {   
        return comedy.movieId;
    }
}
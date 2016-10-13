data BookInfo = Book Int String [String]
                deriving (Show)
bookID      (Book id title authors) = id
bookTitle   (Book id title authors) = title
bookAuthors (Book id title authors) = authors

nicerID      (Book id _           _) = id
nicerTitle   (Book _  title       _) = title
nicerAuthors (Book _  _     authors) = authors

data Customer = Customer {
    customerID      :: CustomerID,
    customerName    :: CustomerName,
    customerAddress :: customerAddress
} deriving (Show)

customerYand = Customer {
	customerID = 271828,
	customerAddress = ["1048576 Disk"],
	customerName - "Jane Q. Citizen"
}

data MagzineInfo = Magzine Int String [String]
                   deriving (Show)

data BookReview = BookReview BookInfo CustomerID String
                  deriving (Show)

type CustomerID = Int
type ReviewBody = String

data BetterReviewew = BetterReviewew BookInfo CustomerID ReviewBody
                      deriving (Show)

type BookRecord = (BookInfo, BookReview)


myInfo = Book 9780135072455 "Algebra of Programming" ["Richard Bird", "Oege de Moor"]

type CardHolder = String
type CardNumber = String
type Address = [String]
data BillingInfo = CreditCard CardNumber CardHolder Address
                 | CashOnDelivery
                 | Invoice CustomerID
                   deriving (Show)
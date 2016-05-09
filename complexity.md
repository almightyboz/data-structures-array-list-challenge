##Big O Notation of operations##

Misc Notes:
A search data structure is any data structure that allows the efficient retrieval of specific items from a set of items, like a record from a database.
Locating the desired item in a list by linear search requres a number of operations proportional to the number n of items.


* new - O(1)
* add - O(4)  => (1 if bumping @size isn't an operation) Otherwise, one operation more than set
* get - O(2)
* set - O(3)
* size - O(1)
* insert - O(3)

###QUESTIONS###
What is an operation in big O notation? Is bumping the size instance variable an operation?
Do I need to assess what Ruby methods (esp enumerables) are doing "under the hood" to accurately determine something Big O notation? Would I have to read the docs for that?

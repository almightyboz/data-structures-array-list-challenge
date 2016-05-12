##Big O Notation of operations##

GENERAL NOTES
wrap code around a fixed array instance
capacity - potential things it can hold
size - how many things it is currently holding
if the size(n) is more than the capacity, it creates a new fixed array of size n + 1 and adds the new thing to index n


Misc Notes:
A search data structure is any data structure that allows the efficient retrieval of specific items from a set of items, like a record from a database.
Locating the desired item in a list by linear search requres a number of operations proportional to the number n of items.


* new - O(1)
* add - O(1) if not at capacity. Otherwise, O(n)
* get - O(1)
* set - O(1)
* length - O(1)
* insert - O(2n)

###QUESTIONS###
What is an operation in big O notation? Is bumping the size instance variable an operation?
Do I need to assess what Ruby methods (esp enumerables) are doing "under the hood" to accurately determine something Big O notation? Would I have to read the docs for that?

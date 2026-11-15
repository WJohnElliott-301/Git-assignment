# Regular Expressions (RegEX) Reference Sheet
**Author:** John Elliott | IS 301

## 1. Common Anchors & Boundaries
* '^' - Matches the start of a line
* '$' - Matches the end of a line
* '\b' - Word boundary

## 2. Character Classes & Qualifiers
* '.' - Any single character except newline
* '[[:space:]]' - Whitespace characters 
* '*' - Zero or more occurences
* '+' - One or more occurences
* '?' - Zero or one occurence

## 3. Practical Examples
* **Match Names:** '^Lizzy$'
* **Find Digits:** '[0-9]+'
* **Match Delimiters:** '[[:space:]:]+'

# Calculator-asm
Calculator with asembler


Only perform these operations: +, -, *, /

Use a Tree-Structure to store the operations.

Tree:

Node: {
    Operation: +, -, *, / (2 bit)

    Value1: Tag for if content is Value or result of another operation(Child node/Adress) 1 bit
            Adress or Float64 8 byte.
    Value2: Tag for if content is Value or result of another operation(Child node/Adress) 1 bit
            Adress or Float64 8 byte.
}

Process: Check if Nodes contains a number value or an adress that, if it is an adress, will lead to a child node containing another node of the same structure, if another nodes adress is stored first go into that node, like in depth search firs or DFS. perform the deepest operation and replace the adress that led to the node with the value calculated in the node with its given operation. This way the highest node or root will at some point contain 2 float64 and an operation.

For this a few things have to be done. We need to implement the tree with its nodes as a datastructure, the floats themselfs as well as the basic +, -, *, / operations.
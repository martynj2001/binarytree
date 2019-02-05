The Odin Project - Binary Tree & Knights Travail Assignement

Author: Martyn Jones

PROJECT: DATA STRUCTURES AND ALGORITHMS

Project 1: Searching Binary Trees

Build a simple binary tree data structure from some arbitrary input and also the “crawler” function that will locate data inside of it.

Project 2: Knight’s Travails

A knight in chess can move to any square on the standard 8x8 chess board from any other square on the board, given enough turns (don’t believe it? See this animation). Its basic move is two steps forward and one step to the side. It can face any direction.

Assignment

Your task is to build a function knight_moves that shows the simplest possible way to get from one square to another by outputting all squares the knight will stop on along the way.

You can think of the board as having 2-dimensional coordinates. Your function would therefore look like:

knight_moves([0,0],[1,2]) == [[0,0],[1,2]]
knight_moves([0,0],[3,3]) == [[0,0],[1,2],[3,3]]
knight_moves([3,3],[0,0]) == [[3,3],[1,2],[0,0]]

I use Jon Cheek's 'Seeing is Believing Gem' with VS Code - highly recommended inline debug/runtime environment
https://github.com/brandoncc/vscode-seeing-is-believing
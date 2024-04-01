# Connect Four

Welcome to Connect Four, a classic two-player game where the goal is to connect four of your colored tokens in a row, either vertically, horizontally, or diagonally, before your opponent does.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Getting Started](#getting-started)
- [How to Play](#how-to-play)

## Introduction

This project is an implementation of the Connect Four game in Ruby using TDD principles. It includes classes for the game logic, player interactions, and board management. The game can be played in the terminal by two players taking turns to drop their tokens into columns on the board.

## Features

- Terminal-based gameplay
- Player name input
- Colorful tokens for each player
- Intelligent input validation
- Win condition detection
- Tie detection
- Option to play multiple rounds

## Getting Started

To get started with the Connect Four game, follow these steps:

1. Clone this repository to your local machine.
2. Ensure you have Ruby installed.
3. Open your terminal and navigate to the project directory.
4. Run the `connect_four.rb` file using the `ruby` command.

## How to Play

1. Upon starting the game, you will be prompted to enter the names of the two players.
2. The game board will be displayed, and Player 1 will be prompted to choose a column to drop their token into.
3. Players take turns choosing columns until one of them wins or the board is full.
4. To win, a player must connect four of their tokens either vertically, horizontally, or diagonally.
5. If the board fills up without a winner, the game ends in a tie.

# Guess The Flag

**Guess The Flag** is a fun SwiftUI quiz game where users have to identify the correct flag out of three options. The game randomly selects a flag and presents the user with three flags to choose from. The user's score is updated based on whether they guess correctly or incorrectly. After eight guesses, the game ends, and the user can restart.

## Features

- **Flag Guessing Game**: Users are presented with the name of a country and have to select the correct flag from three options.
- **Score Tracking**: The app keeps track of the user's score, increasing for correct guesses and decreasing for wrong guesses.
- **Game Over & Restart**: The game ends after eight guesses, and users can restart a new game.
- **Dynamic Background**: The app features a visually appealing radial gradient background.
- **Responsive Layout**: The UI adjusts based on screen size and orientation for a smooth user experience.

## Code Breakdown

- **Flag Selection**: A set of three flags are randomly chosen from a list of 10 country flags, and users are asked to identify the correct one.
- **Score System**: Points are awarded for correct answers, and points are deducted for incorrect answers.
- **Game Rounds**: The game ends after eight rounds, and users can restart by tapping the "Start Again" button.
- **User Interface**: The app uses SwiftUI for a clean, modern look and feel, with buttons representing the flags, alerts for correct/wrong answers, and dynamic background gradients for an engaging experience.

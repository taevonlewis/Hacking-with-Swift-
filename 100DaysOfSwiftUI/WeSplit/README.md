# WeSplit

**WeSplit** is a simple SwiftUI app that helps users split a bill between multiple people. Users can enter the total bill amount, select how many people are sharing the bill, and choose a tip percentage. The app calculates and displays the total amount including the tip, as well as the amount each person should pay.

## Features

- **Bill Amount Input**: Users can input the total amount of the bill.
- **Number of People**: Users can select how many people are splitting the bill (from 2 to 99).
- **Tip Percentage**: Users can select a tip percentage (from 0% to 100%).
- **Grand Total Calculation**: The app calculates the total amount, including the tip.
- **Per Person Calculation**: The app calculates how much each person should pay.

## Code Breakdown

- **Bill Amount**: Users enter the total bill amount using a `TextField` formatted as a currency.
- **Tip Percentage**: The user selects the tip percentage using a `Picker`, and the app calculates the total amount based on the selection.
- **Number of People**: The app uses a `Picker` to allow users to choose the number of people sharing the bill.
- **Total and Per Person Calculation**: The app calculates both the grand total and the amount each person needs to pay, showing the results in a formatted currency display.

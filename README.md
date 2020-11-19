# Mānu
Mānu is a Ruby CLI application for booking yoga classes in one of the many yoga studios around New York City.

## Tech Stack
* Ruby [2.6.1]
* SQLite3 [~> 1.4] (Database)
* TTY::Prompt - Gem that provides easy option selection
* Rake - Task manager

## Features
  * Sign up/log in using a username and password [includs validations on username and pw]
  * Book a yoga session at a chosen location (Create)
  * View all upcoming classes (Read)
  * Change reservations (Update)
  * Delete reservations (Delete) [Confirmation included]

## Set Up
  * clone this repo to your local environment --git clone
  * cs into the MANU-Yoga-Booking-CLI-App  repo
  * $ 'bundle install' to install all required dependencies
  * $ 'rake db:migrate' to create tables into the databse
  * $ 'rake db:seed' to create seed data
  * $ 'rake start' to run the app!

## Sample Images 📷
<img src='./Screenshots.png'> </img>

## Build Status
This project is completed.

## Created by
* [Anna Kim](https://www.linkedin.com/in/problemsolveranna/) - Let's Connect! 👋🏻


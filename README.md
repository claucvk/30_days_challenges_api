# Try something new in 30 days project (back-end repo)

## Project Idea
I wanted to build an app that will help people to try something new in 30 days.

I came up with the idea after watching Matt Cutts Ted Talk https://www.ted.com/talks/matt_cutts_try_something_new_for_30_days

Here there is an abstract of Matt Cutts speech where he explains very well what this is about.
 "The idea is actually pretty simple. Think about something you've always wanted to add to your life and try it for the next 30 days. It turns out 30 days is just about the right amount of time to add a new habit or subtract a habit -- like watching the news -- from your life."

 The app provides a platform where people can save the challenge, keep record of their progress and share it with friends and family.

## General Approach
I started defining the planning documents that included wireframes, ERD, and user stories. Next I
developed a schedule for production. Following by pseudocode. Finally, I used Wunderlist to monitor progress.

## Deployed API Link
API Origin: https://immense-sands-36854.herokuapp.com/

## Front-end Links repo
GitHub Repo: https://github.com/claucvk/30_days_challenges_fe
GitHub Deployed Link: https://ccvk.me/30_days_challenges_fe/

## User stories
- As a user I want to sign up/ sign in to use the app.
- As a user I want to create a new challenge to start my 30 days adventure.
- As a user I want to set a quantifiable goal to define my challenge.
- As a user I want to write notes in a diary to support my progress during the 30 days.
- As a user I want to see my progress (days) in my diary to continue with my challenge.
- As a user I want to share my challenges on social networks to inspire others and share my experience to friends and family.
- As a user I want to update my profile information if I need it.

## ERD
https://goo.gl/photos/q8xWFXf5zzgmE6mb7
## Wireframes
http://i.imgur.com/HrurlWZ.png

## Routes
https://i.imgur.com/MLIlqxU.png

## Installation instructions
I used Scaffolding to generate of my application following the instructions explained in this link: http://guides.rubyonrails.org/v3.2.9/getting_started.html#getting-up-and-running-quickly-with-scaffolding

## Technologies Used
This is a full-stack MVC web application in Ruby. You can find a basic signup/login of users with passwords. The data is store in a SQL database. An ORM was used to create the database table structure and interact with data stored in a relational database.

## Issues
- It was challenging create the propers methods to connect the challenge resource with the diary resource.
- Use a better format when displaying the challenges or diaries list and one challenge or diary.
- Enable the possibility of finding a challenge or a diary through the its name instead of its id to make the app more friendly user.
- In order to solve the bugs encountered, I used binding.pry and console.log() to identify the problem source. Also, it was really helpful see the server messages.

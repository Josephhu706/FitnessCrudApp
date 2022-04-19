# README

### Acessing the site 

https://project1-2022.herokuapp.com/

### Trying the site:

Create a new account or login with the details below:

Email: jonesy@ga.co

Password: chicken

### Features

This is a full-stack application celebrating Magic The Gathering.

### The features include:

A sign up/log in functionality with encryped passwords and an authorisation flow.
Users are only allowed into the site if they have an account.
A database is used to store user information - passwords are encrypted once users have signed up.
CRUD functionality.
Users have the ability to do the following:
Create, read, update and delete posts
Create, read, update and delete decks
Create, read, and delete cards.

### Technologies Used
Languages used:

Ruby
Rails
HTML
SCSS

Database used:
PostgreSQL

Libraries used:
BCrypt

Gems used:
'scryfall'
'cloudinary'
'bootstrap'
'youtube_addy'

### Approach Taken

Planning

Before making a start on the project, I had drafted up a plan and wireframe.

![](/app/assets/images/modelplan.png)
![](/app/assets/images/userflow.png)

I actually changed my project after initial planned from a fitness app to a MTG deckbuilding app. I just thought it'd be more interesting to create something fun.

### Lessons learnt

Keep on testing bugs throughout the project. I left some testing to the end as I had assumed it was running fine. Heroku broke towards the end and i had a mini heart attack but i managed to fix it.  I also could have spent an extra day planning my models which would have allowed better functionality over all. I just couldn't envision the potential issues very well so i decided to get stuck into the development.

### Unsolved Problems

There were time contraints with my project, I would like to incorporate the following when I get the chance:

I think i could have planned my associations a bit better between cards and users. In my process i only allowed a card to exist in a decklist but maybe a better approach would have been to allow a user to have many cards and build decks around the cards rather than vice versa. 

I could also have created a 5th model to allow tracking of numbers of each card so i could create multiple copies of one card instead of having to search and populate a deck each time.

On Heroku, the time used is UTC. I don't really know how to change it so the time stamps for the posts are out of order.

My code could have been a bit DRYer. Some chunks of code i could have condensed into a single loop. Initially i didn't think to do it because i was playing around with bootstrap and some repetitive parts of the html allowed me to understand how the boostrap structure worked a bit better.




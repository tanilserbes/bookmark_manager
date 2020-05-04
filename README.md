# Bookmark Manager

This code is intended as a supplementary guide for [bookmark manager](https://github.com/makersacademy/course/tree/master/bookmark_manager). The commits on master branch roughly correspond with the walkthroughs provided in the challenge.

## User Stories

```
As user 
I am visiting helpful websites,
So, I want to see a list of existing bookmarks which has useful websites i have saved

```

## Domain Model

alias client="Client"
alias controller="Controller"
alias model="Model"
alias view = "view"

client->controller: "get request"
controller->model: ".all"
model-->controller: "[bookmarks]"
controller -> view:  "[bookmarks]"
view-->controller: "html"
controller-->client: "response 200 OK"

Please find the diagram in image folder. 

---------------

To set up the DB.....

- connect to 'psql' in the terminal
- run this command - CREATE DATABASE bookmark_manager;
- run the commands in the db/migrations folder


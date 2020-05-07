# Bookmark Manager

This code is intended as a supplementary guide for [bookmark manager](https://github.com/makersacademy/course/tree/master/bookmark_manager). The commits on master branch roughly correspond with the walkthroughs provided in the challenge.

## User Stories

```
As user, 
I visit helpful websites everyday.
So, I would like to see a list of existing bookmarks.

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

Please find the diagram in image folder. (./image/domain_model.png)

---------------
## The Ruby Web Project Setup List

1.Bundle init 

-Bundler provides a consistent environment for Ruby projects by tracking and installing the exact gems and versions that are needed.

2.Fill the Gemfile

3.Bundle install

4.Rspec --init

5.create config.ru 

-require './app' run BookmarkManager

6.at the top of spec/spec_helper.rb

-ENV['RACK_ENV'] = 'test'

-require File.join(File.dirname(__FILE__), '..', 'app.rb')


-require 'capybara'
-require 'capybara/rspec'
---require 'rspec'


Capybara.app = BookmarkManager

-------------

## To set up the DB

```
As a time-pressed user
So that I can save a website
I would like to add the site's address and title to bookmark manager
```

A common database system for modern web development is called PostgreSQL. PostgreSQL is actually a server that runs a database. Therefore, it can be started, stopped, and interacted with through an interface, psql.

- connect to 'psql' in the terminal
- run this command - CREATE DATABASE bookmark_manager;
- run the commands in the db/migrations folder

## Using Select to view the table
--bookmark_manager=# SELECT * FROM bookmarks;
Using insert to add data to a table
--INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');
--INSERT INTO bookmarks (url) VALUES ('http://www.askjeeves.com');
--bookmark_manager=# SELECT * FROM bookmarks LIMIT 2;
--SELECT * FROM bookmarks WHERE url = 'http://www.makersacademy.com';
--UPDATE bookmarks SET url = 'http://www.destroyallsoftware.com' WHERE url = 'http://www.askjeeves.com';
--DELETE FROM bookmarks WHERE url = 'http://www.twitter.com';
## Setting Database inside the code 
connection = PG.connect(dbname: 'bookmark_manager')
result = connection.exec('SELECT * FROM bookmarks;')
result.map{ |bookmark| bookmark['url'] }

## Setting up a Testing Environment

CREATE DATABASE "bookmark_manager_test";
CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));

## Step creating bookmarks

```
As a user
So I can store bookmark data for later retrieval
I want to add a bookmark to Bookmark Manager
```


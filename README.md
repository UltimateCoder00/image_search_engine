# Image Search Engine

## Description

This project is built using ruby 2.4.0 and sinatra that creates an image search engine website app, where the user is given a choice of colours to choose from and is then given top 5 results from https://pixabay.com/. See specification for more details.

## Specification

### Requirements
The following list describes the requirements for this project:
* The user must be able to select the following colours: Red, Pink, Orange, Yellow, Green,
Blue, and Purple
* The search must use a random one of the following search terms and the selected colour as a filter: man, mountain, state, ocean, country, building, cat, airline, wealth, happiness, pride, fear, religion, bird, book, phone, rice, snow, water.
* The colours must be presented as squares for the user to select
*	The top 5 search result images returned need to be displayed
* The top search result needs to be able to be clicked by the user & will take the user to the image’s url
* Show the list of previous searches in a time sorted list with most recent at the top
* Show the Date, time, Noun, colour and http response ms displayed for previous
searches
* Enable re-running previous searches

## User stories
The following user stories were used to achieve the specification:

```
As a user,
So that I can search for images,
I want to choice between the colours: Red, Pink, Orange, Yellow, Green,
Blue and Purple on the page.
```

```
As a user,
So that I can filter my search for images,
I want a randomly chosen word from: man, mountain, state, ocean, country, building, cat, airline, wealth, happiness, pride, fear, religion, bird, book, phone, rice, snow, water.
```

```
As a user,
So that the colour choices are display conventionally on the page,
I want each coloured to be displayed as a square image.
```
```
As a user,
So that I can view the top results for my search,
I want the top five search results to be display.
```
```
As a user,
So that I can get a specific image url on a particular search result,
I want to be able to click the searched images and go to its webpage.
```
```
As a user,
So that I can view my search history,
I want my search history to be displayed and in a time sorted list with most recent at the top.
```
```
As a user,
So that I can view further details of my history,
I want to view the date, time, noun, colour and http response of previous searches.
```
```
As a user,
So that I can repeat my searches,
I want to re-run previous searches.
```

## Usage

### Installation
To install the program do the following in the terminal:

```
- Clone this repo
- Run cd image_search_engine_
- Run bundle install
```

### Run tests
To run the tests, in the terminal type:

```
- rspec
```

### Use program
To use the program, type the following in the terminal:

```
- rackup -p 3000
```

Then in the your web browser, type the following in your url bar:
```
- http://localhost:3000/
```

### Developers
This app was produced by the following developer:
- [Hasan Sonmez](https://github.com/UltimateCoder00)

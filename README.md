# Movie Reviews 

## Description  

This is an additional feature for the **World of Movies** app, where users can write a review in any of the movie in the app. This feature gives to user an ability to manage the reviews for each movie with CRUD operations. If user want to read the reviews for a particular movie, then he/she can click on the **Review** button within the desired movie cart. That way user can open a page, where he/she can read all the reviews for that movie and add a new review or even can edit or delete an existing review.   

## Table Of Contents 

- [Work Environment](#work-environment)

- [Create Review](#create-review)

- [Delete Review](#delete-review)

- [Update Review](#update-review)

- [Demo](#demo)
  

## Work Environment  

The **Movie Reviews** feature uses Sinatra framework, which runs on top of the Rake, and it uses Active Record to access data in the server side and manipulate it.
The client side of the application works using local and internet url addresses:
- local - <http://localhost:3000>  
- internet - <https://idyllic-dolphin-bd7a83.netlify.app>. 

The server side of the application uses local address: 
- local - <http://localhost:9292>   

## Create Review  

When a user opens the **Review** page of each movie, he/she can see the reviews to the movie.  Then, user can put his/her name and write a new review. The push **SEND** button on the below, after what the review will appear on a upper section, below the preexisted reviews. 

## Delete Review  

If the user wants to delete one of the reviews, then he/she needs to bring the mouse pointer to the desired review. When user hovers over a review, there will appear **x** symbol at the end of the review. Then, the user can click on that **x** symbol and the review will disappear. It also will be deleted in the server side as well.

## Update Review 

If user wants to edit his/her review comment, then he or she can move a mouse pointer over the review, which want to edit and if click on the review it will show underline and blinking text cursor. When user finishes editing review, then he/she just hits **ENTER** key and the review updates. It also updates in the server side using Sinatra framework based on Rack,   

## Demo  
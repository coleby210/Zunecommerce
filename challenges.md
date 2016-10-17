## Ye Olde Online Shoppe

### Overview
This is a multi-day, agile development challenge that will require you to create an online store using Rails.   You will work in frequent, small iterations.  After each iteration, you will consult with a "senior engineer".  This app will have a polished user interface and be fully tested.

### Requirements
- The role of the "senior engineer" will also be played by one of your dear instructors.  The engineer will consult with you on testing, design decisions, or provide code review.
- You will work in pairs and at some point you will switch code bases. (Say it with me: "I am not my code").  When you meet with your new pair, you will discuss which code base to move forward with.  You will need to get your pair up to speed or get up to speed on each new-ish code base.
- You will deploy each iteration to Heroku.

The iterations are provided below.  After it is complete, you will meet with your "senior engineer" to receive further instructions from the client.

## [Submission Form, deployed application is due Sunday 11:59pm](https://docs.google.com/spreadsheets/d/19FobxylCBwToT9gUGYv7MBVbt5FEBg3fr_a5_iLGbAg/edit#gid=0)

### Fourth Iteration
- Each product should have an ‘Add to cart’ button which will load a view through AJAX that shows the shopping cart for that user
- Users can add a certain quantity of products to the cart, as long as the quantity in stock is not exceeded. Users can remove items from the cart
- Calculate the total price of items in the cart and have that update with JavaScript when items are added or removed
- When the user clicks checkout, the number of items in stock should be reduced by the amount that was purchased.
- Upon checkout, redirect the user to a thank you page that indicates what they purchased and how much they spent
- Any items which are out of stock should be indicated as such on the product page and have their ‘Add to cart’ button greyed out.
- Maintain an order history for each user and have an “order history” page which shows previous orders, including the date and time the order occurred
- Add tests to ensure the behavior above e.g., when an item is out of stock, the ‘Add to cart’ button is disabled.
- Add feature tests for the shopping cart itself and tests for any new models you created

### Third Iteration
- The client wants users. Add user registration and login. There should be an admin user who will have access to the admin page. If you feel like exploring, consider using the Devise gem for your user model. If you don’t want to go with Devise, BCrypt is sufficient for the password.
- HTTP Basic Authentication is not ideal. Replace it with session based authentication and authorization.
- Products should be classified into categories. A product can have many categories and a category can have many products. On the home page, have a link that shows all the categories available for selection. When a particular category is clicked, show all products that have that category.
- A product’s show page should show which categories the product is in
- Update the tests for categories and for your new authentication scheme

### Second Iteration
- Have a quantity in stock for each item and a price.
- Have a separate view for inventory administration (add, remove, edit) located at '/admin'. Use `http_basic_authenticate_with_name`. Username should be `admin` and password is `secret`. Also have this protection for item creation, edit, and deletion.
- UX for inventory view should be tabular, very functional, designed to help the merchant move through lots of data quickly
- UX for the shopper's view should be visual, maybe a grid of product images, should encourage spending time and slow browsing. The links to edit, delete, etc on each product should be hidden in the shopper's view
- Beautiful, usable, responsive layout. The site should look decent on a mobile device. You can use [vanilla CSS](http://www.w3schools.com/css/css_rwd_intro.asp) or [Sass and Bootstrap](http://sass-lang.com/guide). Think about the added complexity learning Sass and Bootstrap adds vs the savings in time before you decide to use it.
- Include [flash error and success messages](https://www.railstutorial.org/book/sign_up#sec-the_flash)

### First iteration

- Write down user stories.  Where would be a good place to document the user stories?
- Whiteboard some mockups and page flows and add them to the documentation.
- Whiteboard the data and schema you'll need to keep track of for this app to work and add that to the documentation.
- Add functionality for managing products to the included Rails application skeleton.  It'll be helpful to have a baseline where the client can enter products into the system, manage the products, and view them.
- We will not need any authentication mechanism.
- Please include styles for the website and image placeholders for the products

Move through the the items above as quickly as you can, without much attachment.  These are just a starting point.  As we gather feedback and learn more about what it takes to develop the app, we want to be able to change these easily.  'Cause we're doing Agile.

Go Build! <3

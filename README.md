# COLLECTART
Collectart is an app develped for people to share their art/craft works. It aims to connect people through the love of visual art. This site is, currently, open for any kinds of medium.

## PROJECT DESCRIPTION
Development of Collectart uses three models, User model, Work model and Like model. This app is only accessible for the singed up users. Once an user sings up or logs in, they land in the home page. Navigation is on the top of the page.
- "all works" is an index page where all the uploaded works are displayed. Users can click on an image which will lead to the show page of the particular work.
- Show page of work inlcude title of the work, bigger sized image, name of the creator, height and size(optional), and medium(optional).
- On Show page, if the current user is the owner of a particular work, "edit" and "delete" buttons are displayed underneath the description of the work. These buttons allow the user to edit the contents and delete the content.
- Edit will be done by posting a form. Edit form is prefilled with the current information.
- When using a delete button, a prompt asking if the user really want the work to be deleted pops up.
- If the current user is not the owner of a particular work, like button is displayed underneath the description of the work. Once the like button is used, the button will disappear but the like count remains on display.
- Every user can make a post by using "add your work" in the navigation. The user will be led to a form to be filled out with the information.
- There is a log out button in the top right corner of each page.

## HOW TO USE THIS PROJECT.
- COLLECTART was developed with Ruby on rails version 5.2.8.1.
- Currently, it has three models, to expand this project more models can be added.
- To run this app, three gems have been installed to run this app, which are  gem 'jquery-rails', gem 'cloudinary' and gem 'bootstrap'
- Cloudinary enables the users to upload their file from their local computer to Collectart app. Credentials can be found in the Cloudinary.yml.

## Credits
Collectart was built as Project 1 for Software Engineering Immersive courser at General Assembly. Great support and assitance from the teaching team, cohort and friends have brouhgt this project alive.





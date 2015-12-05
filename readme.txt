Instructions:

Ensure that you have the following installed on your machine:

1. Git (https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
3. Python 2.7 (https://www.python.org/downloads/)
4. Django (version 1.8.5) (https://docs.djangoproject.com/en/1.8/topics/install/)

This project is open source. The most recent version can be found at 

https://github.com/agileventures/depthealth.git

If you are not familiar with git and github follow these instructions:

1. create a github account at https://github.com
2. once signed in, find the current repo with the most recent version link above.
3. fork the repository
4. clone your repository to your machine (instructions vary based on os)



To run the program locally, go into the parent directory (depthealth) and ensure
you have a python cli environment installed properly.

From the parent directory, write the following commands in command prompt or terminal:


You may name it whatever you with, just be sure to update the settings.py file with the credentials you would like to use.

Next, run:

python manage.py runserver

If all goes well, you should have a local instance running.

If you did not run the seed or dump sql files:
The very first time you run this program, you are going to have to create a user. When you create that user, you’ll have to update the person table through MySQL. Change the person facility_id to 1, role_id to 1 and verified to 1.

I highly recommend creating your own user, then following the instructions above to become the superuser per se for this application.

From there, have fun :)

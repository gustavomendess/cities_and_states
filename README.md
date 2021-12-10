**Installation (linux):**

**With docker:**

`sudo apt install docker`

`Sudo apt install docker-compose`

`git clone git@github.com:gustavomendess/cities_and_states.git`

`cd cities_and_states`

in config/database.yml, configure:

**host: postgres**

`docker-compose up -d --build`

Wait a few minutes and soon the application and database will be running and can be accessed at [localhost:3000](Installation (linux):

**No docker:**

install postgresql:
[https://www.postgresql.org/download/linux/ubuntu/](Installation (linux):

**Configure the postgresql**

`git clone git@github.com:gustavomendess/cities_and_states.git`

`cd cities_and_states`

**After that configure database.yml as needed**

install gems:

`Bundle install`

Setting up database:

`rake db:create db:migrate db:seed`

Running the tests:

`rspec spec/`

Starting the server:

`rails s`
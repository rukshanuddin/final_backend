# The Block - Backend

This Block is a web app manifestation of the an unofficial Flatiron School resource, the "BALOCK," which is an amazing spreadsheet containing links to various resources regarding software development and tech in general. This repo contains the server side, a.k.a. backend of the application. It a JSON API written with Ruby on Rails.

You can browse through lists of links on various topics in web development and tech in general. A user does not have to register to use the app, but must register to leave comments. You can clone this repo to test the server side on your local machine ass well as the frontend repo, [The Block - Frontend](https://github.com/rukshanuddin/final_frontend), to test the client side of the application.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Installation

After cloning this project and going into the directory of the project run

```shell
bundle install
```

If you get a different version used form assign error, run then try the above step again

```shell
rvm use 2.6.3
```

Because this project uses PostgreSQL you need to turn on the server so it works properly.

```shell
rails db:create

rails db:migrate

rails db:seed
```

Then you should run the below command, making sure you run it on port 3000 if running it with the [React front-end](https://github.com/rukshanuddin/final_frontend) mentioned at the beginning of this repo

```shell
rails server
```

or

```shell
rails s
```

Check to see if it is working by opening **[localhost:3000](http://localhost:3000/)** in your browser.

## Built With

* [Ruby](https://www.ruby-lang.org/en/) - Programming language
* [Rails](https://rubyonrails.org/) - Ruby server-side web application framework
* [PostgreSQL](https://www.postgresql.org/) - Database server
* [BALOCK](http://bit.ly/flatiron-student-resources) - Big-Ass List of Code Knowledge

## Contributing

Issues and pull requests are welcome at [https://github.com/rukshanuddin/final_backend](https://github.com/rukshanuddin/final_backend). This project as well as all other content on my GitHub are intended to be safe, welcoming, and open for collaboration.

Users are expected to adhere to the [Contributor Covenant code of conduct](https://www.contributor-covenant.org/version/1/4/code-of-conduct)

## Authors

* **Rukshan Uddin** - *Initial work* - [GitHub/rukshanuddin](https://github.com/rukshanuddin) - [Personal Site](https://awesomeweb.design)

## Acknowledgments

### BALOCK Contributors

* [Meg Gutshall](https://github.com/meg-gutshall)
* [Justin Kenney](https://github.com/mrjak13)
* [Brad McCollum](https://github.com/btmcollum)
* [Mackenzie Pech](https://github.com/mackied0g)
* [Guy Bryant](https://github.com/guysbryant)
* [Steven Crouse](https://github.com/Sdcrouse)
* [Daniel Nunez](https://github.com/AlphaDaniel)
* [Sunny](https://github.com/aurangzaib-danial)
* [Thomas Wright](https://github.com/twwright)
* [Chris Kakos](https://github.com/ch2isk4kos)
* [Joan Lyness](https://github.com/joanrig)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

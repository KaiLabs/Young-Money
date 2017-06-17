# WesFund

WesFund is a Ruby on Rails application that has a searchable and filterable database of opportunities such as fellowships and grants for Wesleyan students and alumni. This application was built for the Patricelli Center of Social Entrepreneurship at Wesleyan University (Middletown, CT) through the KaiLabs course taught by the Kai Entrepreneurship Society. 

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

What things you need to install the software and how to install them

[RVM]https://rvm.io/, Ruby Version Manager, is a great tool to download, install, and ensure Ruby in your machine is up to date.

To check your version of Ruby, run: 
```
ruby -v
```

This project was built on:
```
ruby 2.4.1
```

To install rails, run:
```
gem install rails
```

To check your version of Rails, run:
```
rails -v
```

This project was developed on:
```
Rails 5.1.1
```

Great! Everything's set up.

### Installing

* Clone the project onto your desired location
* Navigate into that directory

```
cd Young-Money
```

Run 
```
bundle install
```
to download and install the necessary gems for this project (listed in the Gemfile).

Run
```
rake db:migrate
```
to get the necessary database migrations done.

Run
```
rails server
```
and the project will be live at http://localhost:3000/!

## Deployment

This project was deployed on Heroku.

## Built With

* [Ruby on Rails](http://rubyonrails.org/) - The web framework used
* [Bootstrap](http://getbootstrap.com/) - HTML, CSS, JS framework used

## Authors

Engineers
* [Mario See]http://github.com/mariocsee
* Hudson Harriman-Smith

Designer
* Sara Kim

Manager
* Sarah Xu
* Eric Jasinski

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Kate Smith of the Patricelli Center of Entrepreneurship at Wesleyan University for supporting our project
* Wesleyan ITS Department
* Kai Entrepreneurship Society
* KaiLabs Instructors: Daichi Onda, Timothy Kim, Mika Reyes, Vivian Liu, Alex Garcia, Cindy Horng
* Professor Francis Starr of the College of Integrated Sciences at Wesleyan University
* Many other professors and professionals who provided feedback throughout the project development cycle
* StackOverflow & Google

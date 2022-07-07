# Budget Managment App

> BMA is a responsive mobile web application useful for your dailty budget managment. using this app you can have a list of transactions associated with a category suitable for record and manage expenditures.

![image](https://user-images.githubusercontent.com/78906545/177789050-7cf31488-c0d2-4dcc-8153-103ed6acce0c.png)
![image](https://user-images.githubusercontent.com/78906545/177788777-5c6b6491-a506-4f5c-a4cc-f3b95cddcd37.png)
![image](https://user-images.githubusercontent.com/78906545/177788692-952e264b-bc37-43f0-9a49-2776139d9dd5.png)

> [Visit website](https://budget-app-zm.herokuapp.com/)

> [Watch video]()

## Built With

- Ruby on Rails
  - Gems
    - Rspec
    - Capybara
    - FactoryBot
    - Selenium-webdriver
    - Bcrypt
    - Letter-opener
    - Faker
    - cancancan
    - Devise

## Getting Started

### Prerequisites
- Ruby
- Rails gem
- PostgresQL

To get a local copy up and running follow these simple example steps.

**step1)** cloning the project:

`https://github.com/ZahraArshia/budget_management.git`

**step2)** go to the right folder:

`cd budget_management`

**step3)** Install:

`bundle install`

**step4)** run the command:

`rails s`

or

`ruby bin\rails server` (recomended if you are using windows OS)

**Run linters:**

`rubocop`

## Tests
Diffult (run all spec files):

`bundle exec rspec`

Run all spec files in the `Spec` folder:

`bundle exec rspec spec`

Run all spec files in a single directory:

`bundle exec rspec spec/models`

Run a single spec file:

`bundle exec rspec spec/featues/login_page_spec.rb`

Run a single example from a spec file(by line number):

`bundle exec rspec spec/requests/users_controller_spec.rb:1`

See all options for running specs:

`bundle exec rspec --help`

## Author

**Zahra Aershia**

- GitHub: [@ZahraArshia](https://github.com/ZahraArshia)
- Twitter: [@ZahraArshia](https://twitter.com/ZahraArshia)
- LinkedIn: [@ZahraArshia](https://www.linkedin.com/in/ZahraArshia/)

## Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments
-  An acknowledgment to [Gregorie Vella on Behance](https://www.behance.net/gregoirevella), the author of the original design.

## License

This project is [MIT](./MIT.md) licensed.

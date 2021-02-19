
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/carlos-ssh/">
    <img src="https://avatars1.githubusercontent.com/u/22258274?s=40&u=4b0efdeaefba270cb9e54efb81e7f77057f69789&v=4" alt="Logo" width="40" height="40">
  </a>

  <h3 align="center">The BookShelve</h3>

  <p align="center">
    This is a Capstone project.
    <br />
    <a href="https://github.com/carlos-ssh/ror-social-scaffold/blob/feature/docs/SOCIAL%20MEDIA%20RoR.svg"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://thebookshelve.herokuapp.com">View Demo</a>
    ·
    <a href="https://github.com/carlos-ssh/ror-social-scaffold/issues">Report Bug</a>
    ·
    <a href="https://github.com/carlos-ssh/ror-social-scaffold/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT 
## About The Project



There are many great README templates available on GitHub, however, I didn't find one that really suit my needs so I created this enhanced one. I want to create a README template so amazing that it'll be the last one you ever need -- I think this is it.

Here's why:
* Your time should be focused on creating something amazing. A project that solves a problem and helps others
* You shouldn't be doing the same tasks over and over like creating a README from scratch
* You should element DRY principles to the rest of your life :smile:

Of course, no one template will serve all projects since your needs may be different. So I'll be adding more in the near future. You may also suggest changes by forking this repo and creating a pull request or opening an issue. Thanks to all the people have have contributed to expanding this template!

A list of commonly used resources that I find helpful are listed in the acknowledgements.
-->
### Built With

This section should list any major frameworks that you built your project using. Leave any add-ons/plugins for the acknowledgements section. Here are a few examples.

Development:
* [RoR](https://rubyonrails.org/)
* [Ruby Gems](https://rubygems.org/)
* [PostgreSQL](https://www.postgresql.org/)

Test:
* [Rubocop](https://rubocop.org/)
* [RSpec](https://rspec.com/)
* [Capybara](https://github.com/mokevnin/capybara-rails)


Production:
  * [Heroku](https://heroku.com/)
  * [PostgreSQL](https://www.postgresql.org/)
  * [Cloudinary](https://cloudinary.com/)
<!-- GETTING STARTED -->
## Getting Started




Fork the repository and create a local version cloning the repo.
Move to the repository inside the command line using:
```cd and go inside the path to the file.```

 
inside your browser go to http://localhost:3000/, changing the port number in case you chose a custom one
explore the application


### Prerequisites

- Ruby v2.7.2
- Ruby on Rails v6.1.1
- Postgres: >=11

Installations:


* Bundle:
  ```sh
  bundle install
  ```
* Migrate DB:
  ```sh
  rails db:migrate
  ```
* and then run the server:
  ```sh
  rails server
  ```
* *** __if you already have using port 3000:__
  ```sh
  rails server -p 3030
  ````
Where the number beside -p flag can be any port you want.


<!-- USAGE EXAMPLES -->
## Usage

- create an account by clicking sign up, filling in the form and click the sign up button
- use the navigation bar on top to see all posts ('All section'), you will see the new posts ('This Posts are created only like Admin User')
- you can UpVote Book Reviews by clicking on the Like button
- Create a New Category: on the dropdown menu click on New Category, here you can type any word for category and you can select in a checkbox if you want to display it on the navbar.
- Manage Categories: Here you can put the categories that you like for display in the Navbar.
- Create a new Post Cliking on the dropdown menu marked 'Create a new post' there you will see the form to create a new one and clicking on the save button.
- Update User Account: Go to the dropdown menu and select User settings.
- Delete User Account: Go to the dropdown menu select User settings and here you will find the option to delete your account :(.

If you want to try the admin functions in this project you will need to do this:
- run the Rails Console
```
rails c
```
- Update the First User to Admin
```
User.first.update(admin: true)
``` 
This will enable the admin functions.
#

## Usage in Deployed App (Admin User)

- Admin Account is: email: admin@example.com
password: 123123
#
<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/carlos-ssh/issues) for a list of proposed features (and known issues).

<!-- Run tests -->
## Run tests

The project contains unit and integration test. to run these test Move to the repository inside the command line using 
```sh
cd
```
and the path to the file and run the command:
```sh
bundle exec rspec
```

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.

#
## Authors
👤 Carlos Robles
- Github: [Carlos-SSH](https://github.com/carlos-ssh)
- Twitter: [@aom.robles](https://twitter.com/aomrobles)
- LinkedIn :[ Carlos Robles](https://www.linkedin.com/in/carlos-ssh)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

<!-- MARKDOWN LINKS & IMAGES -->

[contributors-shield]: https://img.shields.io/github/contributors/othneildrew/Best-README-Template.svg?style=for-the-badge
[contributors-url]: https://github.com/carlos-ssh/
[forks-shield]: https://img.shields.io/github/forks/othneildrew/Best-README-Template.svg?style=for-the-badge
[forks-url]: https://github.com/carlos-ssh/the_bookshelve/network/members
[stars-shield]: https://img.shields.io/github/stars/carlos-ssh/Best-README-Template.svg?style=for-the-badge
[stars-url]: https://github.com/carlos-ssh/the_bookshelve/stargazers
[issues-shield]: https://img.shields.io/github/issues/othneildrew/Best-README-Template.svg?style=for-the-badge
[issues-url]: https://github.com/carlos-ssh/the_bookshelve/issues
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=for-the-badge
[license-url]: https://github.com/carlos-ssh/the_bookshelve/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/carlos-ssh
[product-screenshot]: images/screenshot.png
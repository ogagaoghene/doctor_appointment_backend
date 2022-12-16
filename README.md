<a name="readme-top"></a>

<div align="center">

  <img src="murple_logo.png" alt="logo" width="140"  height="auto" />
  <br/>

  <h3><b>Microverse README Template</b></h3>

</div>
<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
- [👥 Authors](#authors)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 Doctor Appointment Application <a name="about-project"></a>

> A mobile web application that allows for the booking of appointment from a list of available doctors with different specialties. It displays list of available doctors, logged in users can book an appointment, delete and modify appointment bookings.

## Frontend Repo 
- [Doctor Appointment App](https://github.com/ogagaoghene/doctor_appointment_frontend.git)

## Kanban Board

We have set up a Kanban board
note: We are 2 students working on this project.

Kanban board link:
https://github.com/users/ogagaoghene/projects/13

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

- [x] Ruby
- [x] Ruby on Rails
- [x] React
- [x] Redux
- [x] PostgreSQL

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up, follow these simple steps.

### Prerequisites

- [x] A web browser like Google Chrome.
- [x] A code editor like Visual Studio Code with Git and Ruby.
- Clone the Backend Repo
  git clone https://github.com/ogagaoghene/doctor_appointment_backend.git
  cd doctor_appointment_backend
- Clone the Frontend Repo
  git clone https://github.com/ogagaoghene/doctor_appointment_frontend.git
- Run `bundle install` to install all the required dependancies.
- Run `rails db:create` and `rails db:migrate` to create & migrate records to the database.

## Errors

If you encounter any errors, run the following commands.
- Run `rails db:migrate:reset` to drop, create and migrate a new database.
Alternatively, run the following commands:
- rails db:drop or rails db:drop:all in extreme cases of duplicate values
- rails db:create 
- rails db:migrate
- Run `rubocop && rubocop -A` to check for and fix code errors.


### Usage

To run the project, execute the following command:
#### Rails Backend Server
```
   $ rails s -p 3001
```
#### React Frontend Server
```
 - localhost:3000
 
```

### Run tests

To run tests, run the following command:
- rspec ./spec/models/

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

> Mention all of the collaborators of this project.

👤 **Esi Ogagaoghene**

- GitHub: [@ogagaoghene](https://github.com/ogagaoghene)
- Twitter: [@esi-ogaga](https://twitter.com/esi-ogaga)
- LinkedIn: [ogagaoghene-esi](https://linkedin.com/in/ogagaoghene-esi)

 **Tarek Yosry**

- GitHub: [@Tarek102](https://github.com/tarek102)
- LinkedIn: [Tarek Yosry](https://www.linkedin.com/in/tarek-yosry/)


<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

> Write a message to encourage readers to support your project

If you like this project...

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

> Give credit to everyone who inspired your codebase.

I would like to thank...
- [Microverse](https://www.microverse.org/)
- Code Reviewers
- Original design idea by [Murat Korkmaz  on Behance.](https://www.behance.net/muratk)

The [Creative Commons license of the design](https://creativecommons.org/licenses/by-nc/4.0/) requires that you give appropriate credit to the author. Therefore, you must do it in the README of your project.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->

## ❓ FAQ <a name="faq"></a>

> Add at least 2 questions new developers would ask when they decide to use your project.

- **[What is the best operating system for developing serious rails applications]**

  - [Unix based environment is the natural environment for developing serious rails applications]

- **[I understand that RVM is the best tool for managing dependencies needed in ROR applications]**

  - [It is recommended because it allows for flexibility in managing dependencies]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE.md) licensed.

Copyright (c) 2022 Esi Ogagaoghene

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

_NOTE: we recommend using the [MIT license](https://choosealicense.com/licenses/mit/) - you can set it up quickly by [using templates available on GitHub](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-license-to-a-repository). You can also use [any other license](https://choosealicense.com/licenses/) if you wish._

<p align="right">(<a href="#readme-top">back to top</a>)</p>
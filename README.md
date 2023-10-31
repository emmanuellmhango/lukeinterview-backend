<a name="readme-top"></a>

<!-- TABLE OF CONTENTS -->

# LUKE INTERNATIONAL DHIS SOFTWARE DEVELOPER INTERVIEW - BACKEND

## 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Deployment](#deployment)
- [👥 Author](#author)
- [🔭 Features](#features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

## 📖 [HOSPITAL MANAGEMENT] <a name="about-project"></a>

This is a backend app that manages the hospital facilities in Malawi. It is built in Ruby on Rails using postgres database. You can access the backend [HERE](https://github.com/emmanuellmhango/lukeinterview-frontend)

It is api only with the following endpoints:

- http://127.0.0.1:3000/users - This is the endpoint for creating users. It accepts the following parameters:
  - first_name
  - last_name
  - email
  - password
- http://127.0.0.1:3000/facilities - This is the endpoint for creating facilities. It accepts the following parameters:
  - facility_code (a combination of 8 unique characters of district_code and a random number)
  - facility_name
  - district_id
  - owner_id

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Framework</summary>
  <ul>
   <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
   <li><a href="https://rubyonrails.org/">Rails</a></li>
  </ul>
</details>

<details>
  <summary>Database</summary>
  <ul>
   <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **[Create Facility]** Allows users to register hospital facilities.
- **[Archive Facility]** Allows user to archive the facility.
- **[Search Facility]** Allows users to search facility.
- **[Filter Facility]** Allows users to filter through a list of facilities.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

## 🚀 Live Demo & preview <a name="live-demo"></a>

- _You can visit the live API [here](https://lukeapi.onrender.com/api/v1/)_

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

```sh
 To have a computer, Internet, Keyboard and Mouse
```

### Setup

Clone this repository to your desired folder:

```sh
git clone https://github.com/emmanuellmhango/lukeinterview-backend.git
```

navigate to the repository

### Install

Install this project with:

```sh
  run bundle install
```

### Usage

To run the project, execute the following command:

```sh
rails s
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHOR -->

## 👥 Author <a name="author"></a>

<b> Emmanuel Mhango</b>

- GitHub: [emmanuellmhango](https://github.com/emmanuellmhango)
- LinkedIn: [emmanuellmhango](https://www.linkedin.com/in/emmanuellmhango)

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project, please add a star

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank Luke International for the opportunity to allow me put this project on public.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

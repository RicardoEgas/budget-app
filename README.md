<a name="readme-top"></a>

<div align="center">

  <h1><b>Budget App</b></h1>

</div>

<!-- TABLE OF CONTENTS -->

## 📗 Table of Contents

- [📖 Budget app ](#-budget-app-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [🚀 Live Demo ](#-live-demo-)
  - [🎬  VIdeo Walkthrough ](#--video-walkthrough-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Usage](#usage)
  - [👥 Author ](#-author-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 Budget app <a name="about-project"></a>

**Budget app** is a mobile web application where you can manage your budget: store a list of transactions associated with a category, allowing users see the total ammount of money accumulated on those transactions.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Server</summary>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
    <li><a href="https://rubyonrails.org/">Rails</a></li>
</details>
<details>
  <summary>Database</summary>
    <li><a href="https://www.postgresql.org/">Postgres</a></li>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **Built using Ruby on Rails**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

## 🚀 Live Demo <a name="live-demo"></a>

- [Live Demo Link](https://budget-app-tgmk.onrender.com/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Video Walkthrough -->

## 🎬  VIdeo Walkthrough <a name="live-demo"></a>

- [Video Demo Link](https://www.loom.com/share/ec4670e2f1c34d13a11a818ff47fda8a?sid=e8283971-9553-4573-b299-7155868404eb)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

```
    ruby >= 3.2.0
    rails >= 7.0
    postgres >- 15.3
```

### Setup

Clone this repository to your desired folder:

```bash
  git clone https://github.com/RicardoEgas/budget-app.git
```

You need to setup database for this project

```
  development = Budget_development
  test        = Budget_test
```

or you can use your own database and change the ```config/database.yml```

```yml
  default: &default
    adapter: postgresql
    encoding: unicode
    pool: 5
    username: [your_username]
    password: [your_password]
    host: localhost

  development:
    <<: *default
    database: [your_database_for_development]

  test:
    <<: *default
    database: [your_database_for_test]
```

### Install

Install this project with:

```bash
  cd budget-app
  bundle install
```

it will install the required gemfile for running the project

### Usage

to use this project:

```ruby
   bin/rails server
```

it will run the the server on ```localhost:3000```

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 👥 Author <a name="author"></a>

👤 **Ricardo Egas**

- GitHub: [@githubhandle](https://github.com/RicardoEgas)
- Twitter: [@twitterhandle](https://twitter.com/RjEgas)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/ricardo-egas-952125136)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- **Add API endpoints**


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/RicardoEgas/budget-app/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project you can share this project to your friend

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

This project was insipired by the work of Gregoire Vella from Behance. Checkout Gregoire Vella's design [here](https://www.behance.net/gallery/19759151/Snapscan-iOs-design-and-branding?tracking_source=)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
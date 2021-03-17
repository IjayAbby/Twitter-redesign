# RoR Capstone Project: Converse Desktop Web App

> I have built a Twitter Redesign for my Ruby on Rails capstone project which is a desktop web app. My project is a social media application called **Converse**

## Homepage

![Homepage](https://user-images.githubusercontent.com/43843720/111085136-135cce00-8527-11eb-8c70-a943e1112f84.png)

## Profile Page

![Profile](https://user-images.githubusercontent.com/43843720/111085230-7ea6a000-8527-11eb-8a2f-2761c37633a7.png)

I had an option to personalise the website and style it my own way. The end goal however was to create anything that someone could share opinions about with people who follow them and vice versa. The design I have emulated is by Design idea by [Gregoire Vella on Behance](https://www.behance.net/gregoirevella).
As per the project specifications, I have followed a user journey to build the following **MVP version** of the app:

1. The user logs in to the app, only by typing the username (a proper authenticated login is **not** a requirement).
2. The user is presented with the homepage (see the *Homepage* screenshot above) that includes:
    - Left-side menu (includes only links to pages that are implemented).
    - *Tweets* tab in the centre (skip *Photos* and *Videos* for this MVP).
    - Right-side section with *Who to follow (*skip *Trending for* this MVP).
3. The *Tweets* section includes:
    - Simple form for creating a tweet.
    - List of all tweets (sorted by most recent) that display tweet text and author details.
4. The *Who to follow* section includes:
    - List of profiles that are not followed by the logged-in user (ordered by most recently added).
5. When the user opens the profile page (see the *Userpage* screenshot above), they can see:
    - Left-side menu (includes only links to pages that are implemented).
    - Cover picture and *Tweets* tab in the centre (skip other tabs and *Tweet to user* form).
    - Right-side section with *Profile detailed info.*
6. The *Profile detailed info* section includes:
    - User photo.
    - Button to follow a user.
    - Stats: total number of tweets, number of followers and number of following users.
 - List of people who follow this user.
7. At the end extend your MVP app with one simple feature of your choice.

I also followed the guidelines of the given design, which included:

- Colors 
- Typographies: font face, size and weight
- Layout: composition and space between elements

While developing the project, I ensured I set-up code linters,used the right gitflow, tested business logic, wrote good commit messages and an informative README.

## Built With

- Ruby
- Ruby on Rails
- Bootstrap
- Postgresql
- Embedded Ruby

## Live Demo

[Live Demo Link](https://twitter-redesign-ror.herokuapp.com/)

## Video Presentation

[Loom](https://www.loom.com/share/1cbc4c4531774cbf86f47502df2cfccd)


## Getting Started

To get a local copy up and running follow these simple example steps. All steps are essential to run this example application. Additional code or steps may be needed in case of installation of various prerequisites and with difference to your Operating System.

### Prerequisites

- Ruby v3.0.0
- Node v12.18.2
- Yarn v1.22.5
- npm v6.14.8
- Sqlite3 v3.33.0
- Rails v6.1.3

### Install

- If you don't have **ruby** installed, you  can find instructions through this [link](https://www.ruby-lang.org/en/documentation/installation/)
- If you don't have **node** installed, you  can find instructions through this [link](https://nodejs.org/en/download/)
- If you don't have **yarn** installed, you  can find instructions through this [link](https://classic.yarnpkg.com/en/docs/install/)
- If you don't have **npm** installed, you  can find instructions through this [link](https://classic.yarnpkg.com/en/docs/install/)
- If you don't have **sqlite3** installed, you  can find instructions through this [link](https://www.sqlite.org/index.html)
- Install **Rails** by following instructions [here](https://guides.rubyonrails.org/getting_started.html#creating-a-new-rails-project-installing-rails-installing-rails)

### Setup
<pre><code>
$ git clone https://github.com/IjayAbby/Twitter-redesign.git
$ cd Twitter-redesign
</code></pre>

Create your database and set it up
<pre><code>
  $ rails db:create
  $ rails db:migrate

</code></pre>

Run <code>$ bundle install</code> to set up gems.

### Usage

Start your server with <code>$ rails s</code> and navigate to the **Converse Desktop Web App** via this [link](http://localhost:3000/)

### Run tests

Run <code> $rspec </code>

<!-- ### Deployment  -->

## Author

👤 **Ijay Abby**

- Github: [@githubhandle](https://github.com/IjayAbby)
- Twitter: [@twitterhandle](https://twitter.com/Ijay_js)
- Linkedin: [linkedin](https://www.linkedin.com/in/ijayabby4/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/IjayAbby/Twitter-redesign/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse
- [Gregoire Vella on Behance](https://www.behance.net/gregoirevella)
- Rails Guides

## 📝 License

This project is [MIT](https://github.com/IjayAbby/Twitter-redesign/blob/feature-twitter/LICENSE) licensed.

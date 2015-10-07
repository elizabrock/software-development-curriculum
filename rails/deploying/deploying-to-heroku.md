# Deploying to Heroku

## Getting Started

- [Sign up](https://signup.heroku.com/signup/dc) for Heroku
- Download the [Heroku Toolbelt](https://toolbelt.heroku.com/)
- Login via the toolbelt in your command shell: `$ heroku login`

## Deploying a Rails app

### Heroku Gems & Postgres
Since Rails 4, Heroku requires the `rails_12factor` gem to enable certain features. Install the gem into your `Gemfile` in a produciton group

```gem 'rails_12factor', group: :production```

Heroku utilizes PostgreSQL database to run your app in deployment. It is therefore best practice to use postgres as your database during development. If you didn't set up your app to use postgres at creation, you will need to add the `'pg'` gem to your `Gemfile` and remove the `sqlite3` gem Rails automatically adds for you.

Add:
```gem 'pg'```

Remove:
```gem 'sqlite3'```

In addition, you'll need to update your `config/database.yml` to use the postgresql adapter

```
  default: &default
    adapter: postgresql
    encoding: unicode
```
  
### Deploying the code

Ok, finally time to actually deploy the code.

**Make sure git is clean locally and changes are merged into the branch you deploy from**

```heroku create <app name>```

```git push heroku master```

Tell Heroku to setup postgres for the app:

```heroku addons:add heroku-postgresql```

```heroku run rake db:migrate```

If your database needs to be seeded:

```heroku run rake db:seed```

That's it! Go visit your app on the webs!


## Resources & Additional Reading

https://toolbelt.heroku.com/

https://devcenter.heroku.com/articles/keys

https://help.github.com/articles/generating-ssh-keys

http://unix.stackexchange.com/questions/58969/how-to-list-keys-added-to-ssh-agent-with-ssh-add

https://devcenter.heroku.com/articles/pre-provision-database

https://github.com/heroku/rails_12factor

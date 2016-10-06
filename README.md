# Happy Belly API

Makers Academy Final Project
----------------------------
This is the backend API for our [app](https://github.com/omgduke/allergy_scanner_frontend), designed to help people with food allergies or dietary requirements quickly know whether they can eat a certain food.

User Stories
------------
```
So that I can find can quickly check ingredients for a specific product,
I want to be able to access this information via the products barcode.

So that I can filter what I cannot eat,
I want to be able to flag specific foods that I can't eat.

So that I can quickly set preferences,
I want to be able to choose default diet profiles.

So that the app can remember what I can't eat,
I want to be able to save details to my user account.

So that I can quickly decide whether I can eat something,
I want to be told if the product I have searched for contains an ingredient I have flagged.

So that I can quickly find the product,
I want to be able to scan the barcode.

So that I can quickly sign in/up,
I want to be able to use my Facebook account.

```

Installation
-------
- Clone this repo `git clone git@github.com:omgduke/allergy_scanner_backend.git`
- Run bundle `bundle install`
- Create your databases - `bin/rake db:create` and `bin/rake db:create RAILS_ENV=test`
- Migrate your databases - `bin/rake db:migrate` and `bin/rake db:migrate RAILS_ENV=test`
- Seed your development database - `bin/rake db:seed`
- To run the api server - `bin/rails s`
- To run the tests, run `rspec`

Use
-------
- The production api is hosted at `http://happy-belly-api.herokuapp.com`
- The api stores user information with the help of [devise](https://github.com/plataformatec/devise) and [devise-token-auth](https://github.com/lynndylanhurley/devise_token_auth)
- Information is available on diet profiles (`GET /diet_profiles`) and the ingredients that users have chosen to avoid - (`GET /users/:user_id/ingredients`)

Authors
-------
- [Alex Robertson](https://github.com/OMGDuke)
- [Mara Wanot](https://github.com/GeekG1rl)
- [Michael Harrison](https://github.com/harrim91)
- [Sity Shah](https://github.com/sitypop)

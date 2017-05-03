[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# favorite-players-api

Custom API that uses `rails-api` as an API template that includes built-in user
authentication (see API section below for user authentication verbs, URL
patterns, and controller actions).

This API uses the MRC (Model/Router/Controller) Rails pattern as well as Rails
database migrations on a `favorite_players` table.

ERD relationship is ONE `user` can have MANY `favorite_players`.

See API section below for `favorite_players` verbs, URL patterns, and controller
actions.

## Heroku API URL

-   [`Heroku API URL`](https://hidden-cliffs-39330.herokuapp.com/)

## GitHub Application Repositories

-   [`Front-End Client`](https://github.com/rlarsonil71/food-wine-rails-client)
-   [`Back-End API`](https://github.com/rlarsonil71/food-wine-rails-api)

## Front-End Client Application URL

-   [`Client URL`](https://rlarsonil71.github.io/food-wine-rails-client/)

## Project Requirements

-   [`full-stack-project`](https://github.com/ga-wdi-boston/full-stack-project)

## Project Dependencies

-   [`rails-api-template`](https://github.com/ga-wdi-boston/rails-api-template)
-   [`rails-heroku-setup-guide`](https://github.com/ga-wdi-boston/rails-heroku-setup-guide)

## Installation

1.  Follow README.md file in https://github.com/ga-wdi-boston/rails-api-template.

## Structure

This API follows the standard API project structure in Rails 4.

`curl` command scripts are stored in [`scripts`](scripts) with names that
correspond to API actions.

User authentication is built-in.

### Database Structures (Schemas)

```rb
create_table "favorite_players", force: :cascade do |t|
  t.string   "player_name"
  t.string   "team_name"
  t.string   "sport"
  t.string   "position"
  t.integer  "player_number"
  t.datetime "created_at",    null: false
  t.datetime "updated_at",    null: false
  t.integer  "user_id"
  t.index ["user_id"], name: "index_favorite_players_on_user_id", using: :btree
end

create_table "users", force: :cascade do |t|
  t.string   "email",           null: false
  t.string   "token",           null: false
  t.string   "password_digest", null: false
  t.datetime "created_at",      null: false
  t.datetime "updated_at",      null: false
  t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  t.index ["token"], name: "index_users_on_token", unique: true, using: :btree
end

add_foreign_key "examples", "users"
add_foreign_key "favorite_players", "users"
```

## API

The pattern provided for the built-in user authentication documentation was
followed copied from the https://github.com/ga-wdi-boston/rails-api-template.

Scripts are included in [`scripts`](scripts) to test built-in actions for the
custom API.

### Authentication

| Verb   | URL Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| DELETE | `/sign-out/:id`        | `users#signout`   |

#### POST /sign-up

Request:

```sh
curl http://localhost:4741/sign-up \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'
```

```sh
EMAIL=ron@wdi.com PASSWORD=wdi scripts/sign-up.sh
```

Response:

```md
HTTP/1.1 201 Created
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 1,
    "email": "ron@wdi.com"
  }
}
```

#### POST /sign-in

Request:

```sh
curl http://localhost:4741/sign-in \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'"
    }
  }'
```

```sh
EMAIL=ron@wdi.com PASSWORD=wdi scripts/sign-in.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 1,
    "email": "ron@wdi.com",
    "token": "BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f"
  }
}
```

#### PATCH /change-password/:id

Request:

```sh
curl --include --request PATCH "http://localhost:4741/change-password/$ID" \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'
```

```sh
ID=1 OLDPW=wdi NEWPW=ga TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f scripts/change-password.sh
```

Response:

```md
HTTP/1.1 204 No Content
```

#### DELETE /sign-out/:id

Request:

```sh
curl http://localhost:4741/sign-out/$ID \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"
```

```sh
ID=1 TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f scripts/sign-out.sh
```

Response:

```md
HTTP/1.1 204 No Content
```

### Users

| Verb | URI Pattern | Controller#Action |
|------|-------------|-------------------|
| GET  | `/users`    | `users#index`     |
| GET  | `/users/1`  | `users#show`      |

#### GET /users

Request:

```sh
curl http://localhost:4741/users \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"
```

```sh
TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f scripts/users.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "users": [
    {
      "id": 2,
      "email": "ron@wdi.com"
    },
    {
      "id": 1,
      "email": "ga@wdi.com"
    }
  ]
}
```

#### GET /users/:id

Request:

```sh
curl --include --request GET http://localhost:4741/users/$ID \
  --header "Authorization: Token token=$TOKEN"
```

```sh
ID=2 TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f scripts/user.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 2,
    "email": "ron@wdi.com"
  }
}
```

### FavoritePlayers

| Verb   | URL Pattern                 | Controller#Action                      |
|--------|-----------------------------|----------------------------------------|
| POST   | `/favorite_players`         | `favorite_players#create`              |
| GET    | `/my-favorite-players`      | `favorite_players#my_favorite_players` |
| GET    | `/my-favorite-players/:id`  | `favorite_players#favorite_player`     |
| PATCH  | `/favorite_players/:id`     | `favorite_players#update`              |
| DELETE | `/favorite_players/:id`     | `favorite_players#destroy`             |

### Reset Database without dropping

This is not a task developers should run often, but it is sometimes necessary.

**locally**

```sh
bin/rake db:migrate VERSION=0
bin/rake db:migrate db:seed db:examples
```

**heroku**

```sh
heroku run rake db:migrate VERSION=0
heroku run rake db:migrate db:seed db:examples
```

## [License](LICENSE)

1.  All content is licensed under a CC­BY­NC­SA 4.0 license.
1.  All software code is licensed under GNU GPLv3. For commercial use or
    alternative licensing, please contact legal@ga.co.

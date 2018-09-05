# Treant

A small helper for your Seeds file.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "treant"
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install treant
```

## Usage

Generate seed data for given Active Record `model`:

```ruby
class User < ApplicationRecord
end

UserSeeder = Seeder.new(User, :email)

UserSeeder.seed do |u|
  u.email = 'user@example.com'
  u.name = 'Bob'
end

User.count      # => 1
User.first.name # => 'Bob'

# If the seed data is changed (except for the `keys` values),
# the record will be updated:

UserSeeder.seed do |u|
  u.email = 'user@example.com'
  u.name = 'Alice'
end

User.count      # => 1
User.first.name # => 'Alice'
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

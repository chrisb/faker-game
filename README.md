# faker-game

## Faker::Game

### Game Franchise Name

```ruby
Faker::Game.franchise # => "Titan Battler"
```

### Game Ability Measurement

```ruby
Faker::Game.ability_measurement # => "Mana"
```

### Game Currency

Generates the singular form of an in-game currency.

```ruby
Faker::Game.currency # => "Gem"
```

### Hero

```ruby
Faker::Game.hero # => "Knight"
```

### Enemy

```ruby
Faker::Game.enemy # => "Ghoul"
```

### Complex Game Name Prefix

Includes the name of a fictitious game creator.

```ruby
Faker::Game.prefix # => "Ryley Lang's Witch Fighter"
```

### Game Subtitle

```ruby
Faker::Game.subtitle # => "Silver Titans"
```

### Game Name

Generates a full game name, sometimes with a franchise title.

```ruby
Faker::Game.name # => "Ghoul Killer IV"
```

### Game Name with Franchise

Forces a franchise prefix.

```ruby
Faker::Game.name_with_franchise # => "Aida Bahringer's Insurgent Hunter 4: Iron Tangos"
```

## Faker::Game::Place

### Place

Generates an RPGesque name for a fictional region.

```ruby
Faker::Game::Place.name # => "The Snowy Caves"
```

## Faker::Game::Character

These are all RPG/fantasy-style.

### Name

```ruby
Faker::Game::Character.name # => "Byrlad Smithearthgrad"
```

### Name with Title

Chance of either a neutral, evil, or good title.

```ruby
Faker::Game::Character.name_with_title # => "Byrwren Tyrwindearthborn, the Guard of Winterrealm"
```

## Faker::Game::Achivement

### Name

Selects one of the following achievement names at random.

```ruby
Faker::Game::Achievement.name # => "Gather 170 Orbs"
```

### Assassination Achievement

```ruby
Faker::Game::Achievement.assassination # => "Kill The Dark Wrencher Of Beasts"
```

### Earn X Things

```ruby
Faker::Game::Achievement.earn # => "Find 1070 Gems"
```

### Discover a Place

```ruby
Faker::Game::Achievement.discover # => "Discover The Icy South"
```

### Kill X Enemies

```ruby
Faker::Game::Achievement.kill_enemies # => "Kill 240 Insurgents"
```

## Faker::Game::CharacterTitle

Poke around the source for all sorts of helpers for generating these.

## Good

```ruby
Faker::Game::CharacterTitle.good # => "the light-bringer"
```

## Evil

```ruby
Faker::Game::CharacterTitle.evil # => "horrible flesh mutilator"
```

## Neutral

```ruby
Faker::Game::CharacterTitle.neutral # => "hunter of hinterland"
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/chrisb/faker-game.

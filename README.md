# 3llo - Interactive CLI for Trello

3llo is the terminal client for Trello, which helps you manage Trello cards without
leaving your awesome terminal.

[![video](intro.gif)](https://asciinema.org/a/eu1q5el69kub7si79dubeyfn6)

3llo was inspired by the awesome
[rainbowstream](https://github.com/DTVD/rainbowstream) and
[facy](https://github.com/huydx/facy).

## Why this named 3llo?

Good to know that `3 == "tre"` in Swedish.

## Installation

```ruby
[sudo] gem install 3llo
```

You also need to have these environment variables set in your shell.

```
export TRELLO_USER=your_username
export TRELLO_KEY=your_key
export TRELLO_TOKEN=your_token
```

## Usage

There are a couple of commands available in 3llo.

* `board list`: List your board
* `board select <board_id>`: Select the active board.
* `card list`: List all cards of the active board.
* `card list mine`: List all your cards of the active board.
* `card show <card_id>`: Show card information.
* `card move <card_id> <list_id>`: Move card to a specified list.
* `card self-assign <card_id>`: Self-assign a card.
* `list list`: List all the lists of the active board.
* `help`: Show help menu.
* `exit`: Exit.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/qcam/3llo. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

### Development Roadmap

* Add card.
* Archive card.
* Show card member.
* Archive all cards in list.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
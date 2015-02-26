# Ruboty::SlackXmpp2rpc

Listen by XMPP
Say by WebAPI(RPC) https://api.slack.com/web

Combine https://github.com/r7kamura/ruboty-slack with https://github.com/morou/slack-ruby-gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruboty-slack_xmpp2rpc', github: 'amacou/ruboty-slack_xmpp2rpc'
```

And then execute:

    $ bundle

## ENV

```
RUBOTY_NAME='ruboty'               #Bot name
SLACK_PASSWORD='password.abcdefg'  #Account's XMPP password
SLACK_ROOM='general,bot_test'      #Room name to join in at first
SLACK_TEAM='teamname'              #Account's team name
SLACK_USERNAME='username'          #Account's username
SLACK_TOKEN='xoxp-abcdefg-abcdefg' #Account's OAuthToken
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/ruboty-slack_xmpp2rpc/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

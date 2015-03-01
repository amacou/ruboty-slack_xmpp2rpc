require 'slack'
require 'ruboty/adapters/slack'

class Ruboty::Adapters::SlackXMPP2RPC < Ruboty::Adapters::Slack
  include Mem
  
  env :SLACK_TOKEN, "access token"
  env :SLACK_ICON_URL, "icon url for this message", optional: true
  env :SLACK_ICON_EMOJI, "emoji icon for this message", optional: true

  def init
    @rpc_client = Slack::RPC::Client.new(ENV['SLACK_TOKEN'])
  end

  def say(message)
    @rpc_client.chat.postMessage(convert_to_rpc_message(message))
  end

  def convert_to_rpc_message(message)
    {
      text: message[:code] ? "```\n#{message[:body]}\n```" : message[:body],
      channel: '#' + message[:to].split('@').first,
      username: robot.name
    }.tap do |m|
      m[:icon_url] = icon_url if icon_url
      m[:icon_emoji] = emoji_icon if emoji_icon
    end
  end

  def icon_url
    ENV['SLACK_ICON_URL']
  end
  memoize :icon_url
  
  def emoji_icon
    ENV['SLACK_ICON_EMOJI']
  end
  memoize :emoji_icon
end

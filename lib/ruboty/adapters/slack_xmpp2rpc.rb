require 'slack'
require 'ruboty/adapters/slack'

class Ruboty::Adapters::SlackXMPP2RPC < Ruboty::Adapters::Slack
  env :SLACK_TOKEN, "access token"
  
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
    }
  end
end

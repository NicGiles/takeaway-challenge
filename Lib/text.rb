require 'twilio-ruby'

class Text

account_sid = "AC810790c0a759e3d986b68f8d494e968c" # Your Account SID from www.twilio.com/console
auth_token = "3a2988c7efc5acc036a2816d171f765c"   # Your Auth Token from www.twilio.com/console

@client = Twilio::REST::Client.new account_sid, auth_token
message = @client.messages.create(
    body: "Thanks for your order, it'll arrive within the hour",
    to: +447969238017,    # Replace with your phone number
    from: +447480486293)  # Replace with your Twilio number

puts message.sid

end

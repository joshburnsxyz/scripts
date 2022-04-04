#!/usr/bin/env python3

# Dependencies
# $ pip3 install twilio

# Import dependencies
import os
from twilio.rest import Client

# Setup
client = Client(account_sid, auth_token)
account_sid = os.environ["TWILIO_ACCOUNT_SID"]
auth_token = os.environ["TWILIO_AUTH_TOKEN"]
message_content = "Test message from script"
from_no = "+61422222222"

targets_lsit = [
  "+61422222222",
  "+61433333333",
  "+61444444444",
  "+61455555555",
  "+61466666666",
  "+61477777777",
]

# Create message object and a request to send it for every entry in the list
for i in targets_list:
  message = client.messages.create(body=message_content, from_=from_no, to=i)
  status_str = "%s -> MESSAGE STATUS: %s".format(i, message.status)
  print(status_str)

class WebhooksController < ApplicationController
	def show
webhook_notification = Braintree::WebhookNotification.parse(
    request.params["bt_signature"],
    request.params["bt_payload"]
  )
  puts "[Webhook Received #{webhook_notification.timestamp}] Kind: #{webhook_notification.kind}"
  puts webhook_notification.timestamp
  return 200
	end
end

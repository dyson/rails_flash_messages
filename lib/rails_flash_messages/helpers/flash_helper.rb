module RailsFlashMessages::FlashHelper

  def rails_flash_messages
    flash_messages = flash.collect do |type, message|
      if message.is_a?(Hash)
        header = message['header']
        body = message['body']
      else
        header = message
      end
      render partial: 'rails_flash_messages/flash_messages', locals: { type: type, header: header, body: body }
    end
    flash.discard
    flash_messages.join.html_safe
  end

end

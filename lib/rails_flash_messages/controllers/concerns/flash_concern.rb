require 'active_support/concern'

module RailsFlashMessages::FlashConcern

  extend ActiveSupport::Concern

  included do

    def set_flash(type, *params)
      options = {locals: {}, now: false}
      options = options.update(params.extract_options!.symbolize_keys)
      options[:scope] ||= "rails_flash_messages.#{controller_name}.#{action_name}.#{type}"
      message = t(options[:scope], options[:locals])
      if message.is_a?(Hash)
        message.each_key { |key| message[key] = t("#{options[:scope]}.#{key}", options[:locals]) }
        message = message.stringify_keys
      end
      if options[:now]
        flash.now[type] = message
      else
        flash[type] = message
      end
    end

  end

end

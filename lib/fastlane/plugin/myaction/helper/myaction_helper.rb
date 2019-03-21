module Fastlane
  module Helper
    class MyActionHelper
      # class methods that you define here become available in your action
      # as `Helper::IxguardHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the my_action plugin helper!")
      end
    end
  end
end

module Fastlane
  module Helper
    class MyTestHelper
      # class methods that you define here become available in your action
      # as `Helper::MyTestHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the my_test plugin helper!")
      end
    end
  end
end

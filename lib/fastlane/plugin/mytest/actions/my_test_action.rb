module Fastlane
  module Actions
    class MyTestAction < Action
      def self.run(params)
        UI.important("The value is: #{params[:test_key]}")
      end

      def self.description
        "MyTest build plugin"
      end

      def self.authors
        ["Jacob Aleksynas"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "MyTest build plugin"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :test_key,
                                  env_name: "TEST_KEY",
                               description: "A value that should start with 'a'",
                                  optional: false,
                                      type: String,
                              verify_block: proc do |value|
                                              UI.user_error!("The value does not start with 'a'") unless value.start_with? "a"
                                            end,
                                      )
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://github.com/fastlane/fastlane/blob/master/fastlane/docs/Platforms.md
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end

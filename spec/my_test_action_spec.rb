describe Fastlane::Actions::MyTestAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The my_test plugin is working!")

      Fastlane::Actions::MyTestAction.run(nil)
    end
  end
end

require 'spec_helper'
require 'omniauth-klarna'

describe OmniAuth::Strategies::Klarna do
  subject do
    OmniAuth::Strategies::Klarna.new(nil, @options || {})
  end

  it_should_behave_like 'an oauth2 strategy'

  describe '#client' do
    it 'has correct site' do
      subject.client.site.should eq('https://omg.I.dont.know')
    end
  end

  describe '#callback_path' do
    it "has the correct callback path" do
      subject.callback_path.should eq('/auth/klarna/callback')
    end
  end
end

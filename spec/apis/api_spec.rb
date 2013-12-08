require File.expand_path("../../spec_helper", __FILE__) 

describe MagicT::API do
  include Rack::Test::Methods

  def app
    MagicT::API
  end

  describe MagicT::API do
    describe "GET /v1/info" do
      it "returns data info from database" do
        get "/v1/info"
        last_response.status.should == 200
        JSON.parse(last_response.body).should == []
      end
    end
  end
end

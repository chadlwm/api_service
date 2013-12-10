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
        JSON.parse(last_response.body).should == {'result' => 'success', 'result-code' => 200, 'message' => 'when you see this mesage, that means the server is running and serving for you, thans for using MagicT.'}
      end
    end

    describe "POST /v1/do" do
      it "post log data to server" do
        log_data = {"login_name" => "chad test","function_name" => "grape api test","function_data" => "\/v1/do","mac_address" => "FE:FE:FE:FE","remarks" => "this is a api frameword test ","pc_further_info" => "so is sinature test","target_product" => "gws test"}
        post "/v1/do", {:do_data => log_data.to_s.gsub('=>',':') }
        last_response.status.should == 200
        JSON.parse(last_response.body).should == {'result' => 'success', 'result-code' => 200}
      end
    end

  end
end

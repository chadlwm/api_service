require File.expand_path("../../spec_helper", __FILE__) 

describe Log do
  include Rack::Test::Methods
  
  describe "create info" do
      it "set attributes properly" do
        log_data = {"login_name" => "chad test","function_name" => "grape api test","function_data" => "\/v1/do","mac_address" => "FE:FE:FE:FE","remarks" => "this is a api frameword test ","pc_further_info" => "so is sinature test","target_product" => "gws test"}
        log = Log.new
        log.create_info(log_data)
        log.login_name.should      == log_data['login_name']
        log.function_name.should   == log_data['function_name']
        log.function_data.should   == log_data['function_data']
        log.mac_address.should     == log_data['mac_address']
        log.remarks.should         == log_data['remarks']
        log.pc_further_info.should == log_data['pc_further_info']
        log.target_product.should  == log_data['target_product']
      end
  end
end

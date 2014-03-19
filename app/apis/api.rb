module MagicT
  class API < Grape::API

    version 'v1', using: :path
    format :json

    params do
      #requires :id, type: Integer
      #optional :text, type: String, regexp: /^[a-z]+$/
    end

    desc "record the log data with post"
    post :do do
      log = Log.new
      log.remote_ip = request.env["HTTP_X_FORWARDED_FOR"] || request.ip
      log.create_info(JSON.parse(params["do_data"]))
      if(log.save)
        status 200
        result = {'result' => 'success', 'result-code' => 200}
      else
        status 500
        result = {'result' => 'failed', 'result-code' => 500}
      end
      result
    end

    desc "test get data from db"
    get :info do
      {'result'      => 'success', 
       'result-code' => 200, 
       'message'     => "when you see this mesage, that means the server is running in #{ENV['RACK_ENV']} and serving for you, thans for using MagicT."}
    end
  end
end

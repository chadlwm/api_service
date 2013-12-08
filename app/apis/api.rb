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
      p params
      log = Log.new
      log.remote_ip = request.env["HTTP_X_FORWARDED_FOR"] || request.ip
      log.create_info(JSON.parse(params["do_data"]))
      if(log.save)
        ret = {'result' => 'success', 'result-code' => 200}
      else
        ret = {'result' => 'failed', 'result-code' => 500}
      end
      #{'name' => 'chad', 'description' => 'this is public time line.'}
    end

    desc "test get data from db"
    get :info do
      a = {'result' => 'success'}
      {'rest' => a.to_s}
    end
  end
end

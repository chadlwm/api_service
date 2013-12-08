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
      p params[:id]
      p params
      {'name' => 'chad', 'description' => 'this is public time line.'}
    end

    desc "test get data from db"
    get :info do
     {'result' => 'success'}
    end
  end
end

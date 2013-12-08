#encoding: utf-8
# == Schema Information
#
# Table name: logs
#
#  id              :integer          not null, primary key
#  remote_ip       :string(255)
#  login_name      :string(255)
#  function_name   :string(255)
#  function_data   :text
#  mac_address     :string(255)
#  remarks         :text
#  target_product  :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  pc_further_info :string(2000)
#

class Log < ActiveRecord::Base
  attr_accessible :function_data, :function_name, :login_name, :mac_address, :remarks, :remote_ip, :target_product, :pc_further_info, :search_type
  
  def create_info(log)
  	self.login_name      = log["login_name"]
  	self.function_name   = log["function_name"]
  	self.function_data   = log["function_data"]
  	self.mac_address     = log["mac_address"]
  	self.remarks         = log["remarks"]
  	self.pc_further_info = log["pc_further_info"]
  	self.target_product  = log["target_product"]
  end
end

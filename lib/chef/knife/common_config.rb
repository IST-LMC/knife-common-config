require 'chef/knife'
require 'chef/config'

class Chef
  class Knife
    class CommonConfig < Knife
			if File.exist?("#{ENV['HOME']}/.chef/knife_common.rb")
				Chef::Config.from_file("#{ENV['HOME']}/.chef/knife_common.rb")
			end

			if File.exist?("#{ENV['HOME']}/.chef/knife_common_custom.rb")
				Chef::Config.from_file("#{ENV['HOME']}/.chef/knife_common_custom.rb")
			end
		end
	end
end
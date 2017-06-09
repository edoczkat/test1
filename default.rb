#
#Cookbook Name:: apache
#Recipe:: default

package 'httpd'

template '/var/www/httpd/index.html' do
	source 'index.html.erb'
end

service 'httpd' do
	action [ :start, :enable ]
end

file 'hello.txt' do #file is a type, as well as a method
	# ('hello.txt') is the name, as well as the 1st parameter.
	#starting with 'do' and ending with 'end' is a block, as well as the 2nd parameter.
	content 'Hello, world!' #this line contains the properties, and is contained in the block.
	action :create #this line shows the action, and is contained in the block.
end #'end' is the end of the block, as well as the end of the 2nd parameter. 

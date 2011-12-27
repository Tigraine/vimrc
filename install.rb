require 'rubygems'
vimrc = File.join(ENV['HOME'], '.vimrc')
bashprofile = File.join(ENV['HOME'], '.bash_profile')

if File.exists?(vimrc)
	puts "vimrc already exists moving aside"
	File.rename(vimrc, File.join(ENV['HOME'], ".vimrc-#{Time.now.strftime("%d.%M.%Y")}"))
end
`ln -s ~/.vim/vimrc ~/.vimrc`
puts "Created vimrc"

if File.exists?(bashprofile)
	puts "bash profile already exists moving aside"
	File.rename(bashprofile, File.join(ENV['HOME'], ".bash_profile-#{Time.now.strftime("%d.%M.%Y")}"))
end
`ln -s ~/.vim/bash_profile ~/.bash_profile`
puts "Created bash_profile"

#rubydoc.info
#load the default recipe from the apache cookbook

recipe_file = 'cookbooks/apache/recipes/default.rb'

unless File.exist?(recipe_file)
	puts "could not find the file #{recipe_file}"
	exit
end

recipe_contents = File.read(recipe_file)

def package(name)
	puts "Installing the package called '#{name}'"
end

def template(name)
	puts "Creating the template at '#{name}'"
end

def service(name)
	puts "????? the service called '#{name}'"
end

#evaluates the recipe file
eval recipe_contents

#display the contents of the recipe file
puts recipe_contents

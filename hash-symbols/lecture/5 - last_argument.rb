def tag(tag, title, attributes = {})
	attr_string = attributes.map do |key, value|
		" #{key}='#{value}'"
	end.join

	"<#{tag}#{attr_string}>#{title}#{subtitle}</#{tag}>"
end

# without the attributes argument
# possible because the tag method sets a default value!
tag('h2', 'Hello world')

# with attributes argument, which is a hash
# because it's the last argument, we can abandon the { }
# so these two methods are the same!
tag('a', 'Click me!', href: 'www.google.com', class: 'link')
tag('a', 'Click me!', { href: 'www.google.com', class: 'link' })

# the order of arguments matter (tag, title, attributes)
# the order of key-value pairs within a hash doesn't matter
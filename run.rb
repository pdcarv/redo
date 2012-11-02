#!/usr/bin/env ruby

require 'polyglot'
require 'treetop'
require_relative 'redo'

$file_glob_list = ["*.rb"]

def create_file_list(dir)
	file_list ||= []

	$file_glob_list.each do |file_glob|
		rgfiles = File.join("**", file_glob)
		file_list = Dir.glob(rgfiles)
	end
	file_list
end

def parse_file(file)
  parser = TodoParser.new
	todos ||= []
	
	IO.foreach(file) do |line|
		tree = parser.parse(line)
		todos << tree.value.chomp! unless tree.nil?
	end

	todos
end

def pretty_print_please(todos)
	todos.each do |file,todos|
		unless todos.empty?
			puts "Todos for " + file
			todos.each do |todo|
				puts " -" + todo
			end
			puts "\n"
		end
	end
end

todos = Hash.new

ARGV.each do |dir|
	create_file_list(dir).each do |file|
		unless File.zero?(file)
			todos[file] = parse_file(file)
		end
	end
end

pretty_print_please(todos)


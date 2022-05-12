# require 'nokogiri'
# require 'open-uri'
# require 'pry'

# require_relative './course.rb'


class Course
    # has a setter and a getter method for title, a course's schedule and
    # a course's description
    attr_accessor :title, :schedule, :description
  
    @@all = []
  
    def initialize
      @@all << self
    end
  
    def self.all
        # returns an array of all the instances of the Course class
      @@all
    end
  
    def self.reset_all
      @@all.clear
    end
  end
  

class Scraper

  def get_page
    # uses Nokogiri to get the HTML from a web page
    doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))

    # doc.css(".post").each do |post|
    #  course = Course.new
    #  course.title = post.css("h2").text
    #  course.schedule = post.css(".date").text
    #  course.description = post.css("p").text
    # end

    # binding.pry
  end

  def get_courses
    # uses a CSS selector to return an array of Nokogiri XML elements representing 
    # the courses described on the web page we are scraping
    self.get_page.css(".post")
  end

  def make_courses
    # iterates over the courses array returned by #get_courses and creates a new 
    # Course instance out of each array element.
    self.get_courses.each do |post|
      course = Course.new
      course.title = post.css("h2").text
      course.schedule = post.css(".date").text
      course.description = post.css("p").text
    end
  end

  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title && course.title != ""
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end

end

# Scraper.new.get_page
Scraper.new.print_courses
# open-uri is the tool to open the web 
# nokogiri is the tool to process html to turn into something we can work with

We did it! We have the working code for grabbing:

# The page itself:
# doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))

# The collection of course offerings:
# doc.css(".post")

# The title of an individual course offering:
# doc.css(".post").first.css("h2").text

# The schedule of an individual course offering:
# doc.css(".post").first.css(".date").text

# The description of an individual course offering:
# doc.css(".post").first.css("p").text


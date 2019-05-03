require 'nokogiri'

require 'pry'

def create_project_hash
  
  html = File.read('fixtures/kickstarter.html')
 
  kickstarter = Nokogiri::HTML(html)
  binding.pry

  # projects: kickstarter.css("li.project.grid_4")
  # title: project.css("h2.bbcard_name strong a").text
  # image_link: project.css("div.project-thumbnail a img").attribute("src").value
  # description: project.css("p.bbcard_blurb").text
  # location: project.css(".location-name").text
  # percentage_funded: project.css(".first.funded strong").text.gsub("%","").to_i
  
  projects = {}
  kickstarter.css("li.project.grid_4").each do |project|
    
    
end
# exercise 03 : file format
=begin
We select data with two different formats, parsed the files and 
built a common format, sorted the data and then exported to CSV 
and XLS files.
=end

require 'json'
require 'nokogiri'
require 'axlsx'
require 'csv'

# Time to open up that XML file, find the item elements, 
# and parse them with Nokogiri
slashdot_articles = []
File.open("slashdot.xml","r") do |f|
  doc = Nokogiri::XML(f)
  slashdot_articles = doc.css('item').map { |i| # make a hash for your array:
    {
      title: i.at_css('title').content,
      link: i.at_css('link').content,
      summary: i.at_css('description').content
    }
  }
end

=begin
At this point, the slashdot_articles array should be populated with the 
articles from the slashdot XML RSS feed. We have an array of hashes with 
fields we want to export. We found all the articles with the doc.css('item') 
call and then chained it through the map block to pull out the fields we 
want to export. We are ready to do a similar maneuver on the 
feedzilla.json file.
=end

feedzilla_articles = []
File.open("feedzilla.json", "r") do |f|
  items = JSON.parse(f.read)
  feedzilla_articles = items['articles'].map { |a|
    {
      title: a['title'],
      link: a['url'],
      summary: a['summary']
    }
  }
end

# sort the combined results based on the title.
sorted_articles = (feedzilla_articles + slashdot_articles).sort_by {|a| a[:title]}

# write the two export files:

# first file : csv format
CSV.open("article.csv", "wb") do |csv|
  sorted_articles.each { |a| csv << [a[:title], a[:link], a[:summary]]}
end

# second file: xlsx (excel) format
pkg = Axlsx::Package.new
pkg.workbook.add_worksheet(:name => "Articles") do |sheet|
 sorted_articles.each { |a| sheet.add_row [a[:title], a[:link], a[:summary]] }
end
pkg.serialize("articles.xlsx")










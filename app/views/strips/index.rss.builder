xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "MYKomiks"
    xml.description "Web Komik Strips"
    xml.link "http://mykomiks.com/"
    xml.language "en"

    for strip in @lstrips
      xml.item do
        xml.title strip.title
        xml.description strip.story
        xml.pubDate strip.created_at.to_s(:rfc822)
        xml.author "Manish Wadhwa"
        xml.link strip_url(strip)
        xml.guid strip_url(strip)
      end
    end
  end
end

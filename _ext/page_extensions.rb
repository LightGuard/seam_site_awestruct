require 'hpricot'
require 'awestruct/front_matter_file'

# General extensions to all pages
#
# Author:: Jason Porter
module PageExtensions
    module PeopleFinder
        def find_by_github(id)
            site.people.find { |p| p.github == id }
        end

        def preferred_value(needle, github_id, default_value)
            found_person = find_by_github(github_id)
            if found_person.nil?
                return default_value
            end
            found_person.send("#{needle}") || default_value
        end
    end

    # Hpricot extensions to query / modify the HTML content of a page
    #
    # NOTE: Any changes you want to make must be done BEFORE displaying hpricot_content on the page
    module DomPage
        @hpricot_content

        def hpricot_content
            @hpricot_content = Hpricot(self.content) if @hpricot_content.nil?
            @hpricot_content.to_html
        end

        def remove_from_content(selector)
            @hpricot_content = Hpricot(self.content) if @hpricot_content.nil?

            @hpricot_content.search(selector).remove.to_html
        end
    end

    class PageExtensionsAdditionExtension
        def execute(site)
            site.pages.each do |page|
                if page.is_a? Awestruct::FrontMatterFile
                    page.extend(PeopleFinder)
                    page.extend(DomPage)
                end
            end
        end
    end
end

require 'rest-client'
require 'json'

class Modules
    def execute(site)
        site.pages.each do |page|
            if page.source_path =~ /module/ and page.is_a?(Awestruct::FrontMatterFile)
                jira_repsonse = RestClient.get "https://issues.jboss.org/rest/api/latest/project/#{page.jira_project}"
                jira_json = JSON.parse jira_repsonse.body

                # Fix the dates
                jira_json['versions'].each do |version|
                    version['releaseDate'] = DateTime::parse(version['releaseDate']).to_date if version['released']
                end
                page.send("versions=", jira_json['versions'])

                contributor_response = RestClient.get("https://api.github.com/repos/seam/#{page.module_name}/contributors")
                module_contributors = JSON.parse(contributor_response.body)
                page.send("contributors=", module_contributors)
            end
        end
    end
end

require 'rest-client'
require 'json'

# Retrieves versions, contributors and related data for
# each module page.
#
# Author:: Jason Porter
class ProjectModules
    def execute(site)
        site.pages.each do |page|
            if page.source_path =~ /module/ and page.is_a?(Awestruct::FrontMatterFile)
                jira_repsonse = RestClient.get "https://issues.jboss.org/rest/api/latest/project/#{page.jira_project_key}"
                jira_json = JSON.parse jira_repsonse.body

                # Fix the dates
                jira_json['versions'].each do |version|
                    version['releaseDate'] = DateTime::parse(version['releaseDate']).to_date() if version['released']
                    # TODO: retrieve release notes for the version and add it to the page
                    version['releaseNotes'] = Hpricot(RestClient.get("https://issues.jboss.org/secure/ReleaseNote.jspa?projectId=#{page.jira_project_id}&version=#{version['self'].split('/').last}").body).at('#editcopy').following_siblings.to_html
                end

                contributor_response = RestClient.get("https://api.github.com/repos/seam/#{page.module_name}/contributors")
                module_contributors = JSON.parse(contributor_response.body)

                page.send("versions=", jira_json['versions'])
                page.send("contributors=", module_contributors)
                site.send("github_user=", Hash.new) unless site.respond_to? "github_user"

                module_contributors.each do |contributor|
                    unless site.github_user.has_key? contributor['login']
                        github_contributor_response = RestClient.get("https://api.github.com/users/#{contributor['login']}")
                        github_contributor_json = JSON.parse github_contributor_response

                        site.github_user[contributor['login']] = github_contributor_json
                    end
                end
            end
        end
    end
end

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
                jira_tmp = File.join(site.tmp_dir, page.output_filename + "_jira.json")
                unless File.exists?(jira_tmp) and (File.mtime(jira_tmp) <=> (Time.now - 86400)) == 1
                    jira_repsonse = RestClient.get "https://issues.jboss.org/rest/api/latest/project/#{page.jira_project_key}"
                    jira_json = JSON.parse jira_repsonse.body

                        # Fix the dates
                    jira_json['versions'].each do |version|
                        version['releaseDate'] = DateTime::parse(version['releaseDate']).to_date() if version['released']
                        version['releaseNotes'] = Hpricot(RestClient.get("https://issues.jboss.org/secure/ReleaseNote.jspa?projectId=#{page.jira_project_id}&version=#{version['self'].split('/').last}").body).at('#editcopy').following_siblings.to_html
                    end
                    JSON.dump(jira_json, File.open(jira_tmp, "w"))
                else
                    jira_json = JSON.parse(File.read(jira_tmp))
                end

                module_contributor_tmp = File.join(site.tmp_dir, page.output_filename + "_contributors.json")
                unless File.exists?(module_contributor_tmp) and (File.mtime(module_contributor_tmp) <=> (Time.now - 86400)) == 1
                    contributor_response = RestClient.get("https://api.github.com/repos/seam/#{page.module_name}/contributors")
                    module_contributors = JSON.parse(contributor_response.body)
                    JSON.dump(module_contributors, File.open(module_contributor_tmp, "w"))
                else
                    module_contributors = JSON.parse(File.read(module_contributor_tmp))
                end

                page.send("versions=", jira_json['versions'])
                page.send("contributors=", module_contributors)

                unless File.exists?(File.join(site.tmp_dir, "github_contributors.dmp")) and (File.mtime(File.join(site.tmp_dir, "github_contributors.dmp")) <=> (Time.now - 3600)) == 1
                    site.send("github_user=", Hash.new) unless site.respond_to? "github_user"
                    module_contributors.each do |contributor|
                        unless site.github_user.has_key? contributor['login']
                            github_contributor_response = RestClient.get("https://api.github.com/users/#{contributor['login']}")
                            github_contributor_json = JSON.parse github_contributor_response

                            site.github_user[contributor['login']] = github_contributor_json
                        end
                    end
                else
                    site.send("github_user=", Marshal.load(File.new(File.join(site.tmp_dir, "github_contributors.dmp"))))
                end
            end
        end
        Marshal.dump(site.github_user, File.open(File.join(site.tmp_dir, "github_contributors.dmp"), "w"))
    end
end

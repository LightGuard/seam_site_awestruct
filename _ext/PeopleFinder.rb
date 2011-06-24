module PeopleFinder
    #TODO: I know I could do this with some meta programing, but don't care right now
    def find_by_github(id)
        site.people.find {|p| p.github == id}
    end

    def preferred_value(needle, github_id, default_value)
        found_person = find_by_github(github_id)
        if found_person.nil?
            return default_value
        end
        found_person.send("#{needle}") || default_value
    end
end

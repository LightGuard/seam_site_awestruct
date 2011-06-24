require "modules"
require "PeopleFinder"

Awestruct::Extensions::Pipeline.new do
    # extension Awestruct::Extensions::Posts.new( '/news' )
#    helper Awestruct::Extensions::Partial
    helper PeopleFinder

    extension Modules.new
    extension Awestruct::Extensions::Indexifier.new
end


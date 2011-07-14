require 'project_modules'
require 'page_extensions'

Awestruct::Extensions::Pipeline.new do
    # extension Awestruct::Extensions::Posts.new( '/news' )
#    helper Awestruct::Extensions::Partial

    extension PageExtensions::PageExtensionsAdditionExtension.new
    extension ProjectModules.new
    extension Awestruct::Extensions::Indexifier.new
end


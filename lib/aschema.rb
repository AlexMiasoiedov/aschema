require 'db_mapper'
require 'git_mapper'

class Aschema
  extend DbMapper
  extend GitMapper
end

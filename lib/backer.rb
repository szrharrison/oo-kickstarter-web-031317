class Backer
  def initialize( name )
    @backed_projects = []
    @name = name
  end
  attr_accessor :backed_projects
  attr_reader :name
  #####################################################
  def back_project( project )
    self.backed_projects |= [project]
    project.backers |= [self]
  end
end

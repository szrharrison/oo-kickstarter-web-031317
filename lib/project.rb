class Project
  def initialize( title )
    @title = title
    @backers = []
  end
  attr_accessor :backers
  attr_reader :title
  #####################################################
  def add_backer( backer )
    self.backers |= [ backer ]
    backer.backed_projects |= [self]
  end
end

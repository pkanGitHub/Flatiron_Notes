class Backer
    # takes a name on initialization, accessible through an attribute reader
    attr_reader :name, :backed_projects
  
    def initialize(name)
        @name = name
        @backed_projects = [] # initializes with a @backed_projects attribute, an empty array
    end
  
    def back_project(project)
        # accepts a Project as an argument and stores it in a backed_projects array
        backed_projects << project
        # also adds the backer to the project's backers array
        project.backers << self
    end
end


class Project
    # takes a title on initialization, accessible through an attribute reader
    attr_reader :title, :backers
  
    def initialize(title)
        @title = title
        @backers = [] # initializes with a @backers attribute, an empty array
    end
  
    def add_backer(backer)
        # accepts a Backer as an argument and stores it in a backers array
        backers << backer
        # also adds the project to the backer's backed_projects array
        backer.backed_projects << self
    end
  
end
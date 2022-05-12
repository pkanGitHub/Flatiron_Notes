class Post 
    attr_accessor :title, :author 

    @@all = []

    def initialize(title)
        @title = title 
        @@all << self 
    end

    def self.all
        @@all
    end

    def author_name
        author.name if author
    end
end

class Author
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self 
    end

    def post 
        Post.all.select {|post| post.author == self}
    end

    def add_post(post)
        post = Post.new(title)
        post.author = self
    end

    def add_post_by_title
        post.author = self
    end

    def self.post_count
        Post.all.count
    end
end
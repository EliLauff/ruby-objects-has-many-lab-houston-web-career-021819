class Author

    attr_accessor :name, :posts
    @@all_posts = []

    def initialize(name)
        self.name = name
        self.posts = []
    end

    def add_post(post)
        post.author = self
        self.posts << post
        @@all_posts << post
    end

    def add_post_by_title(title)
        title = Post.new(title)
        self.add_post(title)
    end

    def self.post_count
        @@all_posts.length
    end
    
end
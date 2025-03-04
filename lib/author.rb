class Author 
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(post)
        post = Post.new(post)
        post.author = self
    end

    def self.post_count
        Post.all.length
    end

    def posts
        Post.all.select {|post| post.author == self}
    end 
end

# Author
#   #new
#     is initialized with a name
#   #name
#     has an attr_accessor for name
#   #posts
#     has many posts
#   #add_post
#     takes in an argument of a post and associates that post with the author by telling the post that it belongs to that author
#   #add_post_by_title
#     takes in an argument of a post title, creates a new post with it and associates the post and author
#   .post_count
#     is a class method that returns the total number of posts associated to all existing authors
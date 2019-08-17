class Show < ActiveRecord::Base

    def self.highest_rating
        Show.maximum("rating")
    end

    def self.most_popular_show
        top_rating = self.highest_rating
        top_show = self.where("rating = ?",top_rating)
        top_show.first
    end

    def self.lowest_rating
        Show.minimum("rating")
    end

    def self.least_popular_show
        bottom_rating = self.lowest_rating
        bottom_show = self.where("rating = ?",bottom_rating)
        bottom_show.first
    end

    def self.ratings_sum
        Show.all.map{|show| show.rating}.sum
    end

    def self.popular_shows
        Show.all.where("rating > ?", 5)
    end

    def self.shows_by_alphabetical_order
        Show.all.order("name")
    end

end
class Company < ActiveRecord::Base
    #define has many association with founders
    has_many :founders
end

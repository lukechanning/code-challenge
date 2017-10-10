class Company < ActiveRecord::Base
    #define has many association with founders
    has_many :founders
    #define has many tags through TagCompany
    has_many :TagCompanies
    has_many :tags, through: :TagCompanies
end

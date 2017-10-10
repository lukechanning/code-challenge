class Tag < ActiveRecord::Base
    #define has many companies through TagCompany
    has_many :tagcompanies
    has_many :companies, through: :tagcompanies
end

class DogHouse < ApplicationRecord
  #Deleting our dog house review using dependent::destroy
  #This is what lets us easily find all the reveiws associated with a dog house instance by simmply calling .reviews on any instance of the DogHouse class 

  has_many :reviews, dependent: :destroy # The has_many association reference also provide user with additional options to customie its behavior. For Instance  . This tell Active Record to delete all the associated records when the parent record is deleted.
end
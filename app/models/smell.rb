class Smell < ActiveHash::Base
  self.data = [
    { id: 1, name: 'くさくない' },
    { id: 2, name: 'くさい' },
    { id: 3, name: 'とてもくさい' },
  ]

  include ActiveHash::Associations
  has_many :poops

end
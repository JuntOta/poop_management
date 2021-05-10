class Smell < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'くさくない' },
    { id: 3, name: 'くさい' },
    { id: 4, name: 'とてもくさい' },
  ]

  include ActiveHash::Associations
  has_many :poops

end
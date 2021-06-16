class Shape < ActiveHash::Base
  self.data = [
    { id: 1, name: 'コロコロ' },
    { id: 2, name: 'カチカチ' },
    { id: 3, name: 'バナナ' },
    { id: 4, name: '半練り' },
    { id: 5, name: 'ドロドロ' },
  ]

  include ActiveHash::Associations
  has_many :poops

end
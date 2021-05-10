class Shape < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'コロコロ' },
    { id: 3, name: 'カチカチ' },
    { id: 4, name: 'バナナ' },
    { id: 5, name: '半練り' },
    { id: 6, name: 'ドロドロ' },
  ]

  include ActiveHash::Associations
  has_many :poops

end
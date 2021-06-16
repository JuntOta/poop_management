class Amount < ActiveHash::Base
  self.data = [
    { id: 1, name: 'メガ盛り' },
    { id: 2, name: '大盛り' },
    { id: 3, name: '並盛り' },
    { id: 4, name: '小盛り' },
    { id: 5, name: 'ちょっぴり' },
  ]

  include ActiveHash::Associations
  has_many :poops

end
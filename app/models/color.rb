class Color < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '黄色' },
    { id: 3, name: '黄土色' },
    { id: 4, name: '茶色' },
    { id: 5, name: 'こげ茶' },
    { id: 6, name: '黒' },
  ]

  include ActiveHash::Associations
  has_many :poops

end

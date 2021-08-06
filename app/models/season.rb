class Season < ActiveHash::Base
  self.data = [
    { id: 0, name: '季節' },
    { id: 1, name: '春' },
    { id: 2, name: '夏' },
    { id: 3, name: '秋' },
    { id: 4, name: '冬' }
  ]

  include ActiveHash::Associations
  has_many :haikus

  end
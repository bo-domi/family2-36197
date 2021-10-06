class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ベビー服（女の子用）~95cm' },
    { id: 3, name: 'ベビー服（男の子用）~95cm' },
    { id: 4, name: 'ベビー服（男女兼用）~95cm' },
    { id: 5, name: 'キッズ服（女の子用）100cm~' },
    { id: 6, name: 'キッズ服（男の子用）100cm~' },
    { id: 7, name: 'キッズ服（男女兼用）100cm~' },
    { id: 8, name: 'キッズ靴' },
    { id: 9, name: '子供用ファッション小物' },
    { id: 10, name: 'おむつ/トイレ/バス' },
    { id: 11, name: '授乳/食事' },
    { id: 12, name: 'ベビー家具/室内用品' },
    { id: 13, name: '学習用品' },
    { id: 14, name: '行事/記念品' },
    { id: 15, name: 'その他' }

  ]

  include ActiveHash::Associations
  has_many :items
  
  end
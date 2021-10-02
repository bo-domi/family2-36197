FactoryBot.define do
  factory :record_address do

    postal_code                      {'111-3333'}
    area_id                          {2}
    municipality                     {'横浜市緑区'}
    house_number                     {'青山1-1-1'}
    telephone_number                 {'09012345678'}
    building_name                    {'柳ビル101'}
    token                            {'tok_abcdefghijk00000000000000000'}
    
  end
end

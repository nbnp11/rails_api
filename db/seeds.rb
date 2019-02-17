# frozen_string_literal: true

bu1 = Building.create!(bclass: 'skyscraper',
                        street: 'Pushkina',
                  housenumber: 1,
                        floors: 100)

bl1 = bu1.blocks.create!(area: 60, floor: 10)

of1 = bl1.offers.create!(offer_type: 'rent')

of1.create_price!(value: 500, currency: 1)

bu2 = Building.create!(bclass: 'house',
                        street: 'Lermontova',
                  housenumber: 2,
                        floors: 10)

bl2 = bu2.blocks.create!(area: 60, floor: 10)

of2 = bl2.offers.create!(offer_type: 'rent')

of2.create_price!(value: 500, currency: 2)

bu3 = Building.create!(bclass: 'warehouse',
                        street: 'Lenina',
                  housenumber: 5,
                        floors: 1)

bl3 = bu3.blocks.create!(area: 60, floor: 10)

of3 = bl3.offers.create!(offer_type: 'rent')

of3.create_price!(value: 500, currency: 3)
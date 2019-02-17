# frozen_string_literal: true

bu1 = Building.create!(bclass: 'A',
                        street: 'Пресненская набережная',
                  housenumber: 1,
                        floors: 100)

bl1 = bu1.blocks.create!(area: 160, floor: 8)

of1 = bl1.offers.create!(offertype: 'rent')

of1.create_price!(pricevalue: 2000, currency: 2)

bu2 = Building.create!(bclass: 'B',
                        street: 'Пресненская набережная',
                  housenumber: 2,
                        floors: 10)

bl2 = bu2.blocks.create!(area: 200, floor: 1)

of2 = bl2.offers.create!(offertype: 'rent')

of2.create_price!(pricevalue: 3000, currency: 2)

bu3 = Building.create!(bclass: 'A',
                        street: 'Пресненская набережная',
                  housenumber: 5,
                        floors: 8)

bl3 = bu3.blocks.create!(area: 290, floor: 8)

of3 = bl3.offers.create!(offertype: 'rent')

of3.create_price!(pricevalue: 4000, currency: 2)

bu4 = Building.create!(bclass: 'A',
                        street: 'Пресненская набережная',
                  housenumber: 6,
                        floors: 8)

bl4 = bu4.blocks.create!(area: 310, floor: 8)

of4 = bl4.offers.create!(offertype: 'rent')

of4.create_price!(pricevalue: 5000, currency: 2)

bu5 = Building.create!(bclass: 'A',
                        street: 'Пресненская набережная',
                  housenumber: 11,
                        floors: 10)

bl5 = bu5.blocks.create!(area: 228, floor: 10)

of5 = bl5.offers.create!(offertype: 'rent')

of5.create_price!(pricevalue: 4999, currency: 2)
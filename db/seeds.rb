# frozen_string_literal: true

Building.create!(type: 'skyscraper',
               street: 'Pushkina',
         house_number: 1,
               floors: 100)

Building.first.blocks.create!(area: 60, floor: 10)

Block.first.offers.create!(offer_type: 'rent')

Offer.last.create_price!(value: 500, currency: 1)

# Record creation needed to experiment with Bill-Splitter during development.

User.create(email: 'oz@oz.com',
            password: '123',
            password_confirmation: '123')

Bill.create(num_people: 4,
            total_amount: 100,
            user_id: 1,
            shares_attributes: [
              { person_name: 'Oz', base_cost: 25 },
              { person_name: 'Nim', base_cost: 25 },
              { person_name: 'Jen', base_cost: 25 },
              { person_name: 'Ari', base_cost: 25 }
            ])

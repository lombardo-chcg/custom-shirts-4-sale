# @bob = User.create!(
#   first_name: "bob",
#   last_name:  "slob",
#   email:      "bob_the_slob@aol.com",
#   hashed_password: "aehadsfl834u32lj4o8123")

# @designer = User.create!(
#   first_name: "Mary",
#   last_name:  "Jane",
#   email:      "maryJ@aol.com",
#   hashed_password: "asdf34wadsfg345hf")  
  
# @purchase = @bob.purchases.create!

# @shirt_one = Shirt.create!(content: "I LOVE POLAND", designer_id: @designer.id, price: 19)
# @shirt_two = Shirt.create!(content: "I LOVE SOUTH KOREA", designer_id: @designer.id, price: 19)

# @purchase.purchase_shirts.create!(shirt_id: @shirt_one.id)
# # @purchase.purchases_shirts.create!(shirt_id: @shirt_two.id)

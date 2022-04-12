# Product.create!([
#   {name: "Nike Mercurial Vapor 14 Elite FG Firm Ground Soccer Cleat", price: 249, description: "Part of the new Nike Mercurial Blueprint Pack, these Nike Mercurial Vapor 14 Elite soccer cleats are engineered with the minimal amount of materials possible, so you can play lights out for 90 minutes.", supplier_id: 4},
#   {name: "adidas F50 Ghosted Adizero FG", price: 249, description: "The Legends Return. Part of the limited edition adidas Legends Pack, this F50 Ghosted Adizero is inspired by legends of speed. Throughout the beautiful game's glittering history, the ability to shift gracefully through the gears has elevated greats into icons.", supplier_id: 1},
#   {name: "PUMA ULTRA 1.3 FG/AG Soccer Cleat", price: 179, description: "Light years ahead of the competition, the new PUMA ULTRA 1.3 is worn by some of the soccer's most electrifying talents, like Antoine Griezmann, Kingsley Coman and Christian Pulisic. Lightweight MATRYXEVO technology woven upper featuring technical Carbon yarns and transparent mono yarns.", supplier_id: 2},
#   {name: "Nike Mercurial Dream Speed 5 Vapor 14 Elite FG Soccer Cleat", price: 249, description: "MDS Mindset. The Nike Mercurial Dream Speed 5 is inspired by Cristiano Ronaldo's most powerful tool - the mind. The cleat's design slowly transitions from tranquil green into commanding hues of turquoise and purple, illustrating how a calm mental state empowers Cristiano (and his carefully selected squad of elite MDS players) to seize the initiative through strong decision making and bold, purposeful play.", supplier_id: 4},
#   {name: "adidas Predator Edge+ Geometric FG Firm Ground Soccer Cleat", price: 279, description: "Find your Creative Edge in this striking adidas Predator Edge Geometric Pack edition. Re-imagined with new features to support swerve, spin and grip, the Predator Edge continues adidas soccer's legacy of game-changing control cleats.", supplier_id: 1},
#   {name: "PUMA FUTURE Z 1.3 Teaser FG/AG Soccer Cleat", price: 225, description: "This limited edition teaser version of the next generation PUMA Future Z 1.3 was first debuted by Neymar Jr on March 5. The eye-catching design features a black and white camo-inspired print with pops of bright orange. Only 750 pairs are available globally.", supplier_id: 2},
#   {name: "Nike Phantom GT2 Elite FG Firm Ground Soccer Cleat", price: 249, description: "Building off the Phantom GT, the Nike Phantom GT2 features new raised patterning to give the game's most creative players more control over the flight of the ball. Off-center lacing provides a clean strike zone for skillful dribbling, passing and shooting.", supplier_id: 4},
#   {name: "Nike Mercurial Dream Speed 5 Vapor 14 Elite FG Soccer Cleat", price: 249, description: "MDS Mindset. The Nike Mercurial Dream Speed 5 is inspired by Cristiano Ronaldo's most powerful tool - the mind. The cleat's design slowly transitions from tranquil green into commanding hues of turquoise and purple, illustrating how a calm mental state empowers Cristiano (and his carefully selected squad of elite MDS players) to seize the initiative through strong decision making and bold, purposeful play.", supplier_id: 4},
#   {name: "Lotto Solista 100 IV Gravity SG Soft Ground Soccer Cleat", price: 199, description: "Fine-tuned for speed, the Lotto Solista 100 IV delivers a lightweight speed boot through a distraction-less laceless upper atop an outsole engineered to provide optimal traction and power transfer.", supplier_id: 3}
# ])


# supplier = Supplier.create(name: "Adidas", email: "support@adidas.com", phone_number: "1-800-982-9337")
# supplier = Supplier.create(name: "Puma", email: "help@puma.com", phone_number: "1 (888) 565-7862")
# supplier = Supplier.create(name: "Lotto", email: "contact@lotto.com", phone_number: "+39 0423 6181")

User.create!([
  {name: "Allen", email: "Allen@gmail.com", password: "password", password_confirmation: "password"},
  {name: "Ben", email: "Ben@gmail.com", password: "password", password_confirmation: "password"},
  {name: "Sean", email: "Sean@gmail.com", password: "password", password_confirmation: "password"}
])
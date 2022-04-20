User.destroy_all
Supplier.destroy_all
Product.destroy_all
Image.destroy_all

User.create!([
  {name: "Travis", email: "Travis@gmail.com", password_digest: "$2a$12$chIYia3uQTUAEUjsNiFNSu3pP/FyjE/kDvDXHejnQWMCmsd0ThkOu", admin: true},
  {name: "Allen", email: "Allen@gmail.com", password_digest: "$2a$12$hiNWpZ0k.1wd1YJMXyBhkOK5sSlNav/dTpx9WUD/YvSD4u4JW2Tx6", admin: false},
  {name: "Ben", email: "Ben@gmail.com", password_digest: "$2a$12$hXqyFuTT8P2H0qhjLPfWvOsr0YQEvsZNiRr4eOKzI1gpSFyYKk.8.", admin: false},
  {name: "Sean", email: "Sean@gmail.com", password_digest: "$2a$12$5ra0pbW59YAXEBXyeBg4g.xGHBY26xHkrWZ/yMHkDlsxK.M0AsQH6", admin: false},
  {name: "nick", email: "nick@gmail.com", password_digest: "$2a$12$5.gtUnzdgaFINRUrumZDMO7.nkYiPrnL8L/HACpDakxdNqHTXnww.", admin: true}
])
Supplier.create!([
  {name: "Adidas", email: "support@adidas.com", phone_number: "1-800-982-9337"},
  {name: "Puma", email: "help@puma.com", phone_number: "1 (888) 565-7862"},
  {name: "Lotto", email: "contact@lotto.com", phone_number: "+39 0423 6181"},
  {name: "Nike", email: "Nike@nike.com", phone_number: "123-456-7890"},
  {name: "New Balance", email: "support@NewBalance.com", phone_number: "555-423-3246"}
])
Product.create!([
  {name: "adidas F50 Ghosted Adizero FG", price: 249, description: "The Legends Return. Part of the limited edition adidas Legends Pack, this F50 Ghosted Adizero is inspired by legends of speed. Throughout the beautiful game's glittering history, the ability to shift gracefully through the gears has elevated greats into icons.", supplier_id: 1},
  {name: "PUMA ULTRA 1.3 FG/AG Soccer Cleat", price: 179, description: "Light years ahead of the competition, the new PUMA ULTRA 1.3 is worn by some of the soccer's most electrifying talents, like Antoine Griezmann, Kingsley Coman and Christian Pulisic. Lightweight MATRYXEVO technology woven upper featuring technical Carbon yarns and transparent mono yarns.", supplier_id: 2},
  {name: "Nike Mercurial Dream Speed 5 Vapor 14 Elite FG Soccer Cleat", price: 249, description: "MDS Mindset. The Nike Mercurial Dream Speed 5 is inspired by Cristiano Ronaldo's most powerful tool - the mind. The cleat's design slowly transitions from tranquil green into commanding hues of turquoise and purple, illustrating how a calm mental state empowers Cristiano (and his carefully selected squad of elite MDS players) to seize the initiative through strong decision making and bold, purposeful play.", supplier_id: 4},
  {name: "adidas Predator Edge+ Geometric FG Firm Ground Soccer Cleat", price: 279, description: "Find your Creative Edge in this striking adidas Predator Edge Geometric Pack edition. Re-imagined with new features to support swerve, spin and grip, the Predator Edge continues adidas soccer's legacy of game-changing control cleats.", supplier_id: 1},
  {name: "PUMA FUTURE Z 1.3 Teaser FG/AG Soccer Cleat", price: 225, description: "This limited edition teaser version of the next generation PUMA Future Z 1.3 was first debuted by Neymar Jr on March 5. The eye-catching design features a black and white camo-inspired print with pops of bright orange. Only 750 pairs are available globally.", supplier_id: 2},
  {name: "Nike Phantom GT2 Elite FG Firm Ground Soccer Cleat", price: 249, description: "Building off the Phantom GT, the Nike Phantom GT2 features new raised patterning to give the game's most creative players more control over the flight of the ball. Off-center lacing provides a clean strike zone for skillful dribbling, passing and shooting.", supplier_id: 4},
  {name: "New Balance Furon V6+ Pro FG Soccer Cleat: Sadio Mane The Lion Roars", price: 224, description: "Pure Instinct. Sadio Mane's new signature New Balance Furon 6+ cleats - The Lion Roars - are made for explosive power and skill that the Liverpool and Senegal star embodies, and feature eye-catching bespoke graphics. New Balance's next generation Fit Weave technology provides a sock-like fit with great stability and a low profile knitted collar for a freedom of movement on the ball. A Hyposkin clear film is on top of the Hypoknit upper to prevent water uptake on those rainy and damp days.", supplier_id: 5},
  {name: "Nike Mercurial Vapor 14 Elite FG Firm Ground Soccer Cleat", price: 249, description: "Nike Mercurial Vapor 14 Elite soccer cleats are engineered with the minimal amount of materials possible, so you can play lights out for 90 minutes.The stripped-down Flyknit upper delivers a distraction-free feel, while reducing weight in the process. The new Speed Band around the forefoot keeps you locked in and ready to accelerate.", supplier_id: 4},
  {name: "New Balance Furon V6+ Pro Raheem Sterling FG Soccer Cleats", price: 229, description: "Inspired by Jamaica - Raheem Sterling's birthplace - these limited edition NB Furon V6+ cleats come in a vibrant twist of Jamaica's national colors, green, black and gold. The heel of these signature cleats features Sterling's 'RS' logo and the Jamaican national motto - 'Out of Many, One People.", supplier_id: 5}
])
Image.create!([
  {url: "https://www.imagehandler.net/preview/?istyle=0000&fmt=jpg&w=600&h=600&cmp=100&c=999&img=A1063948000&iset=0100&iindex=0088&retBlank=1x1&bg=f6f6f6", product_id: 9},
  {url: "https://www.imagehandler.net/preview/?istyle=0000&fmt=jpg&w=600&h=600&cmp=100&c=999&img=A1063948000&iset=0100&iindex=0063&retBlank=1x1&bg=f6f6f6", product_id: 9},
  {url: "https://www.imagehandler.net/preview/?istyle=0000&fmt=jpg&w=600&h=600&cmp=100&c=999&img=A1064316000&iset=0100&iindex=0088&retBlank=1x1&bg=f6f6f6", product_id: 1},
  {url: "https://www.imagehandler.net/preview/?istyle=0000&fmt=jpg&w=600&h=600&cmp=100&c=999&img=A1064316000&iset=0100&iindex=0089&retBlank=1x1&bg=f6f6f6", product_id: 1},
  {url: "https://www.imagehandler.net/preview/?istyle=0000&fmt=jpg&w=600&h=600&cmp=100&c=999&img=A1057171000&iset=0100&iindex=0088&retBlank=1x1&bg=f6f6f6", product_id: 2},
  {url: "https://www.imagehandler.net/preview/?istyle=0000&fmt=jpg&w=600&h=600&cmp=100&c=999&img=A1057171000&iset=0100&iindex=0090&retBlank=1x1&bg=f6f6f6", product_id: 2},
  {url: "https://www.imagehandler.net/preview/?istyle=0000&fmt=jpg&w=600&h=600&cmp=100&c=999&img=A1054085000&iset=0100&iindex=0088&retBlank=1x1&bg=f6f6f6", product_id: 3},
  {url: "https://www.imagehandler.net/preview/?istyle=0000&fmt=jpg&w=600&h=600&cmp=100&c=999&img=A1054085000&iset=0100&iindex=0089&retBlank=1x1&bg=f6f6f6", product_id: 3},
  {url: "https://www.imagehandler.net/preview/?istyle=0000&fmt=jpg&w=600&h=600&cmp=100&c=999&img=A1060206000&iset=0100&iindex=0088&retBlank=1x1&bg=f6f6f6", product_id: 4},
  {url: "https://www.imagehandler.net/preview/?istyle=0000&fmt=jpg&w=600&h=600&cmp=100&c=999&img=A1060206000&iset=0100&iindex=0090&retBlank=1x1&bg=f6f6f6", product_id: 4},
  {url: "https://www.imagehandler.net/preview/?istyle=0000&fmt=jpg&w=600&h=600&cmp=100&c=999&img=A1062102000&iset=0100&iindex=0088&retBlank=1x1&bg=f6f6f6", product_id: 5},
  {url: "https://www.imagehandler.net/preview/?istyle=0000&fmt=jpg&w=600&h=600&cmp=100&c=999&img=A1062102000&iset=0100&iindex=0089&retBlank=1x1&bg=f6f6f6", product_id: 5},
  {url: "https://www.imagehandler.net/preview/?istyle=0000&fmt=jpg&w=600&h=600&cmp=100&c=999&img=A1062098000&iset=0100&iindex=0088&retBlank=1x1&bg=f6f6f6", product_id: 6},
  {url: "https://www.imagehandler.net/preview/?istyle=0000&fmt=jpg&w=600&h=600&cmp=100&c=999&img=A1062098000&iset=0100&iindex=0063&retBlank=1x1&bg=f6f6f6", product_id: 6},
  {url: "https://www.imagehandler.net/preview/?istyle=0000&fmt=jpg&w=600&h=600&cmp=100&c=999&img=A1060190000&iset=0100&iindex=0088&retBlank=1x1&bg=f6f6f6", product_id: 7},
  {url: "https://www.imagehandler.net/preview/?istyle=0000&fmt=jpg&w=600&h=600&cmp=100&c=999&img=A1060190000&iset=0100&iindex=0090&retBlank=1x1&bg=f6f6f6", product_id: 7},
  {url: "https://www.imagehandler.net/preview/?istyle=0000&fmt=jpg&w=600&h=600&cmp=100&c=999&img=A1068110000&iset=0100&iindex=0088&retBlank=1x1&bg=f6f6f6", product_id: 8},
  {url: "https://www.imagehandler.net/preview/?istyle=0000&fmt=jpg&w=600&h=600&cmp=100&c=999&img=A1068110000&iset=0100&iindex=0090&retBlank=1x1&bg=f6f6f6", product_id: 8}
])

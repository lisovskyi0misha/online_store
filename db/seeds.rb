# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create([{name: 'Misha'}, {name: 'Ignat'}])

brand = Brand.create(name: 0)
brand.image.attach(io: File.open(File.join(Rails.root,'app/assets/images/apple_logo.png')), filename: 'apple_logo.png')

brand = Brand.create(name: 1)
brand.image.attach(io: File.open(File.join(Rails.root,'app/assets/images/samsung_logo.png')), filename: 'samsung_logo.png')

product = Product.create({name: 'iPhone 14 Pro', new_price: 999, category: 0, presence: true, description: 'A magical new way to interact with iPhone. Groundbreaking safety features designed to save lives. An innovative 48Mproductcamera for mind-blowing detail. All powered by the ultimate smartphone chiproduct. iOS 16 lets you customize your Lock Screen in fun new ways. Layer a photo to make it poproduct. Track your Activity rings. And see live updates from your favorite apps. If you don’t have cell service or Wi‑Fi, iPhone lets you text emergency services over satellite. iPhone 14 Pro raises the bar for what 48 megapixels can do — delivering 4x the resolution in ProRAW for mind-blowing detail in every croproduct. A close-uproductphoto of four colorful lollipops. The shot was taken with the 3x Telephoto camera. The new Pro camera system adds a 2x optical-quality Telephoto to its zoom range, putting tons of framing flexibility in your pocket. Uproductyour frame game. Cinematic mode now shoots in 4K HDR at 24 fps — the film industry standard. Have your people call our people.'})
product.image.attach(io: File.open(File.join(Rails.root,'app/assets/images/iphone_14_pro.jpeg')), filename: 'iphone_14_pro.jpeg')
product.brand = Brand.find_by_id(1)

product = Product.create({name: 'iPhone 14 Pro Max', new_price: 1099, category: 0, presence: true, description: 'A magical new way to interact with iPhone. Groundbreaking safety features designed to save lives. An innovative 48Mproductcamera for mind-blowing detail. All powered by the ultimate smartphone chiproduct. iOS 16 lets you customize your Lock Screen in fun new ways. Layer a photo to make it poproduct. Track your Activity rings. And see live updates from your favorite apps. If you don’t have cell service or Wi‑Fi, iPhone lets you text emergency services over satellite. iPhone 14 Pro raises the bar for what 48 megapixels can do — delivering 4x the resolution in ProRAW for mind-blowing detail in every croproduct. A close-uproductphoto of four colorful lollipops. The shot was taken with the 3x Telephoto camera. The new Pro camera system adds a 2x optical-quality Telephoto to its zoom range, putting tons of framing flexibility in your pocket. Uproductyour frame game. Cinematic mode now shoots in 4K HDR at 24 fps — the film industry standard. Have your people call our people.'})
product.image.attach(io: File.open(File.join(Rails.root,'app/assets/images/iphone_14.jpeg')), filename: 'iphone_14.jpeg')
product.brand = Brand.find_by_id(1)

product = Product.create({name: 'AirPods (2nd generation)', new_price: 129, category: 1, presence: true, description: 'With plenty of talk and listen time, voice-activated Siri access, and an available wireless charging case, AirPods deliver an incredible wireless headphone experience. Simply take them out and they’re ready to use with all your devices. Put them in your ears and they connect immediately, immersing you in rich, high-quality sound. Just like magic. After a simple one-taproductsetup, AirPods are automatically on and always connected.1 Using them is just as easy. They sense when they’re in your ears and pause when you take them out. And the AirPods experience is just as amazing whether you’re using them with your iPhone, Apple Watch, iPad, Mac, or Apple TV. Need a hand? Simply say “Hey Siri” for assistance without having to reach for your iPhone. And with Announce Notifications, Siri can automatically read important notifications from Messages, Phone, Calendar, Reminders, and more as they arrive. You can choose which contacts you hear notifications from, and Siri won’t interrupt you if you’re on a call or sharing a song. Powered by the Apple H1 headphone chip, AirPods deliver a faster and more stable wireless connection to your devices — uproductto 2x faster when switching between active devices,3 and a 1.5x faster connection time for phone calls.4 The H1 chiproductalso drives voice-enabled Siri access and delivers uproductto 30 percent lower gaming latency.5 So whether you’re playing games, listening to music, or enjoying podcasts, you’ll experience higher-quality sound. Knows when you’re listening. Optical sensors and motion accelerometers work together to automatically control the audio experience, engaging the microphones for phone calls and Siri access, and enabling AirPods to play sound as soon as they’re in your ears. You also have the freedom to wear one or both AirPods, and you can play or skiproductforward with a double-taproductwhen listening to music.'})
product.image.attach(io: File.open(File.join(Rails.root,'app/assets/images/airpods_2.jpeg')), filename: 'airpods_2.jpeg')
product.brand = Brand.find_by_id(1)

product = Product.create({name: 'AirPods (3rd generation)', new_price: 179, category: 1, presence: true, description: 'An Apple-designed dynamic driver, powered by a custom amplifier, renders music in exceptionally detailed sound quality — so you revel in every tone, from deep, rich bass to crisp, clean highs. Music on a more personal note. Adaptive EQ automatically tunes music to your ears. Inward-facing microphones detect what you’re hearing, then adjust low and midrange frequencies to deliver the rich details in every song, customized for you in real time. Covered in a special acoustic mesh, an inset microphone in each earbud minimizes wind noise when you’re on a call — so your voice is always heard loud and clear. You heard it here first. HD voice quality for FaceTime. Connect on FaceTime in crisp, HD quality with a new AAC-ELD speech codec. And with support for Personalized Spatial Audio, GrouproductFaceTime calls sound more true to life than ever. Style from ear to ear. With a contoured design and shorter stem, AirPods are designed to direct sound into your ears — in a refined look anyone can appreciate. Sprinkles? No sweat. AirPods, the Lightning Charging Case, and the MagSafe Charging Case are rated IPX4 sweat and water resistant, so they’ll withstand anything from rain to heavy workouts.'})
product.image.attach(io: File.open(File.join(Rails.root,'app/assets/images/airpods_3.jpeg')), filename: 'airpods_3.jpeg')
product.brand = Brand.find_by_id(1)

product = Product.create({name: 'Galaxy S21 FE G990B', old_price: 920, new_price: 900, category: 0, presence: true, description: 'Very interesting form factor, clearly not for everyone. If you\'re looking at the Fold series just for a bigger screen, this phone is not for you. If you benefit from a 2 in 1 form factor, phone & tablet, this is a win for you. It\'s a beautiful phone, but in its current form it is bulky even without a case. Screen brightness: the brightness is a bit much even at a reduced level and without the extra brightness setting on. S-Pen: Why are there 3 S-pens for 2 types of phones? If the Note/S22 Ultra series have an integrated S-Pen with all the bells and whistles then the Fold needs to benefit from this feature, there\'s no need for a Pro series S-pen. I would rather have an 8in. inner display to allow for a bigger outer display and hopefully that will create some space for that integrated S-Pen and possibly those updated cameras. FYI: S-Pen does not work with the outer display. Apps & Inner Display: Samsung should ask for all apps to be optimized for the Foldable line uproductand make better use of the inner display and use the full screen without losing from the viewing experience or pinch-to-zoom. The inner display is super sensitive, as it should be, since we aren\'t dealing'})
product.image.attach(io: File.open(File.join(Rails.root,'app/assets/images/galaxy.jpeg')), filename: 'galaxy.jpeg')
product.brand = Brand.find_by_id(2)

poster = Poster.create(product_id: 1)
poster.image.attach(io: File.open(File.join(Rails.root,'app/assets/images/poster1.jpg')), filename: 'poster1.jpg')

poster = Poster.create(product_id: 2)
poster.image.attach(io: File.open(File.join(Rails.root,'app/assets/images/poster2.jpg')), filename: 'poster2.jpg')

poster = Poster.create(product_id: 3)
poster.image.attach(io: File.open(File.join(Rails.root,'app/assets/images/poster3.jpg')), filename: 'poster3.jpg')


AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
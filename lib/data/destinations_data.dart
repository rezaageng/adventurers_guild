import '../models/destinations_model.dart';

List<DestinationsModel> destinationsData = [
  const DestinationsModel(
    id: 'des0',
    title: 'Amakumo Peak',
    category: ECategories.mountains,
    region: ERegions.liyue,
    description:
        'Amakumo Peak is a subarea in Seirai Island, Inazuma. Long ago, Kanna Kapatcir was slain here, while the power of its lingering hatred and regret was suppressed by wards maintained by the Asase Shrine. During the Seirai Rebellion around 500 years ago, Asase Hibiki unsealed the wards, causing the Thunder Manifestation to appear and devastate the area with a massive Electro storm.',
    duration: 1200,
    imageUrl: 'assets/images/amakumo_peak.png',
  ),
  const DestinationsModel(
    id: 'des1',
    title: 'The Chasm: Underground Mines',
    category: ECategories.undergrounds,
    region: ERegions.liyue,
    description:
        'Relics of an ancient civilization with ties to Khaenri\'ah. The entire structure is upside down, fixed to the ceiling for unknown reasons. There are plethora of tunnels connecting it to many other deeper areas.',
    duration: 1800,
    imageUrl: 'assets/images/chasm_underground.png',
  ),
  const DestinationsModel(
    id: 'des2',
    title: 'The Chasm',
    category: ECategories.mines,
    region: ERegions.liyue,
    description:
        'In the recent past, a series of mysterious accidents led the entire mine to be closed, putting its workers out of a job. However, the Liyue Qixing is gradually reopening the area, thus allowing miners to resume working. Beneath the Seven-Star Array is the Underground Mines.',
    duration: 820,
    imageUrl: 'assets/images/chasm.png',
  ),
  const DestinationsModel(
    id: 'des3',
    title: 'Dragonspine',
    category: ECategories.mountains,
    region: ERegions.mondstadt,
    description:
        'Dragonspine, historically known as Vindagnyr, is an area in Mondstadt. It is a vast mountain, engulfed with ancient ruins and snow-capped areas, and also containing the remains of Durin. It was named Vindagnyr prior to Durin\'s fall. There are some peculiarities with how the snow gathers but never melts on the mountain. Due to its extreme cold, Dragonspine is also one of the most dangerous places in Mondstadt.',
    duration: 984,
    imageUrl: 'assets/images/dragonspine.png',
  ),
  const DestinationsModel(
    id: 'des4',
    title: 'Enkanomiya',
    category: ECategories.undergrounds,
    region: ERegions.inazuma,
    description:
        'Enkanomiya (Palace Below the Depths), originally known as Byakuyakoku (Land of the White Night / Midnight Sun) and Tokoyokoku (Eternal Country) is an area in Inazuma. It can be entered via a deep pool east of Sangonomiya Shrine, and legend has it that the Watatsumi people originated from here.[2] Although Enkanomiya is located under Watatsumi Island, it is still part of Teyvat, though somewhat disconnected from it. To enter Enkanomiya, the seals on the five Goshou Rocks need to be broken for the pearls located within the shrines for the Key of the Moon-Bathed Deep, which would allow entry to Enkanomiya, provided that the spirit veins connecting Enkanomiya and Watatsumi Island are flowing smoothly and a person whose heart is "as clear as water". According to legend, the key was forged from Orobashi\'s blood',
    duration: 2123,
    imageUrl: 'assets/images/enkanomiya.png',
  ),
  const DestinationsModel(
    id: 'des5',
    title: 'Mt. Aocang',
    category: ECategories.mountains,
    region: ERegions.liyue,
    description:
        'Mt. Aocang is a subarea in Minlin, Liyue. It is the home of the Adeptus Cloud Retainer.',
    duration: 479,
    imageUrl: 'assets/images/mt_aocang.png',
  ),
  const DestinationsModel(
    id: 'des6',
    title: 'Mt. Kanna',
    category: ECategories.mountains,
    region: ERegions.inazuma,
    description:
        'Mt. Kanna is a subarea of Tsurumi Island. The name may derive from the Ainu god of lightning and thunder Kanna-kamuy (above-god), which is often depicted as a dragon.',
    duration: 785,
    imageUrl: 'assets/images/mt_kanna.png',
  ),
  const DestinationsModel(
    id: 'des7',
    title: 'Mt. Yougou',
    category: ECategories.mountains,
    region: ERegions.inazuma,
    description:
        'Mt. Yougou is a subarea in Narukami Island, Inazuma. The Grand Narukami Shrine sits at the top of the mountain along with the Sacred Sakura. Beside the mountain at the base is a large pool of Electro Water that drains HP. After completing Sacred Sakura Cleansing Ritual, the pool becomes de-energized.',
    duration: 189,
    imageUrl: 'assets/images/mt_yougou.png',
  ),
  const DestinationsModel(
    id: 'des8',
    title: 'Qingyun Peak',
    category: ECategories.cliffs,
    region: ERegions.liyue,
    description:
        'Qingyun Peak is a subarea in Minlin, Liyue. It is the home of the adeptus Moon Carver. Notably, the Dwelling in the Clouds - a small floating island high above this mountain - can be reached by completing a puzzle. It was created by Cloud Retainer at an unknown point in the past.',
    duration: 678,
    imageUrl: 'assets/images/qingyun_peak.png',
  ),
  const DestinationsModel(
    id: 'des9',
    title: 'Sangonomiya Shrine',
    category: ECategories.cliffs,
    region: ERegions.inazuma,
    description:
        'Sangonomiya Shrine (Japanese: 珊瑚宮 Sangonomiya, "Coral Palace") is a subarea in Watatsumi Island, Inazuma. Sangonomiya Shrine is the base for the resistance army led by Sangonomiya Kokomi, that opposes the Raiden Shogun\'s Vision Hunt Decree. The current shrine is not the original shrine of the island — it was built after Orobashi died from the Raiden Shogun\'s attack.',
    duration: 589,
    imageUrl: 'assets/images/sangonomiya_shrine.png',
  ),
  const DestinationsModel(
    id: 'des10',
    title: 'Starfell Lake',
    category: ECategories.forests,
    region: ERegions.mondstadt,
    description:
        'Starfell Lake is a subarea in Starfell Valley, Mondstadt. A poem says that a star once fell to the earth, forming this lake. But other tales say that even the stars that shine as bright as the Anemo Archon\'s eyes will fall into this lake.',
    duration: 120,
    imageUrl: 'assets/images/starfell_lake.png',
  ),
  const DestinationsModel(
    id: 'des11',
    title: 'Stormterror\'s Lair',
    category: ECategories.ruins,
    region: ERegions.mondstadt,
    description:
        'Stormterror\'s Lair is a subarea in Brightcrown Mountains, Mondstadt. It was once the capital of Old Mondstadt, ruled by the God of Storms, Decarabian. After he was slain in an uprising, Barbatos took his place and reshaped the land. The people then moved the capital to an island in the middle of Cider Lake, where the City of Mondstadt remains to this day. Five hundred years ago, victorious but grievously injured by the corrupted dragon Durin, the Dragon of the East Dvalin fell into a deep slumber in the ruins of the former capital. However, the people of Mondstadt forgot about him and when he reawakened; they feared him and called him "Stormterror" — giving the region its current name. This, along with the pain from the poisonous blood clots inflicted by Durin, allowed him to be manipulated by the Abyss Order.',
    duration: 894,
    imageUrl: 'assets/images/stormterror.png',
  ),
  const DestinationsModel(
    id: 'des12',
    title: 'Tatarasuna',
    category: ECategories.ruins,
    region: ERegions.inazuma,
    description:
        'Tatarasuna is a subarea in Kannazuka, Inazuma. This ring of islands surrounded by jagged, rocky terrain is the perfect topographic barrier to the Shogunate\'s smelting facilities. The magnificent Blast Furnace here is used to produce a steady stream of high-quality Jade Steel for Inazuma. Recently, however, due to the war, the Mikage Furnace that drove the production has been damaged.',
    duration: 685,
    imageUrl: 'assets/images/tatarasuna.png',
  ),
  const DestinationsModel(
    id: 'des13',
    title: 'Thousand Winds Temple',
    category: ECategories.ruins,
    region: ERegions.mondstadt,
    description:
        'Thousand Winds Temple is an ancient amphitheater in Starfell Valley, Mondstadt. It may have been used as an arena back in the Aristocratic Period, where slaves were made to fight each other for the satisfaction of the old nobles.',
    duration: 120,
    imageUrl: 'assets/images/thousands_wind.png',
  ),
  const DestinationsModel(
    id: 'des14',
    title: 'Windrise',
    category: ECategories.forests,
    region: ERegions.mondstadt,
    description:
        'Windrise is a subarea in Galesong Hill, Mondstadt. It is the location where Vennessa is said to have ascended to Celestia, where she became a god and now watches over Mondstadt as the Falcon of the West of the Four Winds. The massive oak tree is believed to have grown there after she ascended.',
    duration: 326,
    imageUrl: 'assets/images/wind_rise.png',
  ),
  const DestinationsModel(
    id: 'des15',
    title: 'Wolvendom',
    category: ECategories.forests,
    region: ERegions.mondstadt,
    description:
        'Wolvendom is a subarea in Windwail Highland, Mondstadt. It is home to Andrius, Wolf of the North of the Four Winds, and his wolf pack. A deep, dark woodland, where the silence sends chills down the spine.A wolf pack dwells in the shadows — one so dangerous that even the most fearless of hunters do not venture there lightly. The howling of the wolves at night can be heard from a long distance.',
    duration: 249,
    imageUrl: 'assets/images/wolvedome.png',
  ),
  const DestinationsModel(
    id: 'des16',
    title: 'Wuwang Hill',
    category: ECategories.forests,
    region: ERegions.liyue,
    description:
        'Wuwang Hill (Prudence Slope) is a subarea in Bishui Plain, Liyue. The area is known for its eerie atmosphere, as the skies will instantly turn dark gray regardless of whether it is daytime or nighttime (you can only see a faint sky above it).',
    duration: 432,
    imageUrl: 'assets/images/wuwang_hill.png',
  ),
  const DestinationsModel(
    id: 'des17',
    title: 'Mt. Aocang',
    category: ECategories.cliffs,
    region: ERegions.liyue,
    description:
        'Mt. Aocang is a subarea in Minlin, Liyue. It is the home of the Adeptus Cloud Retainer.',
    duration: 236,
    imageUrl: 'assets/images/mt_aocang_cliff.png',
  ),
];

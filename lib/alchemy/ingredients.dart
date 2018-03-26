import 'common.dart';
import 'effects.dart';

final abeceanLongfin = new Ingredient(
    "Abecean Longfin",
    new Set.from(
        [fortifyRestoration, fortifySneak, weaknessToFrost, weaknessToPoison]));
final ancestorMothWing = new Ingredient(
    "Ancestor Moth Wing",
    new Set.from([
      damageMagickaRegen,
      damageStamina,
      fortifyConjuration,
      fortifyEnchanting
    ]));
final ashCreepCluster = new Ingredient(
    "Ash Creep Cluster",
    new Set.from(
        [damageStamina, fortifyDestruction, invisibility, resistFire]));
final ashenGrassPod = new Ingredient(
    "Ashen Grass Pod",
    new Set.from(
        [fortifyLockpicking, fortifySneak, resistFire, weaknessToShock]));
final ashHopperJelly = new Ingredient(
    "Ash Hopper Jelly",
    new Set.from(
        [fortifyLightArmor, resistShock, restoreHealth, weaknessToFrost]));
final bearClaws = new Ingredient(
    "Bear Claws",
    new Set.from(
        [damageMagickaRegen, fortifyHealth, fortifyOneHanded, restoreStamina]));
final bee = new Ingredient(
    "Bee",
    new Set.from(
        [ravageStamina, regenerateStamina, restoreStamina, weaknessToShock]));
final beehiveHusk = new Ingredient(
    "Beehive Husk",
    new Set.from(
        [fortifyDestruction, fortifyLightArmor, fortifySneak, resistPoison]));
final beritsAshes = new Ingredient(
    "Berit's Ashes",
    new Set.from(
        [damageStamina, fortifyConjuration, ravageStamina, resistFire]));
final bleedingCrown = new Ingredient(
    "Bleeding Crown",
    new Set.from(
        [fortifyBlock, resistMagic, weaknessToFire, weaknessToPoison]));
final blisterwort = new Ingredient("Blisterwort",
    new Set.from([damageStamina, fortifySmithing, frenzy, restoreHealth]));
final blueButterflyWing = new Ingredient(
    "Blue Butterfly Wing",
    new Set.from([
      damageMagickaRegen,
      damageStamina,
      fortifyConjuration,
      fortifyEnchanting
    ]));
final blueDartwing = new Ingredient("Blue Dartwing",
    new Set.from([fear, fortifyPickpocket, resistShock, restoreHealth]));
final blueMountainFlower = new Ingredient(
    "Blue Mountain Flower",
    new Set.from([
      damageMagickaRegen,
      fortifyConjuration,
      fortifyHealth,
      restoreHealth
    ]));
final boarTusk = new Ingredient("Boar Tusk",
    new Set.from([fortifyBlock, fortifyHealth, fortifyStamina, frenzy]));
final boneMeal = new Ingredient(
    "Bone Meal",
    new Set.from(
        [damageStamina, fortifyConjuration, ravageStamina, resistFire]));
final briarHeart = new Ingredient("Briar Heart",
    new Set.from([fortifyBlock, fortifyMagicka, paralysis, restoreMagicka]));
final burntSprigganWood = new Ingredient(
    "Burnt Spriggan Wood",
    new Set.from(
        [damageMagickaRegen, fortifyAlteration, slow, weaknessToFire]));
final butterflyWing = new Ingredient(
    "Butterfly Wing",
    new Set.from(
        [damageMagicka, fortifyBarter, lingeringDamageStamina, restoreHealth]));
final canisRoot = new Ingredient(
    "Canis Root",
    new Set.from(
        [damageStamina, fortifyMarksman, fortifyOneHanded, paralysis]));
final charredSkeeverHide = new Ingredient(
    "Charred Skeever Hide",
    new Set.from([cureDisease, resistPoison, restoreHealth, restoreStamina]),
    {cureDisease:0.36});
final chaurusEggs = new Ingredient(
    "Chaurus Eggs",
    new Set.from(
        [damageMagicka, fortifyStamina, invisibility, weaknessToPoison]));
final chaurusHunterAntennae = new Ingredient(
    "Chaurus Hunter Antennae",
    new Set.from([
      damageMagickaRegen,
      damageStamina,
      fortifyConjuration,
      fortifyEnchanting
    ]));
final chickensEgg = new Ingredient(
    "Chicken's Egg",
    new Set.from([
      damageMagickaRegen,
      lingeringDamageStamina,
      resistMagic,
      waterbreathing
    ]));
final creepCluster = new Ingredient(
    "Creep Cluster",
    new Set.from([
      damageStaminaRegen,
      fortifyCarryWeight,
      restoreMagicka,
      weaknessToMagic
    ]));
final crimsonNirnroot = new Ingredient("Crimson Nirnroot",
    new Set.from([damageHealth, damageStamina, invisibility, resistMagic]));
final cyrodilicSpadetail = new Ingredient("Cyrodilic Spadetail",
    new Set.from([damageStamina, fear, fortifyRestoration, ravageHealth]));
final daedraHeart = new Ingredient("Daedra Heart",
    new Set.from([damageMagicka, damageStaminaRegen, fear, restoreHealth]));
final deathbell = new Ingredient(
    "Deathbell",
    new Set.from([damageHealth, ravageStamina, slow, weaknessToPoison]),
    {ravageStamina: 2.1});
final dragonsTongue = new Ingredient(
    "Dragon's Tongue",
    new Set.from(
        [fortifyBarter, fortifyIllusion, fortifyTwoHanded, resistFire]));
final dwarvenOil = new Ingredient(
    "Dwarven Oil",
    new Set.from(
        [fortifyIllusion, regenerateMagicka, restoreMagicka, weaknessToMagic]));
final ectoplasm = new Ingredient(
    "Ectoplasm",
    new Set.from(
        [damageHealth, fortifyDestruction, fortifyMagicka, restoreMagicka]));
final elvesEar = new Ingredient(
    "Elves Ear",
    new Set.from(
        [fortifyMarksman, resistFire, restoreMagicka, weaknessToFrost]));
final emperorParasolMoss = new Ingredient(
    "Emperor Parasol Moss",
    new Set.from(
        [damageHealth, fortifyMagicka, fortifyTwoHanded, regenerateHealth]));
final eyeOfSabreCat = new Ingredient("Eye of Sabre Cat",
    new Set.from([damageMagicka, ravageHealth, restoreHealth, restoreStamina]));
final falmerEar = new Ingredient("Falmer Ear",
    new Set.from([damageHealth, fortifyLockpicking, frenzy, resistPoison]));
final felsaadTernFeathers = new Ingredient("Felsaad Tern Feathers",
    new Set.from([cureDisease, fortifyLightArmor, resistMagic, restoreHealth]));
final fireSalts = new Ingredient(
    "Fire Salts",
    new Set.from(
        [regenerateMagicka, resistFire, restoreMagicka, weaknessToFrost]));
final flyAmanita = new Ingredient("Fly Amanita",
    new Set.from([fortifyTwoHanded, frenzy, regenerateStamina, resistFire]));
final frostMirriam = new Ingredient(
    "Frost Mirriam",
    new Set.from(
        [damageStaminaRegen, fortifySneak, ravageMagicka, resistFrost]));
final frostSalts = new Ingredient(
    "Frost Salts",
    new Set.from(
        [fortifyConjuration, resistFrost, restoreMagicka, weaknessToFire]));
final garlic = new Ingredient(
    "Garlic",
    new Set.from(
        [fortifyStamina, regenerateHealth, regenerateMagicka, resistPoison]));
final giantLichen = new Ingredient(
    "Giant Lichen",
    new Set.from(
        [ravageHealth, restoreMagicka, weaknessToPoison, weaknessToShock]));
final giantsToe = new Ingredient(
  "Giant's Toe",
  new Set.from([
    damageStamina,
    damageStaminaRegen,
    fortifyCarryWeight,
    fortifyHealth,
  ]),
  {fortifyHealth: 5.9},
);
final gleamblossom = new Ingredient("Gleamblossom",
    new Set.from([fear, paralysis, regenerateHealth, resistMagic]));
final glowDust = new Ingredient(
    "Glow Dust",
    new Set.from(
        [damageMagicka, damageMagickaRegen, fortifyDestruction, resistShock]));
final glowingMushroom = new Ingredient(
    "Glowing Mushroom",
    new Set.from(
        [fortifyDestruction, fortifyHealth, fortifySmithing, resistShock]));
final grassPod = new Ingredient(
    "Grass Pod",
    new Set.from(
        [fortifyAlteration, ravageMagicka, resistPoison, restoreMagicka]));
final hagravenClaw = new Ingredient(
    "Hagraven Claw",
    new Set.from([
      fortifyBarter,
      fortifyEnchanting,
      lingeringDamageMagicka,
      resistMagic
    ]));
final hagravenFeathers = new Ingredient("Hagraven Feathers",
    new Set.from([damageMagicka, fortifyConjuration, frenzy, weaknessToShock]));
final hangingMoss = new Ingredient(
    "Hanging Moss",
    new Set.from(
        [damageMagicka, damageMagickaRegen, fortifyHealth, fortifyOneHanded]));
final hawkBeak = new Ingredient(
    "Hawk Beak",
    new Set.from(
        [fortifyCarryWeight, resistFrost, resistShock, restoreStamina]));
final hawkFeathers = new Ingredient(
    "Hawk Feathers",
    new Set.from(
        [cureDisease, fortifyLightArmor, fortifyOneHanded, fortifySneak]),
    {cureDisease: 0.36});
final hawksEgg = new Ingredient(
    "Hawk's Egg",
    new Set.from([
      damageMagickaRegen,
      lingeringDamageStamina,
      resistMagic,
      waterbreathing
    ]));
final histcarp = new Ingredient(
    "Histcarp",
    new Set.from(
        [damageStaminaRegen, fortifyMagicka, restoreStamina, waterbreathing]));
final honeycomb = new Ingredient(
    "Honeycomb",
    new Set.from(
        [fortifyBlock, fortifyLightArmor, ravageStamina, restoreStamina]));
final humanFlesh = new Ingredient("Human Flesh",
    new Set.from([damageHealth, fortifySneak, paralysis, restoreMagicka]));
final humanHeart = new Ingredient("Human Heart",
    new Set.from([damageHealth, damageMagicka, damageMagickaRegen, frenzy]));
final iceWraithTeeth = new Ingredient(
    "Ice Wraith Teeth",
    new Set.from(
        [fortifyHeavyArmor, invisibility, weaknessToFire, weaknessToFrost]));
final impStool = new Ingredient(
    "Imp Stool",
    new Set.from(
        [damageHealth, lingeringDamageHealth, paralysis, restoreHealth]));
final jarrinRoot = new Ingredient(
    "Jarrin Root",
    new Set.from(
        [damageHealth, damageMagicka, damageMagickaRegen, damageStamina]));
final jazbayGrapes = new Ingredient(
    "Jazbay Grapes",
    new Set.from(
        [fortifyMagicka, ravageHealth, regenerateMagicka, weaknessToMagic]));
final juniperBerries = new Ingredient(
    "Juniper Berries",
    new Set.from([
      damageStaminaRegen,
      fortifyMarksman,
      regenerateHealth,
      weaknessToFire
    ]));
final largeAntlers = new Ingredient("Large Antlers",
    new Set.from([damageStaminaRegen, fortifyStamina, restoreStamina, slow]));
final lavender = new Ingredient(
    "Lavender",
    new Set.from(
        [fortifyConjuration, fortifyStamina, ravageMagicka, resistMagic]));
final lunaMothWing = new Ingredient(
    "Luna Moth Wing",
    new Set.from(
        [damageMagicka, fortifyLightArmor, invisibility, regenerateHealth]));
final moonSugar = new Ingredient(
    "Moon Sugar",
    new Set.from(
        [regenerateMagicka, resistFrost, restoreMagicka, weaknessToFire]));
final moraTapinella = new Ingredient(
    "Mora Tapinella",
    new Set.from([
      fortifyIllusion,
      lingeringDamageHealth,
      regenerateStamina,
      restoreMagicka
    ]));
final mudcrabChitin = new Ingredient("Mudcrab Chitin",
    new Set.from([cureDisease, resistFire, resistPoison, restoreStamina]));
final namirasRot = new Ingredient("Namira's Rot",
    new Set.from([damageMagicka, fear, fortifyLockpicking, regenerateHealth]));
final netchJelly = new Ingredient("Netch Jelly",
    new Set.from([fear, fortifyCarryWeight, paralysis, restoreStamina]));
final nightshade = new Ingredient(
    "Nightshade",
    new Set.from([
      damageHealth,
      damageMagickaRegen,
      fortifyDestruction,
      lingeringDamageStamina
    ]));
final nirnroot = new Ingredient(
    "Nirnroot",
    new Set.from([damageHealth, damageStamina, invisibility, resistMagic]),
    {damageHealth: 12.6});
final nordicBarnacle = new Ingredient(
    "Nordic Barnacle",
    new Set.from(
        [damageMagicka, fortifyPickpocket, regenerateHealth, waterbreathing]));
final orangeDartwing = new Ingredient(
    "Orange Dartwing",
    new Set.from([
      fortifyPickpocket,
      lingeringDamageHealth,
      ravageMagicka,
      restoreStamina
    ]));
final pearl = new Ingredient("Pearl",
    new Set.from([fortifyBlock, resistShock, restoreMagicka, restoreStamina]));
final pineThrushEgg = new Ingredient(
    "Pine Thrush Egg",
    new Set.from(
        [fortifyLockpicking, resistShock, restoreStamina, weaknessToPoison]));
final poisonBloom = new Ingredient("Poison Bloom",
    new Set.from([damageHealth, fear, fortifyCarryWeight, slow]));
final powderedMammothTusk = new Ingredient("Powdered Mammoth Tusk",
    new Set.from([fear, fortifySneak, restoreStamina, weaknessToFire]));
final purpleMountainFlower = new Ingredient(
    "Purple Mountain Flower",
    new Set.from(
        [fortifySneak, lingeringDamageMagicka, resistFrost, restoreStamina]));
final redMountainFlower = new Ingredient(
    "Red Mountain Flower",
    new Set.from(
        [damageHealth, fortifyMagicka, ravageMagicka, restoreMagicka]));
final riverBetty = new Ingredient("River Betty",
    new Set.from([damageHealth, fortifyAlteration, fortifyCarryWeight, slow]));
final rockWarblerEgg = new Ingredient(
    "Rock Warbler Egg",
    new Set.from(
        [damageStamina, fortifyOneHanded, restoreHealth, weaknessToMagic]));
final sabreCatTooth = new Ingredient(
    "Sabre Cat Tooth",
    new Set.from([
      fortifyHeavyArmor,
      fortifySmithing,
      restoreStamina,
      weaknessToPoison
    ]));
final salmonRoe = new Ingredient(
    "Salmon Roe",
    new Set.from(
        [fortifyMagicka, regenerateMagicka, restoreStamina, waterbreathing]),
    {waterbreathing: 15.4, fortifyMagicka: 1.05});
final saltPile = new Ingredient(
    "Salt Pile",
    new Set.from(
        [fortifyRestoration, regenerateMagicka, slow, weaknessToMagic]));
final scalyPholiota = new Ingredient(
    "Scaly Pholiota",
    new Set.from([
      fortifyCarryWeight,
      fortifyIllusion,
      regenerateStamina,
      weaknessToMagic
    ]));
final scathecraw = new Ingredient(
    "Scathecraw",
    new Set.from(
        [lingeringDamageHealth, ravageHealth, ravageMagicka, ravageStamina]));
final silversidePerch = new Ingredient(
    "Silverside Perch",
    new Set.from(
        [damageStaminaRegen, ravageHealth, resistFrost, restoreStamina]));
final skeeverTail = new Ingredient(
    "Skeever Tail",
    new Set.from(
        [damageHealth, damageStaminaRegen, fortifyLightArmor, ravageHealth]));
final slaughterfishEgg = new Ingredient(
    "Slaughterfish Egg",
    new Set.from([
      fortifyPickpocket,
      fortifyStamina,
      lingeringDamageHealth,
      resistPoison
    ]));
final slaughterfishScales = new Ingredient(
    "Slaughterfish Scales",
    new Set.from(
        [fortifyBlock, fortifyHeavyArmor, lingeringDamageHealth, resistFrost]));
final smallAntlers = new Ingredient(
    "Small Antlers",
    new Set.from([
      damageHealth,
      fortifyRestoration,
      lingeringDamageStamina,
      weaknessToPoison
    ]));
final smallPearl = new Ingredient(
    "Small Pearl",
    new Set.from(
        [fortifyOneHanded, fortifyRestoration, resistFrost, restoreStamina]));
final snowberries = new Ingredient("Snowberries",
    new Set.from([fortifyEnchanting, resistFire, resistFrost, resistShock]));
final spawnAsh = new Ingredient(
    "Spawn Ash",
    new Set.from(
        [fortifyEnchanting, ravageMagicka, ravageStamina, resistFire]));
final spiderEgg = new Ingredient(
    "Spider Egg",
    new Set.from([
      damageMagickaRegen,
      damageStamina,
      fortifyLockpicking,
      fortifyMarksman
    ]));
final sprigganSap = new Ingredient(
    "Spriggan Sap",
    new Set.from([
      damageMagickaRegen,
      fortifyAlteration,
      fortifyEnchanting,
      fortifySmithing
    ]));
final swampFungalPod = new Ingredient(
    "Swamp Fungal Pod",
    new Set.from(
        [lingeringDamageMagicka, paralysis, resistShock, restoreHealth]));
final taproot = new Ingredient(
    "Taproot",
    new Set.from(
        [fortifyIllusion, regenerateMagicka, restoreMagicka, weaknessToMagic]));
final thistleBranch = new Ingredient(
    "Thistle Branch",
    new Set.from(
        [fortifyHeavyArmor, ravageStamina, resistFrost, resistPoison]));
final torchbugThorax = new Ingredient(
    "Torchbug Thorax",
    new Set.from([
      fortifyStamina,
      lingeringDamageMagicka,
      restoreStamina,
      weaknessToMagic
    ]));
final tramaRoot = new Ingredient("Trama Root",
    new Set.from([damageMagicka, fortifyCarryWeight, slow, weaknessToShock]));
final trollFat = new Ingredient("Troll Fat",
    new Set.from([damageHealth, fortifyTwoHanded, frenzy, resistPoison]));
final tundraCotton = new Ingredient("Tundra Cotton",
    new Set.from([fortifyBarter, fortifyBlock, fortifyMagicka, resistMagic]));
final vampireDust = new Ingredient(
    "Vampire Dust",
    new Set.from(
        [cureDisease, invisibility, regenerateHealth, restoreMagicka]));
final voidSalts = new Ingredient("Void Salts",
    new Set.from([damageHealth, fortifyMagicka, resistMagic, weaknessToShock]));
final wheat = new Ingredient(
    "Wheat",
    new Set.from([
      damageStaminaRegen,
      fortifyHealth,
      lingeringDamageMagicka,
      restoreHealth
    ]));
final whiteCap = new Ingredient(
    "White Cap",
    new Set.from(
        [fortifyHeavyArmor, ravageMagicka, restoreMagicka, weaknessToFrost]));
final wispWrappings = new Ingredient(
    "Wisp Wrappings",
    new Set.from(
        [fortifyCarryWeight, fortifyDestruction, resistMagic, restoreStamina]));
final yellowMountainFlower = new Ingredient(
    "Yellow Mountain Flower",
    new Set.from(
        [damageStaminaRegen, fortifyHealth, fortifyRestoration, resistPoison]));

final allIngredients = [
  abeceanLongfin,
  ancestorMothWing,
  ashCreepCluster,
  ashenGrassPod,
  ashHopperJelly,
  bearClaws,
  bee,
  beehiveHusk,
  beritsAshes,
  bleedingCrown,
  blisterwort,
  blueButterflyWing,
  blueDartwing,
  blueMountainFlower,
  boarTusk,
  boneMeal,
  briarHeart,
  burntSprigganWood,
  butterflyWing,
  canisRoot,
  charredSkeeverHide,
  chaurusEggs,
  chaurusHunterAntennae,
  chickensEgg,
  creepCluster,
  crimsonNirnroot,
  cyrodilicSpadetail,
  daedraHeart,
  deathbell,
  dragonsTongue,
  dwarvenOil,
  ectoplasm,
  elvesEar,
  emperorParasolMoss,
  eyeOfSabreCat,
  falmerEar,
  felsaadTernFeathers,
  fireSalts,
  flyAmanita,
  frostMirriam,
  frostSalts,
  garlic,
  giantLichen,
  giantsToe,
  gleamblossom,
  glowDust,
  glowingMushroom,
  grassPod,
  hagravenClaw,
  hagravenFeathers,
  hangingMoss,
  hawkBeak,
  hawkFeathers,
  hawksEgg,
  histcarp,
  honeycomb,
  humanFlesh,
  humanHeart,
  iceWraithTeeth,
  impStool,
  jarrinRoot,
  jazbayGrapes,
  juniperBerries,
  largeAntlers,
  lavender,
  lunaMothWing,
  moonSugar,
  moraTapinella,
  mudcrabChitin,
  namirasRot,
  netchJelly,
  nightshade,
  nirnroot,
  nordicBarnacle,
  orangeDartwing,
  pearl,
  pineThrushEgg,
  poisonBloom,
  powderedMammothTusk,
  purpleMountainFlower,
  redMountainFlower,
  riverBetty,
  rockWarblerEgg,
  sabreCatTooth,
  salmonRoe,
  saltPile,
  scalyPholiota,
  scathecraw,
  silversidePerch,
  skeeverTail,
  slaughterfishEgg,
  slaughterfishScales,
  smallAntlers,
  smallPearl,
  snowberries,
  spawnAsh,
  spiderEgg,
  sprigganSap,
  swampFungalPod,
  taproot,
  thistleBranch,
  torchbugThorax,
  tramaRoot,
  trollFat,
  tundraCotton,
  vampireDust,
  voidSalts,
  wheat,
  whiteCap,
  wispWrappings,
  yellowMountainFlower,
];

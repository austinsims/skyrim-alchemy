import 'common.dart';
import 'effects.dart';

var felsaadTernFeathers = new Ingredient("Felsaad Tern Feathers",
    new Set.from([cureDisease, fortifyLightArmor, resistMagic, restoreHealth]));
var mudcrabChitin = new Ingredient("Mudcrab Chitin",
    new Set.from([cureDisease, resistFire, resistPoison, restoreStamina]));
var vampireDust = new Ingredient(
    "Vampire Dust",
    new Set.from(
        [cureDisease, invisibility, regenerateHealth, restoreMagicka]));
var charredSkeeverHide = new Ingredient(
    "Charred Skeever Hide",
    new Set.from([cureDisease, resistPoison, restoreHealth, restoreStamina]),
    new Map.fromIterables([cureDisease], [0.36]));
var hawkFeathers = new Ingredient(
    "Hawk Feathers",
    new Set.from(
        [cureDisease, fortifyLightArmor, fortifyOneHanded, fortifySneak]),
    new Map.fromIterables([cureDisease], [0.36]));
var jarrinRoot = new Ingredient(
    "Jarrin Root",
    new Set.from(
        [damageHealth, damageMagicka, damageMagickaRegen, damageStamina]));
var riverBetty = new Ingredient("River Betty",
    new Set.from([damageHealth, fortifyAlteration, fortifyCarryWeight, slow]));
var nirnroot = new Ingredient(
    "Nirnroot",
    new Set.from([damageHealth, damageStamina, invisibility, resistMagic]),
    new Map.fromIterables([damageHealth], [12.6]));
var crimsonNirnroot = new Ingredient("Crimson Nirnroot",
    new Set.from([damageHealth, damageStamina, invisibility, resistMagic]));
var deathbell = new Ingredient(
    "Deathbell",
    new Set.from([damageHealth, ravageStamina, slow, weaknessToPoison]),
    new Map.fromIterables([ravageStamina], [2.1]));
var ectoplasm = new Ingredient(
    "Ectoplasm",
    new Set.from(
        [damageHealth, fortifyDestruction, fortifyMagicka, restoreMagicka]));
var emperorParasolMoss = new Ingredient(
    "Emperor Parasol Moss",
    new Set.from(
        [damageHealth, fortifyMagicka, fortifyTwoHanded, regenerateHealth]));
var falmerEar = new Ingredient("Falmer Ear",
    new Set.from([damageHealth, fortifyLockpicking, frenzy, resistPoison]));
var humanFlesh = new Ingredient("Human Flesh",
    new Set.from([damageHealth, fortifySneak, paralysis, restoreMagicka]));
var humanHeart = new Ingredient("Human Heart",
    new Set.from([damageHealth, damageMagicka, damageMagickaRegen, frenzy]));
var impStool = new Ingredient(
    "Imp Stool",
    new Set.from(
        [damageHealth, lingeringDamageHealth, paralysis, restoreHealth]));
var nightshade = new Ingredient(
    "Nightshade",
    new Set.from([
      damageHealth,
      damageMagickaRegen,
      fortifyDestruction,
      lingeringDamageStamina
    ]));
var poisonBloom = new Ingredient("Poison Bloom",
    new Set.from([damageHealth, fear, fortifyCarryWeight, slow]));
var redMountainFlower = new Ingredient(
    "Red Mountain Flower",
    new Set.from(
        [damageHealth, fortifyMagicka, ravageMagicka, restoreMagicka]));
var skeeverTail = new Ingredient(
    "Skeever Tail",
    new Set.from(
        [damageHealth, damageStaminaRegen, fortifyLightArmor, ravageHealth]));
var smallAntlers = new Ingredient(
    "Small Antlers",
    new Set.from([
      damageHealth,
      fortifyRestoration,
      lingeringDamageStamina,
      weaknessToPoison
    ]));
var trollFat = new Ingredient("Troll Fat",
    new Set.from([damageHealth, fortifyTwoHanded, frenzy, resistPoison]));
var voidSalts = new Ingredient("Void Salts",
    new Set.from([damageHealth, fortifyMagicka, resistMagic, weaknessToShock]));
var butterflyWing = new Ingredient(
    "Butterfly Wing",
    new Set.from(
        [damageMagicka, fortifyBarter, lingeringDamageStamina, restoreHealth]));
var chaurusEggs = new Ingredient(
    "Chaurus Eggs",
    new Set.from(
        [damageMagicka, fortifyStamina, invisibility, weaknessToPoison]));
var daedraHeart = new Ingredient("Daedra Heart",
    new Set.from([damageMagicka, damageStaminaRegen, fear, restoreHealth]));
var eyeOfSabreCat = new Ingredient("Eye of Sabre Cat",
    new Set.from([damageMagicka, ravageHealth, restoreHealth, restoreStamina]));
var glowDust = new Ingredient(
    "Glow Dust",
    new Set.from(
        [damageMagicka, damageMagickaRegen, fortifyDestruction, resistShock]));
var hagravenFeathers = new Ingredient("Hagraven Feathers",
    new Set.from([damageMagicka, fortifyConjuration, frenzy, weaknessToShock]));
var hangingMoss = new Ingredient(
    "Hanging Moss",
    new Set.from(
        [damageMagicka, damageMagickaRegen, fortifyHealth, fortifyOneHanded]));
var lunaMothWing = new Ingredient(
    "Luna Moth Wing",
    new Set.from(
        [damageMagicka, fortifyLightArmor, invisibility, regenerateHealth]));
var namirasRot = new Ingredient("Namira's Rot",
    new Set.from([damageMagicka, fear, fortifyLockpicking, regenerateHealth]));
var nordicBarnacle = new Ingredient(
    "Nordic Barnacle",
    new Set.from(
        [damageMagicka, fortifyPickpocket, regenerateHealth, waterbreathing]));
var tramaRoot = new Ingredient("Trama Root",
    new Set.from([damageMagicka, fortifyCarryWeight, slow, weaknessToShock]));
var ancestorMothWing = new Ingredient(
    "Ancestor Moth Wing",
    new Set.from([
      damageMagickaRegen,
      damageStamina,
      fortifyConjuration,
      fortifyEnchanting
    ]));
var bearClaws = new Ingredient(
    "Bear Claws",
    new Set.from(
        [damageMagickaRegen, fortifyHealth, fortifyOneHanded, restoreStamina]));
var blueButterflyWing = new Ingredient(
    "Blue Butterfly Wing",
    new Set.from([
      damageMagickaRegen,
      damageStamina,
      fortifyConjuration,
      fortifyEnchanting
    ]));
var blueMountainFlower = new Ingredient(
    "Blue Mountain Flower",
    new Set.from([
      damageMagickaRegen,
      fortifyConjuration,
      fortifyHealth,
      restoreHealth
    ]));
var burntSprigganWood = new Ingredient(
    "Burnt Spriggan Wood",
    new Set.from(
        [damageMagickaRegen, fortifyAlteration, slow, weaknessToFire]));
var chaurusHunterAntennae = new Ingredient(
    "Chaurus Hunter Antennae",
    new Set.from([
      damageMagickaRegen,
      damageStamina,
      fortifyConjuration,
      fortifyEnchanting
    ]));
var chickensEgg = new Ingredient(
    "Chicken's Egg",
    new Set.from([
      damageMagickaRegen,
      lingeringDamageStamina,
      resistMagic,
      waterbreathing
    ]));
var hawksEgg = new Ingredient(
    "Hawk's Egg",
    new Set.from([
      damageMagickaRegen,
      lingeringDamageStamina,
      resistMagic,
      waterbreathing
    ]));
var spiderEgg = new Ingredient(
    "Spider Egg",
    new Set.from([
      damageMagickaRegen,
      damageStamina,
      fortifyLockpicking,
      fortifyMarksman
    ]));
var sprigganSap = new Ingredient(
    "Spriggan Sap",
    new Set.from([
      damageMagickaRegen,
      fortifyAlteration,
      fortifyEnchanting,
      fortifySmithing
    ]));
var ashCreepCluster = new Ingredient(
    "Ash Creep Cluster",
    new Set.from(
        [damageStamina, fortifyDestruction, invisibility, resistFire]));
var beritsAshes = new Ingredient(
    "Berit's Ashes",
    new Set.from(
        [damageStamina, fortifyConjuration, ravageStamina, resistFire]));
var blisterwort = new Ingredient("Blisterwort",
    new Set.from([damageStamina, fortifySmithing, frenzy, restoreHealth]));
var boneMeal = new Ingredient(
    "Bone Meal",
    new Set.from(
        [damageStamina, fortifyConjuration, ravageStamina, resistFire]));
var canisRoot = new Ingredient(
    "Canis Root",
    new Set.from(
        [damageStamina, fortifyMarksman, fortifyOneHanded, paralysis]));
var cyrodilicSpadetail = new Ingredient("Cyrodilic Spadetail",
    new Set.from([damageStamina, fear, fortifyRestoration, ravageHealth]));
var giantsToe = new Ingredient(
  "Giant's Toe",
  new Set.from([
    damageStamina,
    damageStaminaRegen,
    fortifyCarryWeight,
    fortifyHealth,
  ]),
  new Map.fromIterables([fortifyHealth], [5.9]),
);
var rockWarblerEgg = new Ingredient(
    "Rock Warbler Egg",
    new Set.from(
        [damageStamina, fortifyOneHanded, restoreHealth, weaknessToMagic]));
var creepCluster = new Ingredient(
    "Creep Cluster",
    new Set.from([
      damageStaminaRegen,
      fortifyCarryWeight,
      restoreMagicka,
      weaknessToMagic
    ]));
var frostMirriam = new Ingredient(
    "Frost Mirriam",
    new Set.from(
        [damageStaminaRegen, fortifySneak, ravageMagicka, resistFrost]));
var histcarp = new Ingredient(
    "Histcarp",
    new Set.from(
        [damageStaminaRegen, fortifyMagicka, restoreStamina, waterbreathing]));
var juniperBerries = new Ingredient(
    "Juniper Berries",
    new Set.from([
      damageStaminaRegen,
      fortifyMarksman,
      regenerateHealth,
      weaknessToFire
    ]));
var largeAntlers = new Ingredient("Large Antlers",
    new Set.from([damageStaminaRegen, fortifyStamina, restoreStamina, slow]));
var silversidePerch = new Ingredient(
    "Silverside Perch",
    new Set.from(
        [damageStaminaRegen, ravageHealth, resistFrost, restoreStamina]));
var wheat = new Ingredient(
    "Wheat",
    new Set.from([
      damageStaminaRegen,
      fortifyHealth,
      lingeringDamageMagicka,
      restoreHealth
    ]));
var yellowMountainFlower = new Ingredient(
    "Yellow Mountain Flower",
    new Set.from(
        [damageStaminaRegen, fortifyHealth, fortifyRestoration, resistPoison]));
var blueDartwing = new Ingredient("Blue Dartwing",
    new Set.from([fear, fortifyPickpocket, resistShock, restoreHealth]));
var gleamblossom = new Ingredient("Gleamblossom",
    new Set.from([fear, paralysis, regenerateHealth, resistMagic]));
var netchJelly = new Ingredient("Netch Jelly",
    new Set.from([fear, fortifyCarryWeight, paralysis, restoreStamina]));
var powderedMammothTusk = new Ingredient("Powdered Mammoth Tusk",
    new Set.from([fear, fortifySneak, restoreStamina, weaknessToFire]));
var grassPod = new Ingredient(
    "Grass Pod",
    new Set.from(
        [fortifyAlteration, ravageMagicka, resistPoison, restoreMagicka]));
var dragonsTongue = new Ingredient(
    "Dragon's Tongue",
    new Set.from(
        [fortifyBarter, fortifyIllusion, fortifyTwoHanded, resistFire]));
var hagravenClaw = new Ingredient(
    "Hagraven Claw",
    new Set.from([
      fortifyBarter,
      fortifyEnchanting,
      lingeringDamageMagicka,
      resistMagic
    ]));
var tundraCotton = new Ingredient("Tundra Cotton",
    new Set.from([fortifyBarter, fortifyBlock, fortifyMagicka, resistMagic]));
var bleedingCrown = new Ingredient(
    "Bleeding Crown",
    new Set.from(
        [fortifyBlock, resistMagic, weaknessToFire, weaknessToPoison]));
var boarTusk = new Ingredient("Boar Tusk",
    new Set.from([fortifyBlock, fortifyHealth, fortifyStamina, frenzy]));
var pearl = new Ingredient("Pearl",
    new Set.from([fortifyBlock, resistShock, restoreMagicka, restoreStamina]));
var slaughterfishScales = new Ingredient(
    "Slaughterfish Scales",
    new Set.from(
        [fortifyBlock, fortifyHeavyArmor, lingeringDamageHealth, resistFrost]));
var briarHeart = new Ingredient("Briar Heart",
    new Set.from([fortifyBlock, fortifyMagicka, paralysis, restoreMagicka]));
var honeycomb = new Ingredient(
    "Honeycomb",
    new Set.from(
        [fortifyBlock, fortifyLightArmor, ravageStamina, restoreStamina]));
var hawkBeak = new Ingredient(
    "Hawk Beak",
    new Set.from(
        [fortifyCarryWeight, resistFrost, resistShock, restoreStamina]));
var scalyPholiota = new Ingredient(
    "Scaly Pholiota",
    new Set.from([
      fortifyCarryWeight,
      fortifyIllusion,
      regenerateStamina,
      weaknessToMagic
    ]));
var wispWrappings = new Ingredient(
    "Wisp Wrappings",
    new Set.from(
        [fortifyCarryWeight, fortifyDestruction, resistMagic, restoreStamina]));
var frostSalts = new Ingredient(
    "Frost Salts",
    new Set.from(
        [fortifyConjuration, resistFrost, restoreMagicka, weaknessToFire]));
var lavender = new Ingredient(
    "Lavender",
    new Set.from(
        [fortifyConjuration, fortifyStamina, ravageMagicka, resistMagic]));
var beehiveHusk = new Ingredient(
    "Beehive Husk",
    new Set.from(
        [fortifyDestruction, fortifyLightArmor, fortifySneak, resistPoison]));
var glowingMushroom = new Ingredient(
    "Glowing Mushroom",
    new Set.from(
        [fortifyDestruction, fortifyHealth, fortifySmithing, resistShock]));
var snowberries = new Ingredient("Snowberries",
    new Set.from([fortifyEnchanting, resistFire, resistFrost, resistShock]));
var spawnAsh = new Ingredient(
    "Spawn Ash",
    new Set.from(
        [fortifyEnchanting, ravageMagicka, ravageStamina, resistFire]));
var iceWraithTeeth = new Ingredient(
    "Ice Wraith Teeth",
    new Set.from(
        [fortifyHeavyArmor, invisibility, weaknessToFire, weaknessToFrost]));
var sabreCatTooth = new Ingredient(
    "Sabre Cat Tooth",
    new Set.from([
      fortifyHeavyArmor,
      fortifySmithing,
      restoreStamina,
      weaknessToPoison
    ]));
var thistleBranch = new Ingredient(
    "Thistle Branch",
    new Set.from(
        [fortifyHeavyArmor, ravageStamina, resistFrost, resistPoison]));
var whiteCap = new Ingredient(
    "White Cap",
    new Set.from(
        [fortifyHeavyArmor, ravageMagicka, restoreMagicka, weaknessToFrost]));
var dwarvenOil = new Ingredient(
    "Dwarven Oil",
    new Set.from(
        [fortifyIllusion, regenerateMagicka, restoreMagicka, weaknessToMagic]));
var moraTapinella = new Ingredient(
    "Mora Tapinella",
    new Set.from([
      fortifyIllusion,
      lingeringDamageHealth,
      regenerateStamina,
      restoreMagicka
    ]));
var taproot = new Ingredient(
    "Taproot",
    new Set.from(
        [fortifyIllusion, regenerateMagicka, restoreMagicka, weaknessToMagic]));
var ashHopperJelly = new Ingredient(
    "Ash Hopper Jelly",
    new Set.from(
        [fortifyLightArmor, resistShock, restoreHealth, weaknessToFrost]));
var ashenGrassPod = new Ingredient(
    "Ashen Grass Pod",
    new Set.from(
        [fortifyLockpicking, fortifySneak, resistFire, weaknessToShock]));
var pineThrushEgg = new Ingredient(
    "Pine Thrush Egg",
    new Set.from(
        [fortifyLockpicking, resistShock, restoreStamina, weaknessToPoison]));
var jazbayGrapes = new Ingredient(
    "Jazbay Grapes",
    new Set.from(
        [fortifyMagicka, ravageHealth, regenerateMagicka, weaknessToMagic]));
var salmonRoe = new Ingredient(
    "Salmon Roe",
    new Set.from(
        [fortifyMagicka, regenerateMagicka, restoreStamina, waterbreathing]),
    new Map.fromIterables([waterbreathing, fortifyMagicka], [15.4, 1.05]));
var elvesEar = new Ingredient(
    "Elves Ear",
    new Set.from(
        [fortifyMarksman, resistFire, restoreMagicka, weaknessToFrost]));
var smallPearl = new Ingredient(
    "Small Pearl",
    new Set.from(
        [fortifyOneHanded, fortifyRestoration, resistFrost, restoreStamina]));
var orangeDartwing = new Ingredient(
    "Orange Dartwing",
    new Set.from([
      fortifyPickpocket,
      lingeringDamageHealth,
      ravageMagicka,
      restoreStamina
    ]));
var slaughterfishEgg = new Ingredient(
    "Slaughterfish Egg",
    new Set.from([
      fortifyPickpocket,
      fortifyStamina,
      lingeringDamageHealth,
      resistPoison
    ]));
var abeceanLongfin = new Ingredient(
    "Abecean Longfin",
    new Set.from(
        [fortifyRestoration, fortifySneak, weaknessToFrost, weaknessToPoison]));
var saltPile = new Ingredient(
    "Salt Pile",
    new Set.from(
        [fortifyRestoration, regenerateMagicka, slow, weaknessToMagic]));
var purpleMountainFlower = new Ingredient(
    "Purple Mountain Flower",
    new Set.from(
        [fortifySneak, lingeringDamageMagicka, resistFrost, restoreStamina]));
var garlic = new Ingredient(
    "Garlic",
    new Set.from(
        [fortifyStamina, regenerateHealth, regenerateMagicka, resistPoison]));
var torchbugThorax = new Ingredient(
    "Torchbug Thorax",
    new Set.from([
      fortifyStamina,
      lingeringDamageMagicka,
      restoreStamina,
      weaknessToMagic
    ]));
var flyAmanita = new Ingredient("Fly Amanita",
    new Set.from([fortifyTwoHanded, frenzy, regenerateStamina, resistFire]));
var scathecraw = new Ingredient(
    "Scathecraw",
    new Set.from(
        [lingeringDamageHealth, ravageHealth, ravageMagicka, ravageStamina]));
var swampFungalPod = new Ingredient(
    "Swamp Fungal Pod",
    new Set.from(
        [lingeringDamageMagicka, paralysis, resistShock, restoreHealth]));
var giantLichen = new Ingredient(
    "Giant Lichen",
    new Set.from(
        [ravageHealth, restoreMagicka, weaknessToPoison, weaknessToShock]));
var bee = new Ingredient(
    "Bee",
    new Set.from(
        [ravageStamina, regenerateStamina, restoreStamina, weaknessToShock]));
var fireSalts = new Ingredient(
    "Fire Salts",
    new Set.from(
        [regenerateMagicka, resistFire, restoreMagicka, weaknessToFrost]));
var moonSugar = new Ingredient(
    "Moon Sugar",
    new Set.from(
        [regenerateMagicka, resistFrost, restoreMagicka, weaknessToFire]));

// TODO(adsims): Optimize then uncomment other ingredients
var allIngredients = [
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

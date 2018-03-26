import 'common.dart';
import 'effects.dart';

var abeceanLongfin = new Ingredient(
    "Abecean Longfin",
    new Set.from(
        [fortifyRestoration, fortifySneak, weaknessToFrost, weaknessToPoison]));
var ancestorMothWing = new Ingredient(
    "Ancestor Moth Wing",
    new Set.from([
      damageMagickaRegen,
      damageStamina,
      fortifyConjuration,
      fortifyEnchanting
    ]));
var ashCreepCluster = new Ingredient(
    "Ash Creep Cluster",
    new Set.from(
        [damageStamina, fortifyDestruction, invisibility, resistFire]));
var ashenGrassPod = new Ingredient(
    "Ashen Grass Pod",
    new Set.from(
        [fortifyLockpicking, fortifySneak, resistFire, weaknessToShock]));
var ashHopperJelly = new Ingredient(
    "Ash Hopper Jelly",
    new Set.from(
        [fortifyLightArmor, resistShock, restoreHealth, weaknessToFrost]));
var bearClaws = new Ingredient(
    "Bear Claws",
    new Set.from(
        [damageMagickaRegen, fortifyHealth, fortifyOneHanded, restoreStamina]));
var bee = new Ingredient(
    "Bee",
    new Set.from(
        [ravageStamina, regenerateStamina, restoreStamina, weaknessToShock]));
var beehiveHusk = new Ingredient(
    "Beehive Husk",
    new Set.from(
        [fortifyDestruction, fortifyLightArmor, fortifySneak, resistPoison]));
var beritsAshes = new Ingredient(
    "Berit's Ashes",
    new Set.from(
        [damageStamina, fortifyConjuration, ravageStamina, resistFire]));
var bleedingCrown = new Ingredient(
    "Bleeding Crown",
    new Set.from(
        [fortifyBlock, resistMagic, weaknessToFire, weaknessToPoison]));
var blisterwort = new Ingredient("Blisterwort",
    new Set.from([damageStamina, fortifySmithing, frenzy, restoreHealth]));
var blueButterflyWing = new Ingredient(
    "Blue Butterfly Wing",
    new Set.from([
      damageMagickaRegen,
      damageStamina,
      fortifyConjuration,
      fortifyEnchanting
    ]));
var blueDartwing = new Ingredient("Blue Dartwing",
    new Set.from([fear, fortifyPickpocket, resistShock, restoreHealth]));
var blueMountainFlower = new Ingredient(
    "Blue Mountain Flower",
    new Set.from([
      damageMagickaRegen,
      fortifyConjuration,
      fortifyHealth,
      restoreHealth
    ]));
var boarTusk = new Ingredient("Boar Tusk",
    new Set.from([fortifyBlock, fortifyHealth, fortifyStamina, frenzy]));
var boneMeal = new Ingredient(
    "Bone Meal",
    new Set.from(
        [damageStamina, fortifyConjuration, ravageStamina, resistFire]));
var briarHeart = new Ingredient("Briar Heart",
    new Set.from([fortifyBlock, fortifyMagicka, paralysis, restoreMagicka]));
var burntSprigganWood = new Ingredient(
    "Burnt Spriggan Wood",
    new Set.from(
        [damageMagickaRegen, fortifyAlteration, slow, weaknessToFire]));
var butterflyWing = new Ingredient(
    "Butterfly Wing",
    new Set.from(
        [damageMagicka, fortifyBarter, lingeringDamageStamina, restoreHealth]));
var canisRoot = new Ingredient(
    "Canis Root",
    new Set.from(
        [damageStamina, fortifyMarksman, fortifyOneHanded, paralysis]));
var charredSkeeverHide = new Ingredient(
    "Charred Skeever Hide",
    new Set.from([cureDisease, resistPoison, restoreHealth, restoreStamina]),
    {cureDisease:0.36});
var chaurusEggs = new Ingredient(
    "Chaurus Eggs",
    new Set.from(
        [damageMagicka, fortifyStamina, invisibility, weaknessToPoison]));
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
var creepCluster = new Ingredient(
    "Creep Cluster",
    new Set.from([
      damageStaminaRegen,
      fortifyCarryWeight,
      restoreMagicka,
      weaknessToMagic
    ]));
var crimsonNirnroot = new Ingredient("Crimson Nirnroot",
    new Set.from([damageHealth, damageStamina, invisibility, resistMagic]));
var cyrodilicSpadetail = new Ingredient("Cyrodilic Spadetail",
    new Set.from([damageStamina, fear, fortifyRestoration, ravageHealth]));
var daedraHeart = new Ingredient("Daedra Heart",
    new Set.from([damageMagicka, damageStaminaRegen, fear, restoreHealth]));
var deathbell = new Ingredient(
    "Deathbell",
    new Set.from([damageHealth, ravageStamina, slow, weaknessToPoison]),
    {ravageStamina: 2.1});
var dragonsTongue = new Ingredient(
    "Dragon's Tongue",
    new Set.from(
        [fortifyBarter, fortifyIllusion, fortifyTwoHanded, resistFire]));
var dwarvenOil = new Ingredient(
    "Dwarven Oil",
    new Set.from(
        [fortifyIllusion, regenerateMagicka, restoreMagicka, weaknessToMagic]));
var ectoplasm = new Ingredient(
    "Ectoplasm",
    new Set.from(
        [damageHealth, fortifyDestruction, fortifyMagicka, restoreMagicka]));
var elvesEar = new Ingredient(
    "Elves Ear",
    new Set.from(
        [fortifyMarksman, resistFire, restoreMagicka, weaknessToFrost]));
var emperorParasolMoss = new Ingredient(
    "Emperor Parasol Moss",
    new Set.from(
        [damageHealth, fortifyMagicka, fortifyTwoHanded, regenerateHealth]));
var eyeOfSabreCat = new Ingredient("Eye of Sabre Cat",
    new Set.from([damageMagicka, ravageHealth, restoreHealth, restoreStamina]));
var falmerEar = new Ingredient("Falmer Ear",
    new Set.from([damageHealth, fortifyLockpicking, frenzy, resistPoison]));
var felsaadTernFeathers = new Ingredient("Felsaad Tern Feathers",
    new Set.from([cureDisease, fortifyLightArmor, resistMagic, restoreHealth]));
var fireSalts = new Ingredient(
    "Fire Salts",
    new Set.from(
        [regenerateMagicka, resistFire, restoreMagicka, weaknessToFrost]));
var flyAmanita = new Ingredient("Fly Amanita",
    new Set.from([fortifyTwoHanded, frenzy, regenerateStamina, resistFire]));
var frostMirriam = new Ingredient(
    "Frost Mirriam",
    new Set.from(
        [damageStaminaRegen, fortifySneak, ravageMagicka, resistFrost]));
var frostSalts = new Ingredient(
    "Frost Salts",
    new Set.from(
        [fortifyConjuration, resistFrost, restoreMagicka, weaknessToFire]));
var garlic = new Ingredient(
    "Garlic",
    new Set.from(
        [fortifyStamina, regenerateHealth, regenerateMagicka, resistPoison]));
var giantLichen = new Ingredient(
    "Giant Lichen",
    new Set.from(
        [ravageHealth, restoreMagicka, weaknessToPoison, weaknessToShock]));
var giantsToe = new Ingredient(
  "Giant's Toe",
  new Set.from([
    damageStamina,
    damageStaminaRegen,
    fortifyCarryWeight,
    fortifyHealth,
  ]),
  {fortifyHealth: 5.9},
);
var gleamblossom = new Ingredient("Gleamblossom",
    new Set.from([fear, paralysis, regenerateHealth, resistMagic]));
var glowDust = new Ingredient(
    "Glow Dust",
    new Set.from(
        [damageMagicka, damageMagickaRegen, fortifyDestruction, resistShock]));
var glowingMushroom = new Ingredient(
    "Glowing Mushroom",
    new Set.from(
        [fortifyDestruction, fortifyHealth, fortifySmithing, resistShock]));
var grassPod = new Ingredient(
    "Grass Pod",
    new Set.from(
        [fortifyAlteration, ravageMagicka, resistPoison, restoreMagicka]));
var hagravenClaw = new Ingredient(
    "Hagraven Claw",
    new Set.from([
      fortifyBarter,
      fortifyEnchanting,
      lingeringDamageMagicka,
      resistMagic
    ]));
var hagravenFeathers = new Ingredient("Hagraven Feathers",
    new Set.from([damageMagicka, fortifyConjuration, frenzy, weaknessToShock]));
var hangingMoss = new Ingredient(
    "Hanging Moss",
    new Set.from(
        [damageMagicka, damageMagickaRegen, fortifyHealth, fortifyOneHanded]));
var hawkBeak = new Ingredient(
    "Hawk Beak",
    new Set.from(
        [fortifyCarryWeight, resistFrost, resistShock, restoreStamina]));
var hawkFeathers = new Ingredient(
    "Hawk Feathers",
    new Set.from(
        [cureDisease, fortifyLightArmor, fortifyOneHanded, fortifySneak]),
    {cureDisease: 0.36});
var hawksEgg = new Ingredient(
    "Hawk's Egg",
    new Set.from([
      damageMagickaRegen,
      lingeringDamageStamina,
      resistMagic,
      waterbreathing
    ]));
var histcarp = new Ingredient(
    "Histcarp",
    new Set.from(
        [damageStaminaRegen, fortifyMagicka, restoreStamina, waterbreathing]));
var honeycomb = new Ingredient(
    "Honeycomb",
    new Set.from(
        [fortifyBlock, fortifyLightArmor, ravageStamina, restoreStamina]));
var humanFlesh = new Ingredient("Human Flesh",
    new Set.from([damageHealth, fortifySneak, paralysis, restoreMagicka]));
var humanHeart = new Ingredient("Human Heart",
    new Set.from([damageHealth, damageMagicka, damageMagickaRegen, frenzy]));
var iceWraithTeeth = new Ingredient(
    "Ice Wraith Teeth",
    new Set.from(
        [fortifyHeavyArmor, invisibility, weaknessToFire, weaknessToFrost]));
var impStool = new Ingredient(
    "Imp Stool",
    new Set.from(
        [damageHealth, lingeringDamageHealth, paralysis, restoreHealth]));
var jarrinRoot = new Ingredient(
    "Jarrin Root",
    new Set.from(
        [damageHealth, damageMagicka, damageMagickaRegen, damageStamina]));
var jazbayGrapes = new Ingredient(
    "Jazbay Grapes",
    new Set.from(
        [fortifyMagicka, ravageHealth, regenerateMagicka, weaknessToMagic]));
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
var lavender = new Ingredient(
    "Lavender",
    new Set.from(
        [fortifyConjuration, fortifyStamina, ravageMagicka, resistMagic]));
var lunaMothWing = new Ingredient(
    "Luna Moth Wing",
    new Set.from(
        [damageMagicka, fortifyLightArmor, invisibility, regenerateHealth]));
var moonSugar = new Ingredient(
    "Moon Sugar",
    new Set.from(
        [regenerateMagicka, resistFrost, restoreMagicka, weaknessToFire]));
var moraTapinella = new Ingredient(
    "Mora Tapinella",
    new Set.from([
      fortifyIllusion,
      lingeringDamageHealth,
      regenerateStamina,
      restoreMagicka
    ]));
var mudcrabChitin = new Ingredient("Mudcrab Chitin",
    new Set.from([cureDisease, resistFire, resistPoison, restoreStamina]));
var namirasRot = new Ingredient("Namira's Rot",
    new Set.from([damageMagicka, fear, fortifyLockpicking, regenerateHealth]));
var netchJelly = new Ingredient("Netch Jelly",
    new Set.from([fear, fortifyCarryWeight, paralysis, restoreStamina]));
var nightshade = new Ingredient(
    "Nightshade",
    new Set.from([
      damageHealth,
      damageMagickaRegen,
      fortifyDestruction,
      lingeringDamageStamina
    ]));
var nirnroot = new Ingredient(
    "Nirnroot",
    new Set.from([damageHealth, damageStamina, invisibility, resistMagic]),
    {damageHealth: 12.6});
var nordicBarnacle = new Ingredient(
    "Nordic Barnacle",
    new Set.from(
        [damageMagicka, fortifyPickpocket, regenerateHealth, waterbreathing]));
var orangeDartwing = new Ingredient(
    "Orange Dartwing",
    new Set.from([
      fortifyPickpocket,
      lingeringDamageHealth,
      ravageMagicka,
      restoreStamina
    ]));
var pearl = new Ingredient("Pearl",
    new Set.from([fortifyBlock, resistShock, restoreMagicka, restoreStamina]));
var pineThrushEgg = new Ingredient(
    "Pine Thrush Egg",
    new Set.from(
        [fortifyLockpicking, resistShock, restoreStamina, weaknessToPoison]));
var poisonBloom = new Ingredient("Poison Bloom",
    new Set.from([damageHealth, fear, fortifyCarryWeight, slow]));
var powderedMammothTusk = new Ingredient("Powdered Mammoth Tusk",
    new Set.from([fear, fortifySneak, restoreStamina, weaknessToFire]));
var purpleMountainFlower = new Ingredient(
    "Purple Mountain Flower",
    new Set.from(
        [fortifySneak, lingeringDamageMagicka, resistFrost, restoreStamina]));
var redMountainFlower = new Ingredient(
    "Red Mountain Flower",
    new Set.from(
        [damageHealth, fortifyMagicka, ravageMagicka, restoreMagicka]));
var riverBetty = new Ingredient("River Betty",
    new Set.from([damageHealth, fortifyAlteration, fortifyCarryWeight, slow]));
var rockWarblerEgg = new Ingredient(
    "Rock Warbler Egg",
    new Set.from(
        [damageStamina, fortifyOneHanded, restoreHealth, weaknessToMagic]));
var sabreCatTooth = new Ingredient(
    "Sabre Cat Tooth",
    new Set.from([
      fortifyHeavyArmor,
      fortifySmithing,
      restoreStamina,
      weaknessToPoison
    ]));
var salmonRoe = new Ingredient(
    "Salmon Roe",
    new Set.from(
        [fortifyMagicka, regenerateMagicka, restoreStamina, waterbreathing]),
    {waterbreathing: 15.4, fortifyMagicka: 1.05});
var saltPile = new Ingredient(
    "Salt Pile",
    new Set.from(
        [fortifyRestoration, regenerateMagicka, slow, weaknessToMagic]));
var scalyPholiota = new Ingredient(
    "Scaly Pholiota",
    new Set.from([
      fortifyCarryWeight,
      fortifyIllusion,
      regenerateStamina,
      weaknessToMagic
    ]));
var scathecraw = new Ingredient(
    "Scathecraw",
    new Set.from(
        [lingeringDamageHealth, ravageHealth, ravageMagicka, ravageStamina]));
var silversidePerch = new Ingredient(
    "Silverside Perch",
    new Set.from(
        [damageStaminaRegen, ravageHealth, resistFrost, restoreStamina]));
var skeeverTail = new Ingredient(
    "Skeever Tail",
    new Set.from(
        [damageHealth, damageStaminaRegen, fortifyLightArmor, ravageHealth]));
var slaughterfishEgg = new Ingredient(
    "Slaughterfish Egg",
    new Set.from([
      fortifyPickpocket,
      fortifyStamina,
      lingeringDamageHealth,
      resistPoison
    ]));
var slaughterfishScales = new Ingredient(
    "Slaughterfish Scales",
    new Set.from(
        [fortifyBlock, fortifyHeavyArmor, lingeringDamageHealth, resistFrost]));
var smallAntlers = new Ingredient(
    "Small Antlers",
    new Set.from([
      damageHealth,
      fortifyRestoration,
      lingeringDamageStamina,
      weaknessToPoison
    ]));
var smallPearl = new Ingredient(
    "Small Pearl",
    new Set.from(
        [fortifyOneHanded, fortifyRestoration, resistFrost, restoreStamina]));
var snowberries = new Ingredient("Snowberries",
    new Set.from([fortifyEnchanting, resistFire, resistFrost, resistShock]));
var spawnAsh = new Ingredient(
    "Spawn Ash",
    new Set.from(
        [fortifyEnchanting, ravageMagicka, ravageStamina, resistFire]));
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
var swampFungalPod = new Ingredient(
    "Swamp Fungal Pod",
    new Set.from(
        [lingeringDamageMagicka, paralysis, resistShock, restoreHealth]));
var taproot = new Ingredient(
    "Taproot",
    new Set.from(
        [fortifyIllusion, regenerateMagicka, restoreMagicka, weaknessToMagic]));
var thistleBranch = new Ingredient(
    "Thistle Branch",
    new Set.from(
        [fortifyHeavyArmor, ravageStamina, resistFrost, resistPoison]));
var torchbugThorax = new Ingredient(
    "Torchbug Thorax",
    new Set.from([
      fortifyStamina,
      lingeringDamageMagicka,
      restoreStamina,
      weaknessToMagic
    ]));
var tramaRoot = new Ingredient("Trama Root",
    new Set.from([damageMagicka, fortifyCarryWeight, slow, weaknessToShock]));
var trollFat = new Ingredient("Troll Fat",
    new Set.from([damageHealth, fortifyTwoHanded, frenzy, resistPoison]));
var tundraCotton = new Ingredient("Tundra Cotton",
    new Set.from([fortifyBarter, fortifyBlock, fortifyMagicka, resistMagic]));
var vampireDust = new Ingredient(
    "Vampire Dust",
    new Set.from(
        [cureDisease, invisibility, regenerateHealth, restoreMagicka]));
var voidSalts = new Ingredient("Void Salts",
    new Set.from([damageHealth, fortifyMagicka, resistMagic, weaknessToShock]));
var wheat = new Ingredient(
    "Wheat",
    new Set.from([
      damageStaminaRegen,
      fortifyHealth,
      lingeringDamageMagicka,
      restoreHealth
    ]));
var whiteCap = new Ingredient(
    "White Cap",
    new Set.from(
        [fortifyHeavyArmor, ravageMagicka, restoreMagicka, weaknessToFrost]));
var wispWrappings = new Ingredient(
    "Wisp Wrappings",
    new Set.from(
        [fortifyCarryWeight, fortifyDestruction, resistMagic, restoreStamina]));
var yellowMountainFlower = new Ingredient(
    "Yellow Mountain Flower",
    new Set.from(
        [damageStaminaRegen, fortifyHealth, fortifyRestoration, resistPoison]));

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

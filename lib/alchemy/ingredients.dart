import 'common.dart';
import 'effects.dart';

final abeceanLongfin = new Ingredient(
    name: "Abecean Longfin",
    effects: new Set.from(
        [fortifyRestoration, fortifySneak, weaknessToFrost, weaknessToPoison]),
    value: 15);
final ancestorMothWing = new Ingredient(
    name: "Ancestor Moth Wing",
    effects: new Set.from([
      damageMagickaRegen,
      damageStamina,
      fortifyConjuration,
      fortifyEnchanting
    ]),
    value: 2);
final ashCreepCluster = new Ingredient(
    name: "Ash Creep Cluster",
    effects: new Set.from(
        [damageStamina, fortifyDestruction, invisibility, resistFire]),
    value: 20);
final ashenGrassPod = new Ingredient(
    name: "Ashen Grass Pod",
    effects: new Set.from(
        [fortifyLockpicking, fortifySneak, resistFire, weaknessToShock]),
    value: 1);
final ashHopperJelly = new Ingredient(
    name: "Ash Hopper Jelly",
    effects: new Set.from(
        [fortifyLightArmor, resistShock, restoreHealth, weaknessToFrost]),
    value: 20);
final bearClaws = new Ingredient(
    name: "Bear Claws",
    effects: new Set.from(
        [damageMagickaRegen, fortifyHealth, fortifyOneHanded, restoreStamina]),
    value: 2);
final bee = new Ingredient(
    name: "Bee",
    effects: new Set.from(
        [ravageStamina, regenerateStamina, restoreStamina, weaknessToShock]),
    value: 3);
final beehiveHusk = new Ingredient(
    name: "Beehive Husk",
    effects: new Set.from(
        [fortifyDestruction, fortifyLightArmor, fortifySneak, resistPoison]),
    value: 5);
final beritsAshes = new Ingredient(
    name: "Berit's Ashes",
    effects: new Set.from(
        [damageStamina, fortifyConjuration, ravageStamina, resistFire]),
    value: 5);
final bleedingCrown = new Ingredient(
    name: "Bleeding Crown",
    effects: new Set.from(
        [fortifyBlock, resistMagic, weaknessToFire, weaknessToPoison]),
    value: 10);
final blisterwort = new Ingredient(
    name: "Blisterwort",
    effects:
        new Set.from([damageStamina, fortifySmithing, frenzy, restoreHealth]),
    value: 12);
final blueButterflyWing = new Ingredient(
    name: "Blue Butterfly Wing",
    effects: new Set.from([
      damageMagickaRegen,
      damageStamina,
      fortifyConjuration,
      fortifyEnchanting
    ]),
    value: 2);
final blueDartwing = new Ingredient(
    name: "Blue Dartwing",
    effects:
        new Set.from([fear, fortifyPickpocket, resistShock, restoreHealth]),
    value: 1);
final blueMountainFlower = new Ingredient(
    name: "Blue Mountain Flower",
    effects: new Set.from(
        [damageMagickaRegen, fortifyConjuration, fortifyHealth, restoreHealth]),
    value: 2);
final boarTusk = new Ingredient(
    name: "Boar Tusk",
    effects:
        new Set.from([fortifyBlock, fortifyHealth, fortifyStamina, frenzy]),
    value: 20);
final boneMeal = new Ingredient(
    name: "Bone Meal",
    effects: new Set.from(
        [damageStamina, fortifyConjuration, ravageStamina, resistFire]),
    value: 5);
final briarHeart = new Ingredient(
    name: "Briar Heart",
    effects:
        new Set.from([fortifyBlock, fortifyMagicka, paralysis, restoreMagicka]),
    value: 20);
final burntSprigganWood = new Ingredient(
    name: "Burnt Spriggan Wood",
    effects: new Set.from(
        [damageMagickaRegen, fortifyAlteration, slow, weaknessToFire]),
    value: 20);
final butterflyWing = new Ingredient(
    name: "Butterfly Wing",
    effects: new Set.from(
        [damageMagicka, fortifyBarter, lingeringDamageStamina, restoreHealth]),
    value: 3);
final canisRoot = new Ingredient(
    name: "Canis Root",
    effects: new Set.from(
        [damageStamina, fortifyMarksman, fortifyOneHanded, paralysis]),
    value: 5);
final charredSkeeverHide = new Ingredient(
    name: "Charred Skeever Hide",
    effects: new Set.from(
        [cureDisease, resistPoison, restoreHealth, restoreStamina]),
    value: 1,
    multipliers: {cureDisease: 0.36});
final chaurusEggs = new Ingredient(
    name: "Chaurus Eggs",
    effects: new Set.from(
        [damageMagicka, fortifyStamina, invisibility, weaknessToPoison]),
    value: 10);
final chaurusHunterAntennae = new Ingredient(
    name: "Chaurus Hunter Antennae",
    effects: new Set.from([
      damageMagickaRegen,
      damageStamina,
      fortifyConjuration,
      fortifyEnchanting
    ]),
    value: 2);
final chickensEgg = new Ingredient(
    name: "Chicken's Egg",
    effects: new Set.from([
      damageMagickaRegen,
      lingeringDamageStamina,
      resistMagic,
      waterbreathing
    ]),
    value: 2);
final creepCluster = new Ingredient(
    name: "Creep Cluster",
    effects: new Set.from([
      damageStaminaRegen,
      fortifyCarryWeight,
      restoreMagicka,
      weaknessToMagic
    ]),
    value: 1);
final crimsonNirnroot = new Ingredient(
    name: "Crimson Nirnroot",
    effects:
        new Set.from([damageHealth, damageStamina, invisibility, resistMagic]),
    value: 10);
final cyrodilicSpadetail = new Ingredient(
    name: "Cyrodilic Spadetail",
    effects:
        new Set.from([damageStamina, fear, fortifyRestoration, ravageHealth]),
    value: 15);
final daedraHeart = new Ingredient(
    name: "Daedra Heart",
    effects:
        new Set.from([damageMagicka, damageStaminaRegen, fear, restoreHealth]),
    value: 250);
final deathbell = new Ingredient(
    name: "Deathbell",
    effects:
        new Set.from([damageHealth, ravageStamina, slow, weaknessToPoison]),
    value: 4,
    multipliers: {ravageStamina: 2.1});
final dragonsTongue = new Ingredient(
    name: "Dragon's Tongue",
    effects: new Set.from(
        [fortifyBarter, fortifyIllusion, fortifyTwoHanded, resistFire]),
    value: 5);
final dwarvenOil = new Ingredient(
    name: "Dwarven Oil",
    effects: new Set.from(
        [fortifyIllusion, regenerateMagicka, restoreMagicka, weaknessToMagic]),
    value: 15);
final ectoplasm = new Ingredient(
    name: "Ectoplasm",
    effects: new Set.from(
        [damageHealth, fortifyDestruction, fortifyMagicka, restoreMagicka]),
    value: 25);
final elvesEar = new Ingredient(
    name: "Elves Ear",
    effects: new Set.from(
        [fortifyMarksman, resistFire, restoreMagicka, weaknessToFrost]),
    value: 10);
final emperorParasolMoss = new Ingredient(
    name: "Emperor Parasol Moss",
    effects: new Set.from(
        [damageHealth, fortifyMagicka, fortifyTwoHanded, regenerateHealth]),
    value: 1);
final eyeOfSabreCat = new Ingredient(
    name: "Eye of Sabre Cat",
    effects: new Set.from(
        [damageMagicka, ravageHealth, restoreHealth, restoreStamina]),
    value: 2);
final falmerEar = new Ingredient(
    name: "Falmer Ear",
    effects:
        new Set.from([damageHealth, fortifyLockpicking, frenzy, resistPoison]),
    value: 10);
final felsaadTernFeathers = new Ingredient(
    name: "Felsaad Tern Feathers",
    effects: new Set.from(
        [cureDisease, fortifyLightArmor, resistMagic, restoreHealth]),
    value: 15);
final fireSalts = new Ingredient(
    name: "Fire Salts",
    effects: new Set.from(
        [regenerateMagicka, resistFire, restoreMagicka, weaknessToFrost]),
    value: 50);
final flyAmanita = new Ingredient(
    name: "Fly Amanita",
    effects:
        new Set.from([fortifyTwoHanded, frenzy, regenerateStamina, resistFire]),
    value: 2);
final frostMirriam = new Ingredient(
    name: "Frost Mirriam",
    effects: new Set.from(
        [damageStaminaRegen, fortifySneak, ravageMagicka, resistFrost]),
    value: 1);
final frostSalts = new Ingredient(
    name: "Frost Salts",
    effects: new Set.from(
        [fortifyConjuration, resistFrost, restoreMagicka, weaknessToFire]),
    value: 100);
final garlic = new Ingredient(
    name: "Garlic",
    effects: new Set.from(
        [fortifyStamina, regenerateHealth, regenerateMagicka, resistPoison]),
    value: 1);
final giantLichen = new Ingredient(
    name: "Giant Lichen",
    effects: new Set.from(
        [ravageHealth, restoreMagicka, weaknessToPoison, weaknessToShock]),
    value: 5);
final giantsToe = new Ingredient(
  name: "Giant's Toe",
  effects: new Set.from([
    damageStamina,
    damageStaminaRegen,
    fortifyCarryWeight,
    fortifyHealth,
  ]),
  value: 20,
  multipliers: {fortifyHealth: 5.9},
);
final gleamblossom = new Ingredient(
    name: "Gleamblossom",
    effects: new Set.from([fear, paralysis, regenerateHealth, resistMagic]),
    value: 5);
final glowDust = new Ingredient(
    name: "Glow Dust",
    effects: new Set.from(
        [damageMagicka, damageMagickaRegen, fortifyDestruction, resistShock]),
    value: 20);
final glowingMushroom = new Ingredient(
    name: "Glowing Mushroom",
    effects: new Set.from(
        [fortifyDestruction, fortifyHealth, fortifySmithing, resistShock]),
    value: 5);
final grassPod = new Ingredient(
    name: "Grass Pod",
    effects: new Set.from(
        [fortifyAlteration, ravageMagicka, resistPoison, restoreMagicka]),
    value: 1);
final hagravenClaw = new Ingredient(
    name: "Hagraven Claw",
    effects: new Set.from([
      fortifyBarter,
      fortifyEnchanting,
      lingeringDamageMagicka,
      resistMagic
    ]),
    value: 20);
final hagravenFeathers = new Ingredient(
    name: "Hagraven Feathers",
    effects: new Set.from(
        [damageMagicka, fortifyConjuration, frenzy, weaknessToShock]),
    value: 20);
final hangingMoss = new Ingredient(
    name: "Hanging Moss",
    effects: new Set.from(
        [damageMagicka, damageMagickaRegen, fortifyHealth, fortifyOneHanded]),
    value: 1);
final hawkBeak = new Ingredient(
    name: "Hawk Beak",
    effects: new Set.from(
        [fortifyCarryWeight, resistFrost, resistShock, restoreStamina]),
    value: 15);
final hawkFeathers = new Ingredient(
    name: "Hawk Feathers",
    effects: new Set.from(
        [cureDisease, fortifyLightArmor, fortifyOneHanded, fortifySneak]),
    value: 15,
    multipliers: {cureDisease: 0.36});
final hawksEgg = new Ingredient(
    name: "Hawk's Egg",
    effects: new Set.from([
      damageMagickaRegen,
      lingeringDamageStamina,
      resistMagic,
      waterbreathing
    ]),
    value: 5);
final histcarp = new Ingredient(
    name: "Histcarp",
    effects: new Set.from(
        [damageStaminaRegen, fortifyMagicka, restoreStamina, waterbreathing]),
    value: 6);
final honeycomb = new Ingredient(
    name: "Honeycomb",
    effects: new Set.from(
        [fortifyBlock, fortifyLightArmor, ravageStamina, restoreStamina]),
    value: 5);
final humanFlesh = new Ingredient(
    name: "Human Flesh",
    effects:
        new Set.from([damageHealth, fortifySneak, paralysis, restoreMagicka]),
    value: 1);
final humanHeart = new Ingredient(
    name: "Human Heart",
    effects:
        new Set.from([damageHealth, damageMagicka, damageMagickaRegen, frenzy]),
    value: 0);
final iceWraithTeeth = new Ingredient(
    name: "Ice Wraith Teeth",
    effects: new Set.from(
        [fortifyHeavyArmor, invisibility, weaknessToFire, weaknessToFrost]),
    value: 30);
final impStool = new Ingredient(
    name: "Imp Stool",
    effects: new Set.from(
        [damageHealth, lingeringDamageHealth, paralysis, restoreHealth]),
    value: 0);
final jarrinRoot = new Ingredient(
    name: "Jarrin Root",
    effects: new Set.from(
        [damageHealth, damageMagicka, damageMagickaRegen, damageStamina]),
    value: 10);
final jazbayGrapes = new Ingredient(
    name: "Jazbay Grapes",
    effects: new Set.from(
        [fortifyMagicka, ravageHealth, regenerateMagicka, weaknessToMagic]),
    value: 1);
final juniperBerries = new Ingredient(
    name: "Juniper Berries",
    effects: new Set.from([
      damageStaminaRegen,
      fortifyMarksman,
      regenerateHealth,
      weaknessToFire
    ]),
    value: 1);
final largeAntlers = new Ingredient(
    name: "Large Antlers",
    effects: new Set.from(
        [damageStaminaRegen, fortifyStamina, restoreStamina, slow]),
    value: 2);
final lavender = new Ingredient(
    name: "Lavender",
    effects: new Set.from(
        [fortifyConjuration, fortifyStamina, ravageMagicka, resistMagic]),
    value: 1);
final lunaMothWing = new Ingredient(
    name: "Luna Moth Wing",
    effects: new Set.from(
        [damageMagicka, fortifyLightArmor, invisibility, regenerateHealth]),
    value: 5);
final moonSugar = new Ingredient(
    name: "Moon Sugar",
    effects: new Set.from(
        [regenerateMagicka, resistFrost, restoreMagicka, weaknessToFire]),
    value: 50);
final moraTapinella = new Ingredient(
    name: "Mora Tapinella",
    effects: new Set.from([
      fortifyIllusion,
      lingeringDamageHealth,
      regenerateStamina,
      restoreMagicka
    ]),
    value: 4);
final mudcrabChitin = new Ingredient(
    name: "Mudcrab Chitin",
    effects:
        new Set.from([cureDisease, resistFire, resistPoison, restoreStamina]),
    value: 2);
final namirasRot = new Ingredient(
    name: "Namira's Rot",
    effects: new Set.from(
        [damageMagicka, fear, fortifyLockpicking, regenerateHealth]),
    value: 0);
final netchJelly = new Ingredient(
    name: "Netch Jelly",
    effects:
        new Set.from([fear, fortifyCarryWeight, paralysis, restoreStamina]),
    value: 20);
final nightshade = new Ingredient(
    name: "Nightshade",
    effects: new Set.from([
      damageHealth,
      damageMagickaRegen,
      fortifyDestruction,
      lingeringDamageStamina
    ]),
    value: 8);
final nirnroot = new Ingredient(
    name: "Nirnroot",
    effects:
        new Set.from([damageHealth, damageStamina, invisibility, resistMagic]),
    value: 10,
    multipliers: {damageHealth: 12.6});
final nordicBarnacle = new Ingredient(
    name: "Nordic Barnacle",
    effects: new Set.from(
        [damageMagicka, fortifyPickpocket, regenerateHealth, waterbreathing]),
    value: 5);
final orangeDartwing = new Ingredient(
    name: "Orange Dartwing",
    effects: new Set.from([
      fortifyPickpocket,
      lingeringDamageHealth,
      ravageMagicka,
      restoreStamina
    ]),
    value: 1);
final pearl = new Ingredient(
    name: "Pearl",
    effects: new Set.from(
        [fortifyBlock, resistShock, restoreMagicka, restoreStamina]),
    value: 2);
final pineThrushEgg = new Ingredient(
    name: "Pine Thrush Egg",
    effects: new Set.from(
        [fortifyLockpicking, resistShock, restoreStamina, weaknessToPoison]),
    value: 2);
final poisonBloom = new Ingredient(
    name: "Poison Bloom",
    effects: new Set.from([damageHealth, fear, fortifyCarryWeight, slow]),
    value: 5);
final powderedMammothTusk = new Ingredient(
    name: "Powdered Mammoth Tusk",
    effects: new Set.from([fear, fortifySneak, restoreStamina, weaknessToFire]),
    value: 2);
final purpleMountainFlower = new Ingredient(
    name: "Purple Mountain Flower",
    effects: new Set.from(
        [fortifySneak, lingeringDamageMagicka, resistFrost, restoreStamina]),
    value: 2);
final redMountainFlower = new Ingredient(
    name: "Red Mountain Flower",
    effects: new Set.from(
        [damageHealth, fortifyMagicka, ravageMagicka, restoreMagicka]),
    value: 2);
final riverBetty = new Ingredient(
    name: "River Betty",
    effects: new Set.from(
        [damageHealth, fortifyAlteration, fortifyCarryWeight, slow]),
    value: 15);
final rockWarblerEgg = new Ingredient(
    name: "Rock Warbler Egg",
    effects: new Set.from(
        [damageStamina, fortifyOneHanded, restoreHealth, weaknessToMagic]),
    value: 2);
final sabreCatTooth = new Ingredient(
    name: "Sabre Cat Tooth",
    effects: new Set.from(
        [fortifyHeavyArmor, fortifySmithing, restoreStamina, weaknessToPoison]),
    value: 2);
final salmonRoe = new Ingredient(
    name: "Salmon Roe",
    effects: new Set.from(
        [fortifyMagicka, regenerateMagicka, restoreStamina, waterbreathing]),
    multipliers: {waterbreathing: 15.4, fortifyMagicka: 1.05},
    value: 5);
final saltPile = new Ingredient(
    name: "Salt Pile",
    effects: new Set.from(
        [fortifyRestoration, regenerateMagicka, slow, weaknessToMagic]),
    value: 2);
final scalyPholiota = new Ingredient(
    name: "Scaly Pholiota",
    effects: new Set.from([
      fortifyCarryWeight,
      fortifyIllusion,
      regenerateStamina,
      weaknessToMagic
    ]),
    value: 4);
final scathecraw = new Ingredient(
    name: "Scathecraw",
    effects: new Set.from(
        [lingeringDamageHealth, ravageHealth, ravageMagicka, ravageStamina]),
    value: 1);
final silversidePerch = new Ingredient(
    name: "Silverside Perch",
    effects: new Set.from(
        [damageStaminaRegen, ravageHealth, resistFrost, restoreStamina]),
    value: 15);
final skeeverTail = new Ingredient(
    name: "Skeever Tail",
    effects: new Set.from(
        [damageHealth, damageStaminaRegen, fortifyLightArmor, ravageHealth]),
    value: 3);
final slaughterfishEgg = new Ingredient(
    name: "Slaughterfish Egg",
    effects: new Set.from([
      fortifyPickpocket,
      fortifyStamina,
      lingeringDamageHealth,
      resistPoison
    ]),
    value: 3);
final slaughterfishScales = new Ingredient(
    name: "Slaughterfish Scales",
    effects: new Set.from(
        [fortifyBlock, fortifyHeavyArmor, lingeringDamageHealth, resistFrost]),
    value: 3);
final smallAntlers = new Ingredient(
    name: "Small Antlers",
    effects: new Set.from([
      damageHealth,
      fortifyRestoration,
      lingeringDamageStamina,
      weaknessToPoison
    ]),
    value: 2);
final smallPearl = new Ingredient(
    name: "Small Pearl",
    effects: new Set.from(
        [fortifyOneHanded, fortifyRestoration, resistFrost, restoreStamina]),
    value: 2);
final snowberries = new Ingredient(
    name: "Snowberries",
    effects:
        new Set.from([fortifyEnchanting, resistFire, resistFrost, resistShock]),
    value: 4);
final spawnAsh = new Ingredient(
    name: "Spawn Ash",
    effects: new Set.from(
        [fortifyEnchanting, ravageMagicka, ravageStamina, resistFire]),
    value: 20);
final spiderEgg = new Ingredient(
    name: "Spider Egg",
    effects: new Set.from([
      damageMagickaRegen,
      damageStamina,
      fortifyLockpicking,
      fortifyMarksman
    ]),
    value: 5);
final sprigganSap = new Ingredient(
    name: "Spriggan Sap",
    effects: new Set.from([
      damageMagickaRegen,
      fortifyAlteration,
      fortifyEnchanting,
      fortifySmithing
    ]),
    value: 15);
final swampFungalPod = new Ingredient(
    name: "Swamp Fungal Pod",
    effects: new Set.from(
        [lingeringDamageMagicka, paralysis, resistShock, restoreHealth]),
    value: 5);
final taproot = new Ingredient(
    name: "Taproot",
    effects: new Set.from(
        [fortifyIllusion, regenerateMagicka, restoreMagicka, weaknessToMagic]),
    value: 15);
final thistleBranch = new Ingredient(
    name: "Thistle Branch",
    effects: new Set.from(
        [fortifyHeavyArmor, ravageStamina, resistFrost, resistPoison]),
    value: 1);
final torchbugThorax = new Ingredient(
    name: "Torchbug Thorax",
    effects: new Set.from([
      fortifyStamina,
      lingeringDamageMagicka,
      restoreStamina,
      weaknessToMagic
    ]),
    value: 1);
final tramaRoot = new Ingredient(
    name: "Trama Root",
    effects: new Set.from(
        [damageMagicka, fortifyCarryWeight, slow, weaknessToShock]),
    value: 1);
final trollFat = new Ingredient(
    name: "Troll Fat",
    effects:
        new Set.from([damageHealth, fortifyTwoHanded, frenzy, resistPoison]),
    value: 1);
final tundraCotton = new Ingredient(
    name: "Tundra Cotton",
    effects: new Set.from(
        [fortifyBarter, fortifyBlock, fortifyMagicka, resistMagic]),
    value: 1);
final vampireDust = new Ingredient(
    name: "Vampire Dust",
    effects: new Set.from(
        [cureDisease, invisibility, regenerateHealth, restoreMagicka]),
    value: 25);
final voidSalts = new Ingredient(
    name: "Void Salts",
    effects: new Set.from(
        [damageHealth, fortifyMagicka, resistMagic, weaknessToShock]),
    value: 125);
final wheat = new Ingredient(
    name: "Wheat",
    effects: new Set.from([
      damageStaminaRegen,
      fortifyHealth,
      lingeringDamageMagicka,
      restoreHealth
    ]),
    value: 5);
final whiteCap = new Ingredient(
    name: "White Cap",
    effects: new Set.from(
        [fortifyHeavyArmor, ravageMagicka, restoreMagicka, weaknessToFrost]),
    value: 0);
final wispWrappings = new Ingredient(
    name: "Wisp Wrappings",
    effects: new Set.from(
        [fortifyCarryWeight, fortifyDestruction, resistMagic, restoreStamina]),
    value: 2);
final yellowMountainFlower = new Ingredient(
    name: "Yellow Mountain Flower",
    effects: new Set.from(
        [damageStaminaRegen, fortifyHealth, fortifyRestoration, resistPoison]),
    value: 2);

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

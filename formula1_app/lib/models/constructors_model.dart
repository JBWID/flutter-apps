class Constructor {
  String name;
  String rank;
  String points;
  String logoUrl;
  String carUrl;
  String constructorChampionships;
  String wins;
  String polePositions;
  String fastestLaps;
  String driver1;
  String driver1Url;
  String driver2;
  String driver2Url;
  String teamChief;
  String chasis;
  String powerUnit;

  Constructor ({
    required this.name,
    required this.rank,
    required this.points,
    required this.logoUrl,
    required this.carUrl,
    required this.constructorChampionships,
    required this.wins,
    required this.polePositions,
    required this.fastestLaps,
    required this.driver1,
    required this.driver1Url,
    required this.driver2,
    required this.driver2Url,
    required this.teamChief,
    required this.chasis,
    required this.powerUnit,

  });
}

List<Constructor> constructors = [
  Constructor(
    name: 'Red Bull Racing',
    rank: '1',
    points: '286',
    logoUrl: 'assets/images/RedBull_img.png',
    carUrl: 'assets/images/RedBull_car.png',
    constructorChampionships: '4',
    wins: '70',
    polePositions: '67',
    fastestLaps: '72',
    driver1: 'Max Verstappen',
    driver2: 'Sergio Perez',
    driver1Url: 'assets/images/MaxVerstappen_img.png',
    driver2Url: 'assets/images/SergioPerez_img.png',
    teamChief: 'Christian Horner',
    chasis: 'RB16B',
    powerUnit: 'Honda'
  ),
  Constructor(
    name: 'Mercedes',
    rank: '2',
    points: '242',
    logoUrl: 'assets/images/Mercedes_img.png',
    carUrl: 'assets/images/Mercedes_car.png',
    constructorChampionships: '7',
    wins: '109',
    polePositions: '121',
    fastestLaps: '80',
    driver1: 'Lewis Hamilton',
    driver2: 'Valtteri Bottas',
    driver1Url: 'assets/images/LewisHamilton_img.png',
    driver2Url: 'assets/images/ValtteriBottas_img.png',
    teamChief: 'Toto Wolf',
    chasis: 'W12',
    powerUnit: 'Mercedes'
  ),
  Constructor(
    name: 'McLaren',
    rank: '3',
    points: '141',
    logoUrl: 'assets/images/Mclaren_img.png',
    carUrl: 'assets/images/McLaren_car.png',
    constructorChampionships: '8',
    wins: '182',
    polePositions: '155',
    fastestLaps: '158',
    driver1: 'Lando Norris',
    driver2: 'Daniel Ricciardo',
    driver1Url: 'assets/images/LandoNorris_img',
    driver2Url: 'assets/images/DanielRicciardo_img.png',
    teamChief: 'Andreas Seidl',
    chasis: 'MCL35M',
    powerUnit: 'Mercedes'
  ),
  Constructor(
    name: 'Ferrari',
    rank: '4',
    points: '122',
    logoUrl: 'assets/images/Ferrari_img.png',
    carUrl: 'assets/images/Ferrari_car.png',
    constructorChampionships: '16',
    wins: '239',
    polePositions: '223',
    fastestLaps: '253',
    driver1: 'Charles Leclerc',
    driver2: 'Carlos Sainz',
    driver1Url: 'assets/images/CharlesLeclerc_img.png',
    driver2Url: 'assets/images/CarlosSainz_img',
    teamChief: 'Mattia Binotto',
    chasis: 'SF21',
    powerUnit: 'Ferrari'
  ),
  Constructor(
    name: 'AlphaTauri',
    rank: '5',
    points: '48',
    logoUrl: 'assets/images/AlphaTauri_img.png',
    carUrl: 'assets/images/AlphaTauri_car.png',
    constructorChampionships: '0',
    wins: '12',
    polePositions: '1',
    fastestLaps: '1',
    driver1: 'Pierre Gasly',
    driver2: 'Yuki Tsunoda',
    driver1Url: 'assets/images/PierreGasly_img.png',
    driver2Url: 'assets/images/YukiTsunoda_img.png',
    teamChief: 'Franz Tost',
    chasis: 'AT02',
    powerUnit: 'Honda'
  ),
  Constructor(
    name: 'Aston Martin',
    rank: '6',
    points: '44',
    logoUrl: 'assets/images/AstonMartingRacing_img.png',
    carUrl: 'assets/images/AstonMartin_car.png',
    constructorChampionships: '0',
    wins: '1',
    polePositions: '1',
    fastestLaps: '0',
    driver1: 'Sebastian Vettel',
    driver2: 'Lance Stroll',
    driver1Url: 'assets/images/SebastianVettel_img.png',
    driver2Url: 'assets/images/LanceStroll_img',
    teamChief: 'Otmar Szafnauer',
    chasis: 'AMR21',
    powerUnit: 'Mercedes'
  ),
  Constructor(
    name: 'Alpine',
    rank: '7',
    points: '32',
    logoUrl: 'assets/images/Alpine_img.png',
    carUrl: 'assets/images/Alpine_car.png',
    constructorChampionships: '2',
    wins: '20',
    polePositions: '20',
    fastestLaps: '15',
    driver1: 'Fernando Alonso',
    driver2: 'Esteban Ocon',
    driver1Url: 'assets/images/FernandoAlonso_img.png',
    driver2Url: 'assets/images/EstebanOcon_img.png',
    teamChief: 'Davide Brivio',
    chasis: 'A521',
    powerUnit: 'Renault'
  ),
  Constructor(
    name: 'Alfa Romeo Racing',
    rank: '8',
    points: '2',
    logoUrl: 'assets/images/AlfaRomeo_img.png',
    carUrl: 'assets/images/AlfaRomeoRacing_car.png',
    constructorChampionships: '0',
    wins: '1',
    polePositions: '1',
    fastestLaps: '5',
    driver1: 'Kimi Räikkönen',
    driver2: 'Antonio Giovinazzi',
    driver1Url: 'assets/images/KimiRaikonen_img.png',
    driver2Url: 'assets/images/AntonioGiovinazzi_img.png',
    teamChief: 'Frédéric Vasseur',
    chasis: 'C41',
    powerUnit: 'Ferrari'
  ),
  Constructor(
    name: 'Williams',
    rank: '9',
    points: '0',
    logoUrl: 'assets/images/Williams_img.png',
    carUrl: 'assets/images/Williams_car.png',
    constructorChampionships: '9',
    wins: '114',
    polePositions: '129',
    fastestLaps: '122',
    driver1: 'George Russel',
    driver2: 'Nicholas Latifi',
    driver1Url: 'assets/images/GeorgeRussel_img.png',
    driver2Url: 'assets/images/NicholasLatiffi_img.png',
    teamChief: 'Jost Capito',
    chasis: 'FW43B',
    powerUnit: 'Mercedes'
  ),
  Constructor(
    name: 'Haas F1 Team',
    rank: '10',
    points: '0',
    logoUrl: 'assets/images/Haas_img.png',
    carUrl: 'assets/images/Haas_car.png',
    constructorChampionships: '0',
    wins: '0',
    polePositions: '0',
    fastestLaps: '2',
    driver1: 'Mick Schumacher',
    driver2: 'Nikita Mazepin',
    driver1Url: 'assets/images/MickSchumacher_img.png',
    driver2Url: 'assets/images/NikitaMazepin_img.png',
    teamChief: 'Guenther Steiner',
    chasis: 'VF-21',
    powerUnit: 'Ferrari'
  ),
];
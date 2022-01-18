function pheromoneLevel = UpdatePheromoneLevels(pheromoneLevel, deltaPheromoneLevel, rho)

MINIMUM_PHEROMONE_LEVEL = 1e-15;
pheromoneLevel = (1-rho) * pheromoneLevel + deltaPheromoneLevel;
pheromoneLevel(MINIMUM_PHEROMONE_LEVEL>pheromoneLevel) = MINIMUM_PHEROMONE_LEVEL;

end
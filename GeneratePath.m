function path = GeneratePath(pheromoneLevel, visibility, alpha, beta)

numberOfCities = length(visibility);
path = zeros(1, numberOfCities);
startCity = randi(numberOfCities);
path(1) = startCity;
pathLength = 1;
while pathLength~=numberOfCities
    visitedCities = path(1:pathLength);
    selectionProbabilities = GetSelectionProbabilities(visitedCities, pheromoneLevel, visibility, alpha, beta);
    nextCity = GetNextCity(selectionProbabilities);
    pathLength = pathLength + 1;
    path(pathLength) = nextCity; 
end

end
function deltaPheromoneLevel = ComputeDeltaPheromoneLevels(pathCollection, pathLengthCollection)

numberOfCities = size(pathCollection, 2);
numberOfPaths = size(pathCollection, 1);

deltaPheromoneLevel = zeros(numberOfCities, numberOfCities);
for pathIndex=1:numberOfPaths
    path = pathCollection(pathIndex, :);
    pathLength = pathLengthCollection(pathIndex);
    lastCityIndex = path(end);
    for cityIndex=path
        deltaPheromoneLevel(lastCityIndex, cityIndex) = deltaPheromoneLevel(lastCityIndex, cityIndex) + 1/pathLength;
        lastCityIndex = cityIndex;
    end
end

end
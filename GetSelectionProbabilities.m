function selectionProbabilities = GetSelectionProbabilities(visitedCities, pheromoneLevel, visibility, alpha, beta)

currentCity = visitedCities(end);
numberOfCities = size(pheromoneLevel, 1);
selectionProbabilities = zeros(numberOfCities, 1);
normalizationFactor = 0;
for nextCity=1:numberOfCities
    if (ExistsInList(nextCity, visitedCities))
        continue
    else
        temp = pheromoneLevel(currentCity, nextCity)^alpha * visibility(currentCity, nextCity)^beta;
        normalizationFactor = normalizationFactor + temp;
        selectionProbabilities(nextCity) = temp;
    end
end

selectionProbabilities = selectionProbabilities / normalizationFactor;

end


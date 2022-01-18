function visibility = GetVisibility(cityLocation)

numberOfCities = length(cityLocation);  
visibility = zeros(numberOfCities, numberOfCities);

for city1Index=1:numberOfCities
    for city2Index=city1Index:numberOfCities
        city1Location = cityLocation(city1Index,:);
        city2Location = cityLocation(city2Index,:);
        distance = Distance(city1Location, city2Location);
        visibility(city1Index, city2Index) = 1/distance;
        visibility(city2Index, city1Index) = 1/distance;
    end
end

end
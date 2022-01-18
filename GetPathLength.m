function pathLength = GetPathLength(path,cityLocation)
    
pathLength = 0;
lastCityIndex = path(end);
for cityIndex=path
    newCityLocation = cityLocation(cityIndex,:);
    lastCityLocation = cityLocation(lastCityIndex,:);
    distance = Distance(newCityLocation, lastCityLocation);
    pathLength = pathLength + distance;
    lastCityIndex = cityIndex;
end

end
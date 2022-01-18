function connection = InitializeConnections(cityLocation)

numberOfCities = length(cityLocation);
connection = zeros(1, numberOfCities);
for i = 1:length(cityLocation)
   connection(i) = line([0 0], [0 0]);
end

end
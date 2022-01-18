function city = GetNextCity(selectionProbabilities)

randomNumber = rand;
selectionProbabilitiesCumulativeSum = cumsum(selectionProbabilities);
city = find(randomNumber<=selectionProbabilitiesCumulativeSum, 1, 'first');

end


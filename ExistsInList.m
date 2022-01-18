function existsInList = ExistsInList(element,list)

existsInList = false;
for i=list
    if (i==element)
        existsInList = true;
        break;
    end
end

end


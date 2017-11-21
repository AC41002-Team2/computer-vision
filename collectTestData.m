function data = collectTestData(image, xType, yType)

	data = cell(2000,2);
    
    switch xType
        case 'Color'
            [R, G, B] = getColourChanels(image);
            data{1,1} = mean([R, G, B]);
        case 'Edge Intensity'
            % gets the edge intensity value
            data{1, 1} = getEdgeIntensity(image);
        case 'Straight Lines'
            % gets the edge intensity value
            data{1, 1} = getStraightLineCount(image);
    end
    
    switch yType
        case 'Color'
            [R, G, B] = getColourChanels(image);
            data{1,2} = mean([R, G, B]);
        case 'Edge Intensity'
            % gets the edge intensity value
            data{1, 2} = getEdgeIntensity(image);
        case 'Straight Lines'
            % gets the edge intensity value
            data{1, 2} = getStraightLineCount(image);
    end

end
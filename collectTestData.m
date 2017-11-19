function data = collectTestData(image)

	data = cell(2000,2);

    % gets the LAB colour value
    [R, G, B] = getColourChanels(image);

    % add it to the data's 1st column
    data{1,1} = mean([R, G, B]);
    data{1,2} = getEdgeIntensity(image);

end
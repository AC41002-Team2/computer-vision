function data = collectKnnData(imageSet)

    disp('collecting data on images');
    
    imageSetSize = numel(imageSet);

    data = cell(10000,2);

    for i = 1 : imageSetSize

        disp(i);
        
        % get the image to be evaluated
        image = imageSet{i};

        % gets the LAB colour value
        [R, G, B] = getColourChanels(image);
        data{i,1} = mean([R, G, B]);
        
        % gets the edge intensity value
        data{i,2} = getEdgeIntensity(image);

    end

end
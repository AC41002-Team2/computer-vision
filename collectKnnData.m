function data = collectKnnData(imageSet, xType, yType)

    disp('collecting data on images');
    
    disp(xType);
    disp(yType);
    
    imageSetSize = numel(imageSet);

    data = cell(10000,2);
    
    

    for i = 1 : imageSetSize

        disp(i);
        
        % get the image to be evaluated
        image = imageSet{i};

        switch xType
            case 'Color'
                [R, G, B] = getColourChanels(image);
                data{i, 1} = mean([R, G, B]);
            case 'Edge Intensity'
                data{i, 1} = getEdgeIntensity(image);
            case 'Straight Lines'
                data{i, 1} = getStraightLineCount(image);
        end
        
        if strcmp(yType, xType)
            
            data{i, 2} = data{i, 1};
            
        else
            
            switch yType
                case 'Color'
                    [R, G, B] = getColourChanels(image);
                    data{i, 2} = mean([R, G, B]);
                case 'Edge Intensity'
                    data{i, 2} = getEdgeIntensity(image);
                case 'Straight Lines'
                    data{i, 2} = getStraightLineCount(image);
            end
            
        end
        
    end

end
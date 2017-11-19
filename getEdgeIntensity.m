function edgeIntensity = getEdgeIntensity(image)

    I = rgb2gray(image);

    BW = edge(I,'Canny');

    edgeIntensity = sum(BW(:) == 1);

end
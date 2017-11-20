function edgeIntensity = getEdgeIntensity(image)

    I = rgb2gray(image);

    BW = edge(I,'Canny', 0.1);

    edgeIntensity = sum(BW(:) == 1);

end
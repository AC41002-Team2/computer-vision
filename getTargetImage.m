% User diaglouge for gathering target image for composite creation
function targetImage = getTargetImage()

[filename, pathname] = uigetfile( ...
    {'*.jpg';'*.png';'*.bmp';'*.*'}, ...
    'Pick an file');

targetImage = imread(strcat(pathname, filename));

end


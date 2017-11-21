function val = getStraightLineCount(img)
    
    i = 0;

    rotI = rgb2gray(img);
    
    BW = edge(rotI,'log', 0.01);

    [H,T,R] = hough(BW);
    
    
    if i == 1
            imshow(H,[],'XData',T,'YData',R,'InitialMagnification','fit');xlabel('\theta'), ylabel('\rho');axis on, axis normal, hold on;
    end
            
    
    P = houghpeaks(H,20,'threshold',ceil(0.3*max(H(:))));
    
    x = T(P(:,2)); y = R(P(:,1));
    
    
    %
    if i == 1
           plot(x,y,'s','color','white');
    end
    %
    
    
    lines = houghlines(BW,T,R,P,'FillGap',10,'MinLength',30);
    
    
    %
    if i == 1
            figure, imshow(BW), hold on
    end
    %
    

    for k = 1:length(lines)

       xy = [lines(k).point1; lines(k).point2];
       
        %
        if i == 1
            plot(xy(:,1),xy(:,2),'LineWidth',1,'Color','green');plot(xy(1,1),xy(1,2),'x','LineWidth',2,'Color','yellow');plot(xy(2,1),xy(2,2),'x','LineWidth',2,'Color','red');
        end
        %

    end
    
    g = [];
        
    for i = 1: numel(lines)
        g = [g lines(i).theta];
    end

    val = numel(g);
    %val = lines;
    
end


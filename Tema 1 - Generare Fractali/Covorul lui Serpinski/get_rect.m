function [ SP,X,Y,Z ] = get_rect( SP,length ) % get the square of length starting from point SP(top left corner)

X.x = SP.x + length; X.y = SP.y;
Y.x = SP.x +length; Y.y = SP.y - length;
Z.x = SP.x; Z.y = SP.y - length;

end


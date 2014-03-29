function [ Y ] = averageDimensions( fullAr )

%trim dim1    
fullAr(1,:) = [];
fullAr(1,:) = [];
fullAr(33,:) = [];
fullAr(33,:) = [];


%trim dim2
fullAr(:,1) = [];
fullAr(:,25) = [];


%reshape
fullAr = reshape(fullAr,4,8,6,4);


%average
S = sum(sum(fullAr,1),3);


%reshape
Y = reshape(S, 8, 4);


%normalise
Y = Y-min(min(Y));
Y = Y./max(max(Y));


end
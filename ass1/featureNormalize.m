function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
 x1=X(:,1);
 x2=X(:,2);
 mux1=mean(x1);
 mux2=mean(x2);
 sigmax1=std(x1);
 sigmax2=std(x2);
 mu=[mux1,mux2];
 sigma=[sigmax1,sigmax2];
 x1=(x1-mux1)/sigmax1;
 x2=(x2-mux2)/sigmax2;
 X_norm=[x1,x2];
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       









% ============================================================

end

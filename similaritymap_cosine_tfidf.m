clear all
close all

load('Cosine_sim_index_tfidf_6.mat')

%calculate distance
Cosine_dis=1-cosine_sim_index_tfidf;

%make all diagonal elements 0
index = find(tril(ones(size(Cosine_dis)), -1));
C = Cosine_dis(index);
test=squareform(C);

% make a vector to feed into linkage fn
y = squareform(test);
Z = linkage(y,'complete');
%make a hc figure
dendrogram(Z,0)

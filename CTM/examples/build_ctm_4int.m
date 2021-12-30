% build ctm model

% add path
% addpath('../ctm_matlab');

% reset the model
reset_ctm();

% lanes of intersection 1
ctm_add_link(1,80*5,2,0.6,0.3,0);
ctm_add_link(0,60*5,2,0.6,0.03,0.1);
ctm_add_lane(0,60,0.4,0.02,0.1);
ctm_add_lane(1,70,0.4,0.2,0);

% lanes of intersection 2
ctm_add_link(0,60*5,2,0.6,0.03,0.1);
ctm_add_link(1,80*5,2,0.6,0.3,0);
ctm_add_lane(0,60,0.4,0.02,0.1);
ctm_add_lane(1,70,0.4,0.2,0);

% lanes of intersection 3
ctm_add_lane(1,80,0.6,0.3,0);
ctm_add_lane(0,60,0.6,0.03,0.1);
ctm_add_lane(1,70,0.4,0.2,0);
ctm_add_lane(0,60,0.4,0.02,0.1);

% lanes of intersection 4
ctm_add_lane(0,60,0.6,0.03,0.1);
ctm_add_lane(1,80,0.6,0.3,0);
ctm_add_lane(1,70,0.4,0.2,0);
ctm_add_lane(0,60,0.4,0.02,0.1);

% output lanes
ctm_add_lane(2,0,0,0,1);
ctm_add_lane(2,0,0,0,1);
ctm_add_lane(2,0,0,0,1);
ctm_add_lane(2,0,0,0,1);
ctm_add_lane(2,0,0,0,1);
ctm_add_lane(2,0,0,0,1);
ctm_add_lane(2,0,0,0,1);
ctm_add_lane(2,0,0,0,1);

% intersection 1
int = ctm_add_int([1 2 3 4],[5 17 18 12],[4 0.6*2;1 0.3*2;1 0.3*2;4 0.6*2;1 0.3*2;1 0.3*2]);
ctm_add_phase(int,...
             [2 0.9 1 1 0 1 0 2;...
              2 0.8/0.9 0 1 2 1 0 3;...
              2 0.9 1 2 0 4 0 5;...
              2 0.8/0.9 0 4 2 2 0 6;...
              1 0.7 0 2 0 6 2 4;...
              1 0.7 0 5 0 3 2 3]);
ctm_add_phase(int,...
             [2 0.8 1 3 0 1 0 2;...
              2 0.7/0.8 0 1 2 3 0 3;...
              2 0.8 1 4 0 4 0 5;...
              2 0.7/0.8 0 4 2 4 0 6;...
              1 0.7 0 2 0 6 2 2;...
              1 0.7 0 5 0 3 2 1]);

% intersection 2
int = ctm_add_int([5 6 7 8],[19 2 20 16],[4 0.6*2;1 0.3*2;1 0.3*2;4 0.6*2;1 0.3*2;1 0.3*2]);
ctm_add_phase(int,...
             [2 0.9 1 1 0 1 0 2;...
              2 0.8/0.9 0 1 2 1 0 3;...
              2 0.9 1 2 0 4 0 5;...
              2 0.8/0.9 0 4 2 2 0 6;...
              1 0.7 0 2 0 6 2 4;...
              1 0.7 0 5 0 3 2 3]);
ctm_add_phase(int,...
             [2 0.8 1 3 0 1 0 2;...
              2 0.7/0.8 0 1 2 3 0 3;...
              2 0.8 1 4 0 4 0 5;...
              2 0.7/0.8 0 4 2 4 0 6;...
              1 0.7 0 2 0 6 2 2;...
              1 0.7 0 5 0 3 2 1]);

% intersection 3
int = ctm_add_int([9 10 11 12],[13 21 3 22],[4 0.6*2;1 0.3*2;1 0.3*2;4 0.6*2;1 0.3*2;1 0.3*2]);
ctm_add_phase(int,...
             [2 0.9 1 1 0 1 0 2;...
              2 0.8/0.9 0 1 2 1 0 3;...
              2 0.9 1 2 0 4 0 5;...
              2 0.8/0.9 0 4 2 2 0 6;...
              1 0.7 0 2 0 6 2 4;...
              1 0.7 0 5 0 3 2 3]);
ctm_add_phase(int,...
             [2 0.8 1 3 0 1 0 2;...
              2 0.7/0.8 0 1 2 3 0 3;...
              2 0.8 1 4 0 4 0 5;...
              2 0.7/0.8 0 4 2 4 0 6;...
              1 0.7 0 2 0 6 2 2;...
              1 0.7 0 5 0 3 2 1]);

% intersection 4
int = ctm_add_int([13 14 15 16],[23 10 7 24],[4 0.6*2;1 0.3*2;1 0.3*2;4 0.6*2;1 0.3*2;1 0.3*2]);
ctm_add_phase(int,...
             [2 0.9 1 1 0 1 0 2;...
              2 0.8/0.9 0 1 2 1 0 3;...
              2 0.9 1 2 0 4 0 5;...
              2 0.8/0.9 0 4 2 2 0 6;...
              1 0.7 0 2 0 6 2 4;...
              1 0.7 0 5 0 3 2 3]);
ctm_add_phase(int,...
             [2 0.8 1 3 0 1 0 2;...
              2 0.7/0.8 0 1 2 3 0 3;...
              2 0.8 1 4 0 4 0 5;...
              2 0.7/0.8 0 4 2 4 0 6;...
              1 0.7 0 2 0 6 2 2;...
              1 0.7 0 5 0 3 2 1]);

% clean
clear int;


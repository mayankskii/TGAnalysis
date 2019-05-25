function S = Iterative(HR10,HR15,HR20,B,k)
%% I/O
% In : (HR10, HR15, HR20) each having TG, DTG and Temperture respectively
% and additionally B0 and Temperature Power k
% For example HR10 contains: {1} = a; {2}=da; {3}=T
% Out : S having B factor and Apparent Activation Energy
% Here Lyons Approxmation is used for iterative search
%
%% Data Setup and Kinetic Indexes
%Fit such that n*m = 0.6
a = 0.15;
b = 0.9;
n = 0.003;
m = 250; %m follows, m = ((b-a)/n) which is strictly an natural no.
ix = zeros(3,m);
iy = zeros(3,m);
% Replace cob10 with other sample for new graphs
for i=1:m
    ix(1,i) = find(HR10{1}>(a-n+n*i),1);
    ix(2,i) = find(HR15{1}>(a-n+n*i),1);
    ix(3,i) = find(HR20{1}>(a-n+n*i),1);
    iy(1,i) = HR10{3}(ix(1,i));
    iy(2,i) = HR15{3}(ix(2,i));
    iy(3,i) = HR20{3}(ix(3,i));
end

%% data LYON
LYON.temp = zeros(3,m);
for i=1:m
    LYON.temp(1,i) = log(10./iy(1,i).^k);
    LYON.temp(2,i) = log(15./iy(2,i).^k);
    LYON.temp(3,i) = log(20./iy(3,i).^k);
end
LYON.num = diff(LYON.temp,1,1)./diff(1./iy,1,1);
LYON.temp2 = zeros(2,m);
LYON.temp2(1,:) = (2/3)*(iy(2,:)+iy(1,:)+iy(3,:));
LYON.temp2(2,:) = (2/3)*(iy(3,:)+iy(2,:)+iy(1,:));

%% Fits
LYON.x1 = [LYON.temp2]'; LYON.y1 = [LYON.num]';
LYON.fit{1} = fit(LYON.x1(:,1), LYON.y1(:,1) ,'poly1');
LYON.fit{2} = fit(LYON.x1(:,2), LYON.y1(:,2),'poly1');

%% Extraction
LYON.Cval = zeros(2,2);
LYON.Cval(1,:) = coeffvalues(LYON.fit{1});
LYON.Cval(2,:) = coeffvalues(LYON.fit{2});

%% LYON Activation
LYON.B = B;
LYON.Ea = zeros(2,m);
LYON.Ea(1,:) = (-8.3144598).*(LYON.num(1,:))./LYON.B(1);
LYON.Ea(2,:) = (-8.3144598).*(LYON.num(1,:))./LYON.B(2);
LYON.XA = [a :n: a+n*(m-1)]';

S1 = 1+(2./(mean(LYON.Ea,2)./(8.3144598.*mean(LYON.temp2,2))));
S2 = [mean(LYON.Ea(1,:));  mean(LYON.Ea(2,:))];
S = [S1, S2];
end
%% Optional
% Following the below code gives an approximate correction factor for any
% exponent T. In above what we did was to use known Ea value from other
% method to find the correction factor.

% iterations = 0;
% B1=[0.995; 1.005];
% B2 = LyonsIteration(cob10,cob15,cob20,B1,1.8);
% while (abs(B2(1) - B1(1)) > 1e-5 && abs(B2(2) - B1(2)) > 1e-5 && iterations<100)
%     iterations = iterations + 1;
%     B1 = B2;
%     B2 = LyonsIteration(cob10,cob15,cob20,B1,1.8);
% end
% iterations 
% [B1 B2]
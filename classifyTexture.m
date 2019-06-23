function [c] = classifyTexture(img)

h = Gdir_hist(img);

Acc = 0;
Sym = 0;
half_idx = ceil(length(h)/2);
for k = 1:half_idx-1
    Acc = Acc + abs(h(k)-h(k+half_idx));
    Sym = Sym + abs(h(k)-h(end-k+1));
end

if Acc<0.05
    %disp(Acc)
    c = 'non directional texture';
elseif abs(h(half_idx-1)-h(half_idx+1))>0.01
    %disp(abs(h(half_idx-1)-h(half_idx+1)))
    c = 'diagonal texture';
elseif Sym<0.1
    %disp(Sym)
    c = 'curve texture';
else
    c = 'horizontal or vertical texture';
end

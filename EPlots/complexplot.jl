using Plots

function cplot(f; interval = [-5,5], dx = 0.1, cmap = "hsv")
    x = interval[1]:dx:interval[2];
    X, Y = repmat(x',length(y),1), repmat(y,1,length(x));
    Z = f.(X + Y*1im);
    a = angle.(Z);
    pcolormesh(X, Y, a; cmap= cmap);
end

%identify H-alpha & Compare
load starData

nObs = size(spectra,1);
lambdaStart = 630.02;
lambdaDelta = 0.14;

lambdaEnd = lambdaStart + (nObs - 1)*lambdaDelta;
lambda = (lambdaStart:lambdaDelta:lambdaEnd);
s = spectra;
plot(lambda, s,".-")
xlabel("Wavelength")
ylabel("Intensity")

[sHa, idx] = min(s);
lambdaHa = lambda(idx);

hold on 
plot(lambdaHa,sHa, "rs", MarkerSize=8)
legend(starnames)
z = (lambdaHa/656.28)-1;
speed = z*(299792.458);



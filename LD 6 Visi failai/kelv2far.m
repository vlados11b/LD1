function F = kelv2far(K)
% KELV2FAR Paverčia temperatūrą iš Kelvino į Farenheito skalę.
%   Įvesties kintamasis:
%       K - temperatūra Kelvino laipsniais (skaičius, vektorius ar matrica)
%   Išvesties kintamasis:
%       F - temperatūra Farenheito laipsniais
%
%   Pavyzdys:
%       F = kelv2far(300)    Išves 80.33

F = K * 9/5 - 459.67;
end
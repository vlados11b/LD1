function varargout = grafsincos(x)
% GRAFSINCOS Skaičiuoja sin ir cos duotam vektoriui-eilutei.
%   grafsincos(x)        - nieko negrąžina, nubraižo sin(x) ir cos(x) grafikus
%   y = grafsincos(x)    - grąžina tik sin(x)
%   [y1, y2] = grafsincos(x) - grąžina sin(x) ir cos(x)
%
%   Įvesties kintamasis:
%       x - vektorius-eilutė
%   Išvesties kintamieji (nebūtini):
%       varargout{1} - sin(x)
%       varargout{2} - cos(x)

if nargin < 1
    error('Reikia nurodyti vektorių x.')
end

y1 = sin(x);
y2 = cos(x);

if nargout == 0
    % kintamųjų negrąžiname, todėl braižome grafikus
    plot(x, y1, '-b', x, y2, '-r')
    legend('sin(x)', 'cos(x)')
    xlabel('x')
    ylabel('y')
    title('sin ir cos grafikai')
    grid on
else
    varargout{1} = y1;
    if nargout >= 2
        varargout{2} = y2;
    end
end
end
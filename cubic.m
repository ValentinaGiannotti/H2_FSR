function [s, s_d, s_dd, a0, a1, a_2, a_3] = cubic(T, t)
  
    a0 = 0;
    a1 = 0;
    a_2 = 3 / T^2;
    a_3 = -2 / T^3;

    % Calcolo della traiettoria interpolante di terzo ordine
    s = a_3 * t.^3 + a_2 * t.^2;
    s_d = 3 * a_3 * t.^2 + 2 * a_2 * t; 
    s_dd = 6 * a_3 * t + 2 * a_2; 
  
end

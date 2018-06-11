## Higher Dimensional Lorenz System
function dx = higher_dimensional_lorenz(X, T, kappa, nu, a, c, T0)
  b01 = X(1);
  ## ---
  b11 = X(2);
  b02 = X(3);
  ## ---
  b21 = X(4);
  b12 = X(5);
  b03 = X(6);
  ## ---
  a11 = X(7);
  ## ----
  a21 = X(8);
  a12 = X(9);

  order = 3;

  dx = zeros(order^2,1);
  dx(1) = - kappa * b01 ...
          + a/4 * a11 * b12 ...
          + a/4 * a12 * b11;
  dx(2) = - (a**2 + 1) * kappa * b11 ...
          + (a * T0) /  pi * a11 ...
          - a / 2 * a12 * b01 ...
          + a * a11 * b02 ...
          - (3 * a) / 2 * a12 * b03 ...
          - (3 * a) / 2 * a12 * b21 ...
          - (3 * a) / 2 * a21 * b12;
  dx(3) = - 4 * kappa * b02 ...
          - a / 2 * a11 * b11 ...
          - a * a21 * b21;
  dx(4) = - (4 * a**2 + 1) * kappa * b21 ...
          + (2 * a * T0)/pi * a21 ...
          + (3 * a)/4 * a11 * b12 ...
          - (3 * a)/4 * a12 * b11 ...
          + 2 * a * a21 * b02;
  dx(5) = - (a**2 + 4) * kappa * b12 ...
          + (a * T0)/pi * a12 ...
          - a/2 * a11 * b01 ...
          + (3 * a)/2 * a11 * b03 ...
          - (3 * a)/4 * a11 * b21 ...
          - (3 * a)/4 * a21 * b11;
  dx(6) = - 9 * kappa * b03 ...
          - (3 * a)/4 * a11 * b12 ...
          - (3 * a)/4 * a12 * b11;
  dx(7) = - (a**2 + 1) * nu * a11 ...
          + (a*c)/(a**2 + 1) * b11 ...
          + (9 * a * (a**2 - 1))/(4 * (a**2 + 1)) * a12 * a21;
  dx(8) = - (4 * a**2 + 1) * nu * a21 ...
          + (2 * a * c)/(4 * a**2 + 1) * b21 ...
          + (9 * a)/(4 * (4 * a**2 + 1)) * a11 * a12;
  dx(9) = - (a**2 + 4) * nu * a12 ...
          + (a * c)/(a**2 + 4) * b12 ...
          - (9 * a**3)/(4 * (a**2 + 4)) * a11 * a21;
  return
end

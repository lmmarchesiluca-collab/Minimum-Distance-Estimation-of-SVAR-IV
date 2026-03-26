function [dist] = MinimumDistance_Restricted(theta)
    global sig mS n r g_shock
    
    % Sotto H0: B = 0 (Shock non impattano le macro)
    B = zeros(n, g_shock);
    
    % theta qui contiene solo i 3 parametri di PHI
    phi = [theta(1), 0; 
           theta(2), theta(3)];
    
    f_theta = [B * phi; 
               phi];
    
    err = sig(:) - f_theta(:);
    dist = err' * mS * err;
end
function [C] = drugDiffusion1D(D, L, T, Nx, Nt, decay)

dx = L/(Nx-1);
dt = T/Nt;

if dt > dx^2/(2*D)
    error('Time step too large!');
end

C = zeros(Nx, Nt);

% Boundary condition (Change and add to as appropriate for the question at hand)
C(1,:) = 1;

for t_idx = 1:Nt-1
    for i = 2:Nx-1
        C(i,t_idx+1) = C(i,t_idx) + D*dt/dx^2 * ...
            (C(i+1,t_idx) - 2*C(i,t_idx) + C(i-1,t_idx)) ...
            - decay*C(i,t_idx)*dt;
    end

    C(1,t_idx+1) = 1;
    C(Nx,t_idx+1) = C(Nx-1,t_idx+1);
end


end
% ______________________________________________
% Use these in the command window. 
% [C] = drugDiffusion1D(Put the inputs you have)
% figure()
% imagesc(C)         Creates color map
% colorbar           Shows concentration scale
% xlabel('Time Step')
% ylabel('Spatial Position')
% title('Drug Diffusion Over Time')
% colormap(jet)   Nice gradient (blue → red)

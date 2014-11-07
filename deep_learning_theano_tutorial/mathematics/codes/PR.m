%*******************  EE556 - Mathematics of Data  ************************
% Function:  [x, info] = PR(fx, gradf, Lips, parameter)       
% Purpose:   Implementation of the PageRank algorithm.     
% Parameter: n     - number of nodes on the graph.
%            maxit - Maximum number of iterations.
%            tolx  - Error toleration for stopping condition.
%*************************** LIONS@EPFL ***********************************
function [ x, info ] = PR( fx, Mx, parameter )

    fprintf('%s\n', repmat('*', 1, 68));
    
    % Set the clock.
    time1       = tic;
    timestart   = toc(time1);

    % Set initial estimate.
    x_next      = parameter.x0;
    
    for iter    = 1:parameter.maxit
        
        x           = x_next;
        
        % Compute error and save data to be plotted later on.
        info.itertime(iter ,1)      = toc(time1) - timestart;
        info.fx(iter, 1)            = fx(x);
                
        % Print the information.
        fprintf('Iter = %4d,  f(x) = %5.3e\n', ...
                iter,  info.fx(iter, 1));
       
        % Start the clock.
        timestart   = toc(time1);

        % Update the next iteration.
        '???'
        
        % Check stopping criterion.
        if norm(x_next - x) <= parameter.tolx 
            break;
        end
        
    end

    % Finalization.
    info.iter           = iter;
    info.time           = cumsum(info.itertime);
    info.totaltime      = info.time(iter);

end


% Submitted by Max Weinstein

function montecarlo()

	n = 1000000;
	output(n)
end

function output(n)

    piEstimate = estimate(n);
    disp(['The estimated value is ', num2str(piEstimate)])
    disp(['The percent error is ', num2str(100*(pi-piEstimate)/pi)])
end

function piEstimate = estimate(n)

    piCount = 0;
    
    for i=1:n
        point = rand(1,2);
        piCount = piCount + inCircle(point);
    end
    
    piEstimate = 4*piCount/n;
end

function inCircle = inCircle(point)
%input point should be a 1x2 matrix, aka a 2-d row vector%
    inCircle = (norm(point) <= 1);
end

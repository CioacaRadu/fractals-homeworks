function [ output_args ] = show_rect( M,N,O,P ) % display a black rectangle with points MNOP
figure(1)
hold  on

fill([M.x N.x O.x P.x],[M.y N.y O.y P.y],[0 0 0]); %sterg un patrat

xlim([0 20]);
ylim([0 20]);
axis([0 20 0 20]);
end


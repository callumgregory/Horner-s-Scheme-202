fprintf('\n*** testing more examples using the function HornerSimple *** \n\n');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CHECK that HornerSimple([1,2,4],[1,3;0,2])==[7,42;0,21]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('TEST   1 :  HornerSimple([1,2,4],[1,3;0,2])==[7,42;0,21]   ........................................... ');
try
  tic;
  [T,passed__] = evalc('HornerSimple([1,2,4],[1,3;0,2])==[7,42;0,21]');
  elapsed_time__ = toc;
  if(passed__)
    fprintf('PASS    t = %8.4f s\n',elapsed_time__);
  else
    fprintf(2,'FAIL\n');
  end
catch exception
  fprintf(2,'%s\n',exception.message);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CHECK that HornerSimple([2,4,5,6],[1,2;3,1])==[155,136;204,155]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('TEST   2 :  HornerSimple([2,4,5,6],[1,2;3,1])==[155,136;204,155]   ................................... ');
try
  tic;
  [T,passed__] = evalc('HornerSimple([2,4,5,6],[1,2;3,1])==[155,136;204,155]');
  elapsed_time__ = toc;
  if(passed__)
    fprintf('PASS    t = %8.4f s\n',elapsed_time__);
  else
    fprintf(2,'FAIL\n');
  end
catch exception
  fprintf(2,'%s\n',exception.message);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CHECK that HornerSimple([2],[1,2;3,4])==[2,0;0,2]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('TEST   3 :  HornerSimple([2],[1,2;3,4])==[2,0;0,2]   ................................................. ');
try
  tic;
  [T,passed__] = evalc('HornerSimple([2],[1,2;3,4])==[2,0;0,2]');
  elapsed_time__ = toc;
  if(passed__)
    fprintf('PASS    t = %8.4f s\n',elapsed_time__);
  else
    fprintf(2,'FAIL\n');
  end
catch exception
  fprintf(2,'%s\n',exception.message);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CHECK that HornerSimple([],[1,2;3,4])==[0,0;0,0]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('TEST   4 :  HornerSimple([],[1,2;3,4])==[0,0;0,0]   .................................................. ');
try
  tic;
  [T,passed__] = evalc('HornerSimple([],[1,2;3,4])==[0,0;0,0]');
  elapsed_time__ = toc;
  if(passed__)
    fprintf('PASS    t = %8.4f s\n',elapsed_time__);
  else
    fprintf(2,'FAIL\n');
  end
catch exception
  fprintf(2,'%s\n',exception.message);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CHECK that HornerSimple(cat(3,[1,3;4,8],[2,1;6,2],[3,4;5,0],[0,2;0,3]),[6,2;1,0])==[199,873;34,145]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('TEST   5 :  HornerSimple(cat(3,[1,3;4,8],[2,1;6,2],[3,4;5,0],[0,2;0,3]),[6,2;1,0])==[199,873;34,145]   ');
try
  tic;
  [T,passed__] = evalc('HornerSimple(cat(3,[1,3;4,8],[2,1;6,2],[3,4;5,0],[0,2;0,3]),[6,2;1,0])==[199,873;34,145]');
  elapsed_time__ = toc;
  if(passed__)
    fprintf('PASS    t = %8.4f s\n',elapsed_time__);
  else
    fprintf(2,'FAIL\n');
  end
catch exception
  fprintf(2,'%s\n',exception.message);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CHECK that HornerSimple([],[7])==[0]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('TEST   6 :  HornerSimple([],[7])==[0]   .............................................................. ');
try
  tic;
  [T,passed__] = evalc('HornerSimple([],[7])==[0]');
  elapsed_time__ = toc;
  if(passed__)
    fprintf('PASS    t = %8.4f s\n',elapsed_time__);
  else
    fprintf(2,'FAIL\n');
  end
catch exception
  fprintf(2,'%s\n',exception.message);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CHECK that HornerSimple(cat(3,[4,3;2,1],[3,2;3,5],[1,3;4,3],[5,8;1,1]),[3])==[157,252;74,70]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('TEST   7 :  HornerSimple(cat(3,[4,3;2,1],[3,2;3,5],[1,3;4,3],[5,8;1,1]),[3])==[157,252;74,70]   ...... ');
try
  tic;
  [T,passed__] = evalc('HornerSimple(cat(3,[4,3;2,1],[3,2;3,5],[1,3;4,3],[5,8;1,1]),[3])==[157,252;74,70]');
  elapsed_time__ = toc;
  if(passed__)
    fprintf('PASS    t = %8.4f s\n',elapsed_time__);
  else
    fprintf(2,'FAIL\n');
  end
catch exception
  fprintf(2,'%s\n',exception.message);
end


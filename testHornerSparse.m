fprintf('\n*** testing function HornerSparse *** \n\n');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CHECK that HornerSparse([1],[3],7)==21
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('TEST   1 :  HornerSparse([1],[3],7)==21   ..................................... ');
try
  tic;
  [T,passed__] = evalc('HornerSparse([1],[3],7)==21');
  elapsed_time__ = toc;
  if(passed__)
    fprintf('PASS    t = %8.4f s\n',elapsed_time__);
  else
    fprintf(2,'FAIL\n');
  end
catch exception
  fprintf(2,'%s\n',exception.message);
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CHECK that HornerSparse([0,1,2],[1,2,3],5)==86
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('TEST   2 :  HornerSparse([0,1,2],[1,2,3],5)==86   ............................. ');
try
  tic;
  [T,passed__] = evalc('HornerSparse([0,1,2],[1,2,3],5)==86');
  elapsed_time__ = toc;
  if(passed__)
    fprintf('PASS    t = %8.4f s\n',elapsed_time__);
  else
    fprintf(2,'FAIL\n');
  end
catch exception
  fprintf(2,'%s\n',exception.message);
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CHECK that HornerSparse([1],[3],[1,2;3,4])==[3,6;9,12]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('TEST   3 :  HornerSparse([1],[3],[1,2;3,4])==[3,6;9,12]   ..................... ');
try
  tic;
  [T,passed__] = evalc('HornerSparse([1],[3],[1,2;3,4])==[3,6;9,12]');
  elapsed_time__ = toc;
  if(passed__)
    fprintf('PASS    t = %8.4f s\n',elapsed_time__);
  else
    fprintf(2,'FAIL\n');
  end
catch exception
  fprintf(2,'%s\n',exception.message);
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CHECK that HornerSparse([0,1,2],[1,2,3],[1,2;3,4])==[24,34;51,75]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('TEST   4 :  HornerSparse([0,1,2],[1,2,3],[1,2;3,4])==[24,34;51,75]   .......... ');
try
  tic;
  [T,passed__] = evalc('HornerSparse([0,1,2],[1,2,3],[1,2;3,4])==[24,34;51,75]');
  elapsed_time__ = toc;
  if(passed__)
    fprintf('PASS    t = %8.4f s\n',elapsed_time__);
  else
    fprintf(2,'FAIL\n');
  end
catch exception
  fprintf(2,'%s\n',exception.message);
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CHECK that HornerSparse([381,635],[2,3],eye(1024))==5*eye(1024)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('TEST   5 :  HornerSparse([381,635],[2,3],eye(1024))==5*eye(1024)   ............ ');
try
  tic;
  [T,passed__] = evalc('HornerSparse([381,635],[2,3],eye(1024))==5*eye(1024)');
  elapsed_time__ = toc;
  if(passed__)
    fprintf('PASS    t = %8.4f s\n',elapsed_time__);
  else
    fprintf(2,'FAIL\n');
  end
catch exception
  fprintf(2,'%s\n',exception.message);
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CHECK that HornerSparse([0],cat(3,eye(2)),eye(2))==eye(2)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('TEST   6 :  HornerSparse([0],cat(3,eye(2)),eye(2))==eye(2)   .................. ');
try
  tic;
  [T,passed__] = evalc('HornerSparse([0],cat(3,eye(2)),eye(2))==eye(2)');
  elapsed_time__ = toc;
  if(passed__)
    fprintf('PASS    t = %8.4f s\n',elapsed_time__);
  else
    fprintf(2,'FAIL\n');
  end
catch exception
  fprintf(2,'%s\n',exception.message);
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CHECK that HornerSparse([2,5],cat(3,[1,2;7,3],[3,-7;1,0]),[5,7;2,1])==[60759,-102423;19476,-32817]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('TEST   7 : HornerSparse([2,5],cat(3,[1,2;7,3],[3,-7;1,0]),[5,7;2,1])==[60759,-102423;19476,-32817]    ');
try
  tic;
  [T,passed__] = evalc('HornerSparse([2,5],cat(3,[1,2;7,3],[3,-7;1,0]),[5,7;2,1])==[60759,-102423;19476,-32817]');
  elapsed_time__ = toc;
  if(passed__)
    fprintf('PASS    t = %8.4f s\n',elapsed_time__);
  else
    fprintf(2,'FAIL\n');
  end
catch exception
  fprintf(2,'%s\n',exception.message);
end



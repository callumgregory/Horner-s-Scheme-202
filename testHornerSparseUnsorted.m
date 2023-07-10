fprintf('\n*** testing function HornerSparseUnsorted *** \n\n');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CHECK that HornerSparseUnsorted([1],[3],7)==21
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('TEST   1 :  HornerSparseUnsorted([1],[3],7)==21   ............................. ');
try
  tic;
  [T,passed__] = evalc('HornerSparseUnsorted([1],[3],7)==21');
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
% CHECK that HornerSparseUnsorted([0,1,2],[1,2,3],5)==86
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('TEST   2 :  HornerSparseUnsorted([0,1,2],[1,2,3],5)==86   ..................... ');
try
  tic;
  [T,passed__] = evalc('HornerSparseUnsorted([0,1,2],[1,2,3],5)==86');
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
% CHECK that HornerSparseUnsorted([1],[3],[1,2;3,4])==[3,6;9,12]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('TEST   3 :  HornerSparseUnsorted([1],[3],[1,2;3,4])==[3,6;9,12]   ............. ');
try
  tic;
  [T,passed__] = evalc('HornerSparseUnsorted([1],[3],[1,2;3,4])==[3,6;9,12]');
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
% CHECK that HornerSparseUnsorted([2,1,0],[3,2,1],[1,2;3,4])==[24,34;51,75]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('TEST   4 :  HornerSparseUnsorted([2,1,0],[3,2,1],[1,2;3,4])==[24,34;51,75]   .. ');
try
  tic;
  [T,passed__] = evalc('HornerSparseUnsorted([2,1,0],[3,2,1],[1,2;3,4])==[24,34;51,75]');
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
% CHECK that HornerSparseUnsorted([635,381],[3,2],eye(1024))==5*eye(1024)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('TEST   5 :  HornerSparseUnsorted([635,381],[3,2],eye(1024))==5*eye(1024)   .... ');
try
  tic;
  [T,passed__] = evalc('HornerSparseUnsorted([635,381],[3,2],eye(1024))==5*eye(1024)');
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
% CHECK that HornerSparseUnsorted([0],cat(3,eye(2)),eye(2))==eye(2)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('TEST   6 :  HornerSparseUnsorted([0],cat(3,eye(2)),eye(2))==eye(2)   .......... ');
try
  tic;
  [T,passed__] = evalc('HornerSparseUnsorted([0],cat(3,eye(2)),eye(2))==eye(2)');
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
% CHECK that HornerSparseUnsorted([5,2],cat(3,[3,-7;1,0],[1,2;7,3]),[5,7;2,1])==[60759,-102423;19476,-32817]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('TEST   7 : HornerSparseUnsorted([5,2],cat(3,[3,-7;1,0],[1,2;7,3]),[5,7;2,1])==[60759,-102423;19476,-32817]    ');
try
  tic;
  [T,passed__] = evalc('HornerSparseUnsorted([5,2],cat(3,[3,-7;1,0],[1,2;7,3]),[5,7;2,1])==[60759,-102423;19476,-32817]');
  elapsed_time__ = toc;
  if(passed__)
    fprintf('PASS    t = %8.4f s\n',elapsed_time__);
  else
    fprintf(2,'FAIL\n');
  end
catch exception
  fprintf(2,'%s\n',exception.message);
end



fprintf('\n*** testing function HornerSimple *** \n\n');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CHECK that HornerSimple([1,2,3],5)==86
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('TEST   1 :  HornerSimple([1,2,3],5)==86   ..................................... ');
try
  tic;
  [T,passed__] = evalc('HornerSimple([1,2,3],5)==86');
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
% CHECK that HornerSimple([1,3],[1,2;3,4])==[4,6;9,13]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('TEST   2 :  HornerSimple([1,3],[1,2;3,4])==[4,6;9,13]   ....................... ');
try
  tic;
  [T,passed__] = evalc('HornerSimple([1,3],[1,2;3,4])==[4,6;9,13]');
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
% CHECK that HornerSimple([1,2,3,4],eye(1024))==10*eye(1024)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('TEST   3 :  HornerSimple([1,2,3,4],eye(1024))==10*eye(1024)   ................. ');
try
  tic;
  [T,passed__] = evalc('HornerSimple([1,2,3,4],eye(1024))==10*eye(1024)');
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
% CHECK that HornerSimple(cat(3,[1,2;3,4]),eye(2))==[1,2;3,4]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('TEST   4 :  HornerSimple(cat(3,[1,2;3,4]),eye(2))==[1,2;3,4]   ................ ');
try
  tic;
  [T,passed__] = evalc('HornerSimple(cat(3,[1,2;3,4]),eye(2))==[1,2;3,4]');
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
% CHECK that HornerSimple(cat(3,eye(2),2*eye(2)),7)==15*eye(2)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('TEST   5 :  HornerSimple(cat(3,eye(2),2*eye(2)),7)==15*eye(2)   ............... ');
try
  tic;
  [T,passed__] = evalc('HornerSimple(cat(3,eye(2),2*eye(2)),7)==15*eye(2)');
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
% CHECK that HornerSimple(cat(3,[1,2;7,3],[3,-7;1,0],[0,2;-5,-2]),[5,7;2,1])==[-187,-39;-61,-17]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('TEST   6 : HornerSimple(cat(3,[1,2;7,3],[3,-7;1,0],[0,2;-5,-2]),[5,7;2,1])==[-187,-39;-61,-17]    ');
try
  tic;
  [T,passed__] = evalc('HornerSimple(cat(3,[1,2;7,3],[3,-7;1,0],[0,2;-5,-2]),[5,7;2,1])==[-187,-39;-61,-17]');
  elapsed_time__ = toc;
  if(passed__)
    fprintf('PASS    t = %8.4f s\n',elapsed_time__);
  else
    fprintf(2,'FAIL\n');
  end
catch exception
  fprintf(2,'%s\n',exception.message);
end



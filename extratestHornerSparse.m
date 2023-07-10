fprintf('\n*** testing more example using the function HornerSparse *** \n\n');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CHECK that HornerSparse([1],[2],[1,2;3,4])==[2,4;6,8]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('TEST   1 :  HornerSparse([1],[2],[1,2;3,4])==[2,4;6,8]   ..................................... ');
try
  tic;
  [T,passed__] = evalc('HornerSparse([1],[2],[1,2;3,4])==[2,4;6,8]');
  elapsed_time__ = toc;
  if(passed__)
    fprintf('PASS    t = %8.4f s\n',elapsed_time__);
  else
    fprintf(2,'FAIL\n');
  end
catch exception
  fprintf(2,'%s\n',exception.message);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CHECK that HornerSparse([1,3,4,6],[2,4,5,10],3)==7809
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('TEST   2 :  HornerSparse([1,3,4,6],[2,4,5,10],3)==7809   ..................................... ');
try
  tic;
  [T,passed__] = evalc('HornerSparse([1,3,4,6],[2,4,5,10],3)==7809');
  elapsed_time__ = toc;
  if(passed__)
    fprintf('PASS    t = %8.4f s\n',elapsed_time__);
  else
    fprintf(2,'FAIL\n');
  end
catch exception
  fprintf(2,'%s\n',exception.message);
end
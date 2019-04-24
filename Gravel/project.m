clear;

% ----------------------- filename 1 -------------------
user_entry1 = input('Please enter a filename: ','s');



[data,Fs]=audioread(user_entry1);
num_samples1 = length(data);
P1 = fft(data);
PSD1 = P1.*conj(P1)/num_samples1;
PSD1 = PSD1 /max(PSD1);
f1 = Fs/num_samples1*(0:num_samples1/2-1);
y1 = rms(PSD1);



if y1 < .0030 
   disp('This is SAND!');
end;
 

if (y1 > .0030)
    if (y1 < .0100)
      disp('This is GRASS!');
   
    else
        disp('This is CONCRETE'); 
         end;
end;

% ----------------------- filename 2 -------------------
user_entry2 = input('Please enter a filename: ','s');



[data2,Fs2]=audioread(user_entry2);
num_samples2 = length(data2);
P2 = fft(data2);
PSD2 = P2.*conj(P2)/num_samples2;
PSD2 = PSD2 /max(PSD2);
f2 = Fs2/num_samples2*(0:num_samples2/2-1);
y2 = rms(PSD2);



if y2 < .0030 
   disp('This is SAND!');
end;
 

if (y2 > .0030)
    if (y2 < .0100)
      disp('This is GRASS!');
   
    else
        disp('This is CONCRETE'); 
         end;
end;

% ----------------------- filename 3 -------------------
user_entry3 = input('Please enter a filename: ','s');



[data3,Fs3]=audioread(user_entry3);
num_samples3 = length(data3);
P3 = fft(data3);
PSD3 = P3.*conj(P3)/num_samples3;
PSD3 = PSD3 /max(PSD3);
f3 = Fs3/num_samples3*(0:num_samples3/2-1);
y3 = rms(PSD3);



if y3 < .0030 
   disp('This is SAND!');
end;
 

if (y3 > .0030)
    if (y3 < .0100)
      disp('This is GRASS!');
   
    else
        disp('This is CONCRETE'); 
         end;
end;


hold on

plot(f1,PSD1(1:num_samples1/2),'r')
plot(f2,PSD2(1:num_samples2/2),'b')
plot(f3,PSD3(1:num_samples3/2),'y')



xlim([0,500]);
ylim([0,1]);
xlabel('Frequency (Hz)') 
ylabel('Normalized - Power/Hz') 

hold off

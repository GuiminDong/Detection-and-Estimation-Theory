clear;clc;

ximage=imread('objects2.png (1296×968).png');
figure(1),image(ximage);
%                       
%    feature vector = [ red;green;bg ]
%

%% Data format preprocessing
% Extract RGB valus from the Target image
num_row=size(ximage,1);
num_col=size(ximage,2);
row_start=1;
row_end=num_row;
col_start=1;
col_end=num_col;
label=0;
[ target_input,~ ] = sampleRGBvalues( ximage,row_start,row_end,col_start,col_end,label ); 

% [redvals, greenvals, bluevals] = mygetRGBvalues( ximage );
% target_input=[redvals 
%               greenvals 
%               bluevals];
% target_input=double(target_input');

% Sample Background Black Color
row_start=1;
row_end=30;
col_start=1;
col_end=30;
label=1;
[ sample1,sample_label1 ] = sampleRGBvalues( ximage,row_start,row_end,col_start,col_end,label ); 

% Sample Green Object Color
row_start=221;
row_end=250;
col_start=581;
col_end=610;
label=2;
[ sample2,sample_label2 ] = sampleRGBvalues( ximage,row_start,row_end,col_start,col_end,label );

% Sample Red Object Color
row_start=251;
row_end=280;
col_start=1251;
col_end=1280;
label=3;
[ sample3,sample_label3 ] = sampleRGBvalues( ximage,row_start,row_end,col_start,col_end,label ); 

% Sample Blue Object Color
row_start=701;
row_end=730;
col_start=901;
col_end=930;
label=4;
[ sample4,sample_label4 ] = sampleRGBvalues( ximage,row_start,row_end,col_start,col_end,label ); 

% Sample Purple Object Color
row_start=701;
row_end=730;
col_start=281;
col_end=310;
label=5;
[ sample5,sample_label5 ] = sampleRGBvalues( ximage,row_start,row_end,col_start,col_end,label ); 

training_sample= [sample1;
               sample2;
               sample3;
               sample4;
               sample5];
group_sampleLable= [sample_label1;
                    sample_label2;
                    sample_label3;
                    sample_label4;
                    sample_label5];

%% Linear Classification
[C,err,P,logp,coeff] = classify(target_input,training_sample,group_sampleLable,'Linear');

%% Visualize Classification results

targetClass = reshape(C,[num_col,num_row]);
targetClass=double(targetClass');

color1=100*ones(num_row,num_col);
color2=100*ones(num_row,num_col);
color3=100*ones(num_row,num_col);
color4=100*ones(num_row,num_col);
color5=100*ones(num_row,num_col);


for i=1:num_row
    for j=1:num_col
        if (targetClass(i,j)==1)
            color1(i,j)=0;
        elseif(targetClass(i,j)==2)
            color2(i,j)=0;
        elseif(targetClass(i,j)==3)
            color3(i,j)=0;
        elseif(targetClass(i,j)==4)
            color4(i,j)=0;
        elseif(targetClass(i,j)==5)
            color5(i,j)=0;
        end
    end
end

figure(2),image(color1),colormap(gray); 
title('Dominant Color 1 Under Linear Classify');
figure(3),image(color2),colormap(gray); 
title('Dominant Color 2 Under Linear Classify');
figure(4),image(color3),colormap(gray); 
title('Dominant Color 3 Under Linear Classify');
figure(5),image(color4),colormap(gray); 
title('Dominant Color 4 Under Linear Classify');
figure(6),image(color5),colormap(gray); 
title('Dominant Color 5 Under Linear Classify');
% figure(2);
% image(targetClass);

%% Quadratic Classification
[C,err,P,logp,coeff] = classify(target_input,training_sample,group_sampleLable,'Quadratic');

%% Visualize Classification results

targetClass = reshape(C,[num_col,num_row]);
targetClass=double(targetClass');

color1=100*ones(num_row,num_col);
color2=100*ones(num_row,num_col);
color3=100*ones(num_row,num_col);
color4=100*ones(num_row,num_col);
color5=100*ones(num_row,num_col);


for i=1:num_row
    for j=1:num_col
        if (targetClass(i,j)==1)
            color1(i,j)=0;
        elseif(targetClass(i,j)==2)
            color2(i,j)=0;
        elseif(targetClass(i,j)==3)
            color3(i,j)=0;
        elseif(targetClass(i,j)==4)
            color4(i,j)=0;
        elseif(targetClass(i,j)==5)
            color5(i,j)=0;
        end
    end
end


figure(7),image(color1),colormap(gray); 
title('Dominant Color 1 Under Quadratic Classify');
figure(8),image(color2),colormap(gray); 
title('Dominant Color 2 Under Quadratic Classify');
figure(9),image(color3),colormap(gray); 
title('Dominant Color 3 Under Quadratic Classify');
figure(10),image(color4),colormap(gray); 
title('Dominant Color 4 Under Quadratic Classify');
figure(11),image(color5),colormap(gray); 
title('Dominant Color 5 Under Quadratic Classify');
clear;clc;

ximage=imread('firealarm.jpg');
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

% Sample Background Light Color
row_start=1;
row_end=200;
col_start=1;
col_end=200;
label=1;
[ sample1,sample_label1 ] = sampleRGBvalues( ximage,row_start,row_end,col_start,col_end,label ); 

% Sample Background Deep Color
row_start=601;
row_end=800;
col_start=1001;
col_end=1200;
label=1;
[ sample2,sample_label2 ] = sampleRGBvalues( ximage,row_start,row_end,col_start,col_end,label );

% Sample Red Light Color
row_start=201;
row_end=300;
col_start=501;
col_end=700;
label=2;
[ sample3,sample_label3 ] = sampleRGBvalues( ximage,row_start,row_end,col_start,col_end,label ); 

% Sample Red Deep Color
row_start=751;
row_end=850;
col_start=701;
col_end=800;
label=2;
[ sample4,sample_label4 ] = sampleRGBvalues( ximage,row_start,row_end,col_start,col_end,label );

training_sample= [sample1;
               sample2;
               sample3;
               sample4];
group_sampleLable= [sample_label1;
                    sample_label2;
                    sample_label3;
                    sample_label4];

%% Linear Classification
[C,err,P,logp,coeff] = classify(target_input,training_sample,group_sampleLable,'Linear');

%% Visualize Classification results

targetClass = reshape(C,[num_col,num_row]);
targetClass=double(targetClass');

color1=100*ones(num_row,num_col);
color2=100*ones(num_row,num_col);


for i=1:num_row
    for j=1:num_col
        if (targetClass(i,j)==1)
            color1(i,j)=0;
        elseif(targetClass(i,j)==2)
            color2(i,j)=0;
        end
    end
end

figure(2),image(color1),colormap(gray); 
title('Dominant Color 1 Under Linear Classify');
figure(3),image(color2),colormap(gray); 
title('Dominant Color 2 Under Linear Classify');
% figure(2);
% image(targetClass);

%% Quadratic Classification
[C,err,P,logp,coeff] = classify(target_input,training_sample,group_sampleLable,'Quadratic');

%% Visualize Classification results

targetClass = reshape(C,[num_col,num_row]);
targetClass=double(targetClass');

color1=100*ones(num_row,num_col);
color2=100*ones(num_row,num_col);


for i=1:num_row
    for j=1:num_col
        if (targetClass(i,j)==1)
            color1(i,j)=0;
        elseif(targetClass(i,j)==2)
            color2(i,j)=0;
        end
    end
end

figure(4),image(color1),colormap(gray); 
title('Dominant Color 1 Under Quadratic Classify');
figure(5),image(color2),colormap(gray); 
title('Dominant Color 2 Under Quadratic Classify');

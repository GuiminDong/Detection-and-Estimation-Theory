clear;clc;

ximage=imread('objects1.png');
figure(1),image(ximage);



num_row=size(ximage,1);
num_col=size(ximage,2);
row_start=1;
row_end=num_row;
col_start=1;
col_end=num_col;
label=0;
[ target_input,~ ] = sampleRGBvalues( ximage,row_start,row_end,col_start,col_end,label ); 


row_start=1;
row_end=30;
col_start=1;
col_end=30;
label=1;
[ sample1,sample_label1 ] = sampleRGBvalues( ximage,row_start,row_end,col_start,col_end,label ); 


row_start=101;
row_end=130;
col_start=221;
col_end=250;
label=2;
[ sample2,sample_label2 ] = sampleRGBvalues( ximage,row_start,row_end,col_start,col_end,label );

row_start=341;
row_end=370;
col_start=231;
col_end=260;
label=3;
[ sample3,sample_label3 ] = sampleRGBvalues( ximage,row_start,row_end,col_start,col_end,label ); 

training_sample= [sample1;
               sample2;
               sample3];
group_sampleLable= [sample_label1;
                    sample_label2;
                    sample_label3];

%% Linear Classifier
[C,err,P,logp,coeff] = classify(target_input,training_sample,group_sampleLable,'Linear');



targetClass = reshape(C,[num_col,num_row]);
targetClass=double(targetClass');

color1=100*ones(num_row,num_col);
color2=100*ones(num_row,num_col);
color3=100*ones(num_row,num_col);


for i=1:num_row
    for j=1:num_col
        if (targetClass(i,j)==1)
            color1(i,j)=0;
        elseif(targetClass(i,j)==2)
            color2(i,j)=0;
        elseif(targetClass(i,j)==3)
            color3(i,j)=0;
        end
    end
end

figure(2),image(color1),colormap(gray); 
title('Color 1 by LC');
figure(3),image(color2),colormap(gray); 
title('Color 2 by LC');
figure(4),image(color3),colormap(gray); 
title(' Color 3 by LC');


%% Quadratic Classifier
[C,err,P,logp,coeff] = classify(target_input,training_sample,group_sampleLable,'Quadratic');



targetClass = reshape(C,[num_col,num_row]);
targetClass=double(targetClass');

color1=100*ones(num_row,num_col);
color2=100*ones(num_row,num_col);
color3=100*ones(num_row,num_col);


for i=1:num_row
    for j=1:num_col
        if (targetClass(i,j)==1)
            color1(i,j)=0;
        elseif(targetClass(i,j)==2)
            color2(i,j)=0;
        elseif(targetClass(i,j)==3)
            color3(i,j)=0;
        end
    end
end

figure(5),image(color1),colormap(gray); 
title('Color 1 QC');
figure(6),image(color2),colormap(gray); 
title('Color 2 QC');
figure(7),image(color3),colormap(gray); 
title('Color 3 QC');
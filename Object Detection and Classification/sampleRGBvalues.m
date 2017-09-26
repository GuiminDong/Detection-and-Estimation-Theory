function [ sample,sample_label ] = sampleRGBvalues( xsubimage,row_start,row_end,col_start,col_end,label )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    num_sample = (row_end-row_start+1)*(col_end-col_start+1);
    row_len=col_end-col_start+1;
    %col_len=row_end-row_start+1;
    
    redvals = zeros(1,num_sample);
    greenvals = zeros(1,num_sample);
    bluevals = zeros(1,num_sample);
    
    order=1;

    for i=row_start:row_end
        for j=col_start:col_end
            %order=(i-row_start)*row_len+(j-col_start+1);
            redvals( 1,order ) = xsubimage(i,j,1);
            greenvals( 1,order ) = xsubimage(i,j,2);
            bluevals( 1,order ) = xsubimage(i,j,3);
            order=order+1;
        end
    end
    
    sample=[redvals' greenvals' bluevals'];
    
    sample_label=label*ones(num_sample,1);

end


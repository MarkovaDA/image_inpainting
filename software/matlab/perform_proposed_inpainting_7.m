function [output_array,iters] = perform_proposed_inpainting_7(...
    input_array,mask_array,...
    patch_size_0,distance_size,skip_factor,...
    cahn_epsilons,cahn_total_iters,total_stages,display_name)

args = {single(input_array),single(mask_array),...
    int32(patch_size_0),int32(distance_size),int32(skip_factor),...
    single(cahn_epsilons),int32(cahn_total_iters),int32(total_stages)};

% The string needs to be null-terminated
if nargin>8, args{end+1} = int8([display_name 0]); end;

[output_array,iters] = perform_proposed_inpainting_mex_0(args{:});

end
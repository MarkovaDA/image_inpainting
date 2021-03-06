function output_array = perform_cahn_hilliard_gillette_inpainting_3(...
    input_array,mask_array,...
    total_iters,epsilons,total_stages)

output_array = perform_cahn_hilliard_gillette_inpainting_mex_0(...
    single(input_array),single(mask_array),...
    int32(total_iters),single(epsilons),int32(total_stages));

end
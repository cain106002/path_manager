function out = pm_rm(tool_name)
%PM_RM 此处显示有关此函数的摘要
%   此处显示详细说明
pm_path = fileparts(mfilename('fullpath'));
load([pm_path,filesep,'pm_para.mat']);
tool_path = eval(['path_para.',tool_name]);
rmpath(genpath(tool_path));
end


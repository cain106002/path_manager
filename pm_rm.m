function out = pm_rm(tool_name)
%PM_RM �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
pm_path = fileparts(mfilename('fullpath'));
load([pm_path,filesep,'pm_para.mat']);
tool_path = eval(['path_para.',tool_name]);
rmpath(genpath(tool_path));
end


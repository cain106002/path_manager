function out = pm_add(tool_name)
%PM_ADD �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
pm_path = fileparts(mfilename('fullpath'));
load([pm_path,filesep,'pm_para.mat']);
tool_path = eval(['path_para.',tool_name]);
addpath(genpath(tool_path));
end


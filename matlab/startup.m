% Reset path to default
restoredefaultpath
savepath

% Enable FOMCON
addpath(genpath(append(getenv('HOME'), '/.matlab_plugins/fomcon-matlab')));

% Enable Peter Corke toolboxes
addpath(genpath(append(...
    getenv('HOME'), '/.matlab_plugins/petercorke/toolbox-common-matlab')));
addpath(genpath(append(...
    getenv('HOME'), '/.matlab_plugins/petercorke/spatial-math')));
addpath(genpath(append(...
    getenv('HOME'), '/.matlab_plugins/petercorke/robotics-toolbox-matlab')));
addpath(genpath(append(...
    getenv('HOME'), '/.matlab_plugins/petercorke/machinevision-toolbox-matlab')));

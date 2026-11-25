%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

clc;clear all;close all;
pc=pcread('FaceScanFull.ply');
x=pc.Location(:,1);
y=pc.Location(:,2);
z=pc.Location(:,3);
fileID = fopen('facesView.ply','w');
fprintf(fileID,"ply\n");
fprintf(fileID,"format ascii 1.0\n");
fprintf(fileID,"element vertex 320000\n");
fprintf(fileID,"property double x\n");
fprintf(fileID,"property double y\n");
fprintf(fileID,"property double z\n");
fprintf(fileID,"element face 300000\n");
fprintf(fileID,"property list uint8 int32 vertex_indices\n");
fprintf(fileID,"end_header\n");
for i=1:pc.Count
    fprintf(fileID,'%.15f %.15f %.15f\n',x(i,1),y(i,1),z(i,1));
end
count=0;
for i=1:pc.Count-20000
    fprintf(fileID,'4 %d %d %d %d\n',i,i+1,i+800,i+801);
    count=count+1;
end
fclose(fileID);

clear all;
traindir='../dataset/training/';
trainpath = dir(fullfile(traindir,'*.bmp'));
testdir='../dataset/test/';
testpath = dir(fullfile(testdir,'*bmp'));
resultdir='./result.xlsx';
trainimg=[];
testimg=[];
SADMatrix=[];
resultmatrix=[];
testname=[];
finalmatrix=[];
for trainname=1 : length(trainpath)
    trainimg = [trainimg,reshape(im2double(imread([traindir,trainpath(trainname).name])),[],1)];
end
for testnum=1 : length(testpath)
    testimg = [testimg,reshape(im2double(imread([testdir,testpath(testnum).name])),[],1)];
end
for testnum=1 : length(testpath)
    SADMatrix = [];
    for trainname=1 :length(trainpath)
        AD = testimg(:,testnum) - trainimg(:,trainname);
        SAD = SumAbsoluteDif(AD);
        SADMatrix(trainname) = SAD;
    end
    [M,I] = min(SADMatrix);
    resultmatrix=[resultmatrix,string(trainpath(I).name)];
    testname=[testname,string(testpath(testnum).name)];
end
finalmatrix = [testname',resultmatrix'];
status = xlswrite(resultdir,finalmatrix);
if status == 1
    fprintf("success"); 
else 
    fprintf("fail");
end 

function SAD = SumAbsoluteDif(AD)
   SAD = 0;
   for i=1: length(AD)
        SAD = SAD + abs(AD(i));
   end
end
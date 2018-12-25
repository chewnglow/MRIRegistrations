setwd("/home/sugon/Reg_Result/")
path<-"/mnt/17b03647-e766-4d10-990c-0b2e5e4a1985/T1Img/"
dirs<-list.dirs(path = path, full.names = FALSE,recursive = FALSE)
n<-1
QSMpath<-"/home/sugon/QSM/QSM_results/"
t1path<-"/mnt/17b03647-e766-4d10-990c-0b2e5e4a1985/T1Img/temp/"
regpath<-"/home/sugon/Reg_Result/"
extpath<-"/home/sugon/Reg_Result/ext/"
for(a in dirs)
{
  #-----------extraction------------
  imgmag<-paste(QSMpath, a,"_mag.nii.gz", sep = "")
  extoutfilename<-paste(extpath, a, sep = "")
  ext<-fslbet(infile = imgmag, outfile = extoutfilename)
  #------------T1file------------
  imgt1<-paste(t1path,"ext",n,".nii.gz", sep = "")
  #flirt
  flirt(reffile = paste(extoutfilename, ".nii.gz", sep = ""), infile = imgt1, dof=12, outfile = paste(a, "_t1_reg", sep = ""), omat = paste(a, "_t1_mat.mat", sep = ""))
  #syn
  imgmaga<-antsImageRead(paste(extoutfilename, ".nii.gz", sep = ""))
  imgt1a<-antsImageRead(imgt1)
  imgrega<-antsRegistration(fixed = imgmaga, moving = imgt1a)
  antsImageWrite(imgrega$warpedmovout, paste(a, "_t1_reg_ants.nii", sep = ""))
  #Reverse matrix
  matname<-paste(a, "_t1_mat.mat", sep = "")
  mat<-as.matrix(read.table(matname))
  write.table(solve(mat), file = matname, row.names = FALSE, col.names = FALSE)
  #apply
  flirt(infile = paste(QSMpath,a,"_QSM.nii.gz", sep = ""), reffile = imgt1, opts = paste("-init ", regpath, a, "_t1_mat.mat", sep = ""), dof = 12,
        omat = paste(a, "_reg_mat.mat", sep = ""), outfile = paste(a, "_QSM_reg", sep = ""))
  n<-n+1
}

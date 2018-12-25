#read a antsimage and assign it with p1-p100
assignments<-function(fileName,filePos)
{
  varName<-paste("p",filePos,sep = "")
  assign(varName,antsImageRead(filename = fileName), 
         envir = .GlobalEnv)
  return(varName)
}
#get template filename (dir/temp/fileName.nii)
getTempFilename<-function(fileName)
{
  return(paste(path,"temp/",fileName, ".nii", sep = ""))
}
#generate variable names of each step result (mask1-mask100)
getStepString<-function(string,n)
{
  return(paste(string,n,sep = ""))
}
#write antsimage into file using its varname string
fileWrite<-function(string)
{
  antsImageWrite(get(string), getTempFilename(string))
}


path<-"/mnt/17b03647-e766-4d10-990c-0b2e5e4a1985/T1Img/"
tempPath<-
  dirs<-list.dirs(path = path, full.names = FALSE,
                  recursive = FALSE)

varPos<-1
for(a in dirs)
{
  setwd(paste(path,a,sep = ""))
  #------------Naming Files------------
  files<-list.files()
  varNames<-c()
  fileName<-grep("^c+", files, value = TRUE)
  img<-assignments(fileName, varPos)
  #------------Processing--------------
  
  maskStr<-getStepString("mask",varPos)
  assign(maskStr,
         getMask(get(img),lowThresh = 340))
  fileWrite(maskStr)
  
  corrStr<-getStepString("corr",varPos)
  assign(corrStr,
         abpN4(get(img),mask = get(maskStr)))
  fileWrite(corrStr)
    
  extStr<-getStepString("ext",varPos)
  ext<-fslbet(infile = getTempFilename(corrStr), 
              outfile = paste(path,"temp/",extStr , sep = ""), 
              betcmd = "bet", opts = "-R -f 0.57")
  
  extFile<-antsImageRead(paste(path,"temp/ext",varPos , ".nii.gz", sep = ""))
  segStr<-getStepString("seg",varPos)
  seg<-kmeansSegmentation(img = extFile, k=3, mrf = 0.18)
  #seg_n1.nii to seg_n.nii
  seg1<-paste("seg",varPos,"1", sep = "")
  seg2<-paste("seg",varPos,"2", sep = "")
  seg3<-paste("seg",varPos,"3", sep = "")
  sega<-paste("seg",varPos,"a", sep = "")
  assign(seg1, seg$probabilityimages[[1]])
  assign(seg2, seg$probabilityimages[[2]])
  assign(seg3, seg$probabilityimages[[3]])
  assign(sega, seg$segmentation)
  fileWrite(seg1)
  fileWrite(seg2)
  fileWrite(seg3)
  fileWrite(sega)
  
  varPos<-varPos+1
}

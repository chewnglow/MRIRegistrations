setwd("/mnt/17b03647-e766-4d10-990c-0b2e5e4a1985/T1Img/")
img0<-"/mnt/17b03647-e766-4d10-990c-0b2e5e4a1985/T1Img/temp/ext6.nii.gz"
img1<-"/mnt/17b03647-e766-4d10-990c-0b2e5e4a1985/T1Img/temp/ext1.nii.gz"
img0seg<-"/mnt/17b03647-e766-4d10-990c-0b2e5e4a1985/T1Img/temp/seg6a.nii"
img1seg<-"/mnt/17b03647-e766-4d10-990c-0b2e5e4a1985/T1Img/temp/seg1a.nii"
flirt(img1,img0,outfile = "~/oo_out")
fnirt(img1,img0,outfile = "~/fnirt", opts = "--aff=/tmp/RtmpVRvKIU/file68dd3040ea0e.mat")
img0a<-antsImageRead(img0)
img1a<-antsImageRead(img1)
img1n<-readNIfTI(img1)
img0n<-readNIfTI(img0)
rega<-antsRegistration(fixed = img0a, moving = img1a)
antsImageWrite(rega, "antsSyN.nii")
#divided line
flirt(img1,img0,omat="~/oo_mat.mat",dof = 12,outfile = "~/oo_out")
flirt(img1seg,img0seg,omat="~/ss_with_matrix_mat",dof=12,opts = "-init ~/oo_mat.mat",outfile = "~/ss_with_oomat_out")
flirt(img1seg,img0seg,omat = "~/ss_mat.mat",dof=12,outfile = "~/ss_out")
flirt(img1,img0,omat="~/oo_with_matrix_mat.mat",dof=12,opts="-init ~/ss_mat.mat",outfile = "~/oo_with_ssmat_out")

#moving cog
cog0<-cog(readNIfTI(img0))
cog1<-cog(readNIfTI(img1))

trans<-new("antsrTransform",dimension=3,type="AffineTransform")
paras<-getAntsrTransformParameters(trans)
for(i in 1:3)
{
  paras[9+i]<-cog1[i]-cog0[i]
}
setAntsrTransformParameters(trans,paras)
img1t<-applyAntsrTransformToImage(trans,img1a,img1a)
antsImageWrite(img1t,"img1t.nii")
img1tn<-readNIfTI("img1t.nii")
cog(img1tn)
cog1regat<-antsRegistration(img0)
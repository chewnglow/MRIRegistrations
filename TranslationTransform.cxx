#include "itkImageFileReader.h"
#include "itkImageFileWriter.h"
#include "itkTranslationTransform.h"
#include "itkResampleImageFilter.h"
#include "itkImageBase.h"

int main( int argc, char* argv[] )
{

  const char * inputFileName = "/home/sugon/test/ext1.nii.gz";
  const char * outputFileName = "/home/sugon/test/ext1out.nii";

  constexpr unsigned int Dimension = 3;

  using PixelType = float;
  using ImageType = itk::Image< PixelType, Dimension >;

  using ReaderType = itk::ImageFileReader< ImageType >;
  ReaderType::Pointer reader = ReaderType::New();
  reader->SetFileName( inputFileName );
  reader->UpdateOutputInformation();
  ImageType::Pointer image = reader->GetOutput();

  const ImageType::PointType & origin = image->GetOrigin();

  using TransformType = itk::TranslationTransform< double, Dimension >;

  TransformType::OutputVectorType vector;
  vector[0] = -4.622788;
  vector[1] = 14.962693;
  vector[2] = 20.826053;

  TransformType::Pointer translation = TransformType::New();
  translation->Translate( vector );

  // const double origin[Dimension]={-100.0,-100.0,-100.0};

  // double setOrigin[3]={-abs(origin[0]),-abs(origin[1]),-abs(origin[2])};
  double setOrigin[3]={-95.2611,-107.5,-78.707};

  // origin[0]=-origin[0];
  // origin[1]=-origin[1];
  // origin[2]=-origin[2];

  using ResampleImageFilterType = itk::ResampleImageFilter<ImageType, ImageType>;
  ResampleImageFilterType::Pointer resampleFilter = ResampleImageFilterType::New();
  resampleFilter->SetDefaultPixelValue( 0 );
  resampleFilter->SetOutputOrigin(setOrigin);
  // resampleFilter->SetTransform( translation.GetPointer() );
  resampleFilter->SetInput( reader->GetOutput() );
  resampleFilter->SetSize( reader->GetOutput()->GetLargestPossibleRegion().GetSize() );

  using WriterType = itk::ImageFileWriter< ImageType >;
  WriterType::Pointer writer = WriterType::New();
  writer->SetFileName( outputFileName );
  writer->SetInput( reader->GetOutput() );

  // const ImageType::PointType & fixedorigin = resampleFilter->GetOrigin();

  try
    {
    writer->Update();
    }
  catch( itk::ExceptionObject & error )
    {
    std::cerr << "Error: " << error << std::endl;
    return EXIT_FAILURE;
    }
  // std::cout<<resampleFilter->GetOutputOrigin()<<std::endl;
  std::cout << "Origin = ";
  std::cout << origin[0] << ", "
    << origin[1] << ", "
    << origin[2] << std::endl;
  return EXIT_SUCCESS;
}


cmake_minimum_required(VERSION 3.9.5)

project(TranslationTransform)

find_package(ITK REQUIRED)
include(${ITK_USE_FILE})
if (ITKVtkGlue_LOADED)
  find_package(VTK REQUIRED)
  include(${VTK_USE_FILE})
endif()

add_executable(TranslationTransform MACOSX_BUNDLE TranslationTransform.cxx)

if( "${ITK_VERSION_MAJOR}" LESS 4 )
  target_link_libraries(TranslationTransform ITKReview ${ITK_LIBRARIES})
else( "${ITK_VERSION_MAJOR}" LESS 4 )
  target_link_libraries(TranslationTransform ${ITK_LIBRARIES})
endif( "${ITK_VERSION_MAJOR}" LESS 4 )


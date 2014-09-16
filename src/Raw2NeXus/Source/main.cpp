#include "SaveISISNeXus.h"

#include <iostream>

void showUsage()
{
  std::cout << "usage: raw2nexus <RawFileName> [<NexusFileName>]" << std::endl;
}

int main(int argc, char** argv)
{
  if (argc < 2)
  {
    showUsage();
    return 0;
  }

  std::string rawFileName(argv[1]);
  std::string nexusFileName;
  
  if (argc > 2)
  {
    nexusFileName = argv[2];
  }
  else
  {
    nexusFileName = rawFileName.substr(0,rawFileName.find_last_of('.'));
    nexusFileName += ".nxs";
  }


  try
  {
    SaveISISNexus converter(rawFileName,nexusFileName);
    converter.exec();
  }
  catch(std::exception& e)
  {
    std::cerr << "Convertion failed: " << e.what() << std::endl;
  }

  return 0;
}

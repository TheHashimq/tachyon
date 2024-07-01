#include <cstdlib>
#include <fstream>
#include <iostream>
#include <sstream>

int main(int argc, char **argv) {
  if (argc != 2) {
    std::cerr << "Tachyon : fatal error: no input files" << std::endl;
    std::cerr << "Tachyon : compilation terminated.    " << std::endl;
    return EXIT_FAILURE;
  }

  std::string content;
  {
    std::stringstream content_stream;
    std::fstream input(argv[1], std::ios::in);
    content_stream << input.rdbuf();
    content = content_stream.str();
  }
  std::cout << content << std::endl;

  return EXIT_SUCCESS;
}

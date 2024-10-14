#include <iostream>
#include <fstream>
#include <sstream>

int main(int argc, char* argv[])
{
    if (argc != 2) {
        std::cerr << "Tachyon : Incorrect usage. Correct usage is..." << std::endl;
        std::cerr << "Tachyon <input.hy>" << std::endl;
        return EXIT_FAILURE;
    }

    std::string contents;
    {
        std::stringstream contents_stream;
        std::fstream input(argv[1], std::ios::in);
        contents_stream << input.rdbuf();
        contents = contents_stream.str();
    }
    std::cout << contents << std::endl;
    return EXIT_SUCCESS;
}


      

     
      
      

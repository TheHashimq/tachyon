#include "Generation.hpp"
#include "Parser.hpp"
#include <fstream>
#include <iostream>
#include <optional>
#include <sstream>
#include <vector>

int main(int argc, char *argv[]) {
  if (argc != 2) {
    std::cerr << "Incorrect usage. Correct usage is..." << std::endl;
    std::cerr << "Tachyon <input.ty>" << std::endl;
    return EXIT_FAILURE;
  }

  std::string contents;
  {
    std::stringstream contents_stream;
    std::fstream input(argv[1], std::ios::in);
    contents_stream << input.rdbuf();
    contents = contents_stream.str();
  }

  Tokenizer tokenizer(std::move(contents));
  std::vector<Token> tokens = tokenizer.tokenize();

  Parser parser(std::move(tokens));
  std::optional<NodeProg> prog = parser.parse_prog();
  if (!prog.has_value()) {
    std::cerr << "Invalid program" << std::endl;
    exit(EXIT_FAILURE);
  }

  Generator generator(prog.value());
  std::string generatedCode = generator.gen_prog();
  {
    std::fstream file("output/out.asm", std::ios::out);
    file << generatedCode;
  }
  // Assemble and link the generated code
  system("nasm -felf64 output/out.asm");
  system("ld -o output/out output/out.o");

  return EXIT_SUCCESS;
}

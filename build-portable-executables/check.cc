#include <iostream>
#include <filesystem>

int main(int argc, char** argv)
{
	if (argc != 2) return 1;
	std::cout << std::filesystem::exists(argv[1]) << std::endl;
	return 0;
}

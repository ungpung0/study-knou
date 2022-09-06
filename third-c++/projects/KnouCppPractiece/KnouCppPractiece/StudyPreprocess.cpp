#include <iostream>
#pragma warning (disable:4996)
// Equals "#define _CRT_SECURE_NO_WARNINGS"

// UNICODE Support Validation 
#ifndef UNICODE
#error not support UNICODE

#else
#define ARRAY_LENGTH 5

int main(void) {
	// Create Array
	int array[ARRAY_LENGTH];

	// Insert Array
	for (int i = 0; i < ARRAY_LENGTH; i++) {
		std::cin >> array[i];
	}

	// Lookup Array
	for (int i = 0; i < ARRAY_LENGTH; i++) {
		std::cout << array[i] << std::endl;
	}

	// Print Current Date, Time 
	std::cout << __DATE__ << std::endl;
	std::cout << __TIME__ << std::endl;
}
#endif

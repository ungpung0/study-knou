#include <iostream>

// Namespace "block1"
namespace block1 {
	char desc[] = "this is block 1 space";
}

// Namespace "block2"
namespace block2 {
	char desc[] = "this is block 2 space";
}

// Global Variable
char desc[] = "this is global space";

// Omit "std::"
using namespace std;

int main(void) {
	// Local Variable
	char desc[] = "this is local space";

	// Output Variable
	cout << desc << endl;
	cout << ::desc << endl;
	cout << block1::desc << endl;
	cout << block2::desc << endl;
}
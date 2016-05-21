#include "stm8l.h"

#define PIN 0b00001000 // PD3 -- pin 3

int main() {
	int d;
	// Configure pins
	PD_DDR = PIN;
	PD_CR1 = PIN;
	// Loop
	do {
		PD_ODR ^= PIN;
		for(d = 0; d < 29000; d++) { }
	} while(1);
}

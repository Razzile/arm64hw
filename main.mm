#include <sys/sysctl.h>

int num() {
	 size_t len;
        uint32_t n = 0;
        len = sizeof (n);
        if (::sysctlbyname("hw.optional.breakpoint", &n, &len, NULL, 0) == 0)
        { 
	return n;
}
return 0;
}

/*
__attribute__((naked)) int num() {
	asm("mrs x0, ID_AA64DFR0_EL1");
	asm("add x0, x0, #1");
	asm("ret");
}*/

int main(int argc, char **argv, char **envp) {
	printf("number: %d\n", num());
	return 0;
}

// vim:ft=objc

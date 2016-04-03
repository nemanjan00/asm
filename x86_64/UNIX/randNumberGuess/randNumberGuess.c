#include <stdio.h>
#include <stdlib.h>

int main(){
	int i, n;
	time_t t;
	
	srand((unsigned) time(&t));

	i = rand();

	scanf("%d", &n);

	if(i == n){
		printf("ok\n");
	}
	else
	{
		printf("not ok\n");
	}
	
	return 0;
}

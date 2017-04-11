#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define TRUE 1
#define FALSE 0
int isNumber(char *num)
{
	if(*num == '-' || *num == '+')
		num++;
	
	while(*num)
	{
		if(*num < '0' || *num > '9')
			return FALSE;
		num++;
	}
	return TRUE;
}

int toNumber(char *num)
{
	int isNegative = 0, result = 0;
	if(*num == '-')
	{
		isNegative = 1;
		num++;
	}
	else if(*num == '+')
		num++;
	while(*num)
	{
		result = result * 10 + (*num - '0');
		num++;
	}
	if(isNegative)
		result *= -1;
	return result;
}
char* strrev(char *str)
{
	char *lastChar = str ;
	int index = 0;
	char *reversedString = malloc((strlen(str) + 1) * sizeof(char));
	if(! reversedString)
		exit(1);
	while(*++lastChar);
	while(lastChar != str-1)
	{
		reversedString[index++] = *(--lastChar);
	}
	reversedString[index] = '\0';
	return reversedString;

}
char* toString(int num)
{
	int isNegative = FALSE ,theNumber = num ,index = 0;
	char *str = malloc(50 * sizeof(char)) ,*ret;
	if(!num)
	{
		str[0] = '0';
		str[1] = '\0';
		return str;
	}
	if(num < 0)
	{
		theNumber = -num;
		isNegative = TRUE;
	}
	while(theNumber)
	{
		str[index++] = theNumber % 10 + '0';
		theNumber /= 10;
	}
	if(isNegative)
		str[index++] = '-';
	str[index] = '\0';
	ret = strrev(str);
	free(str);
	return ret;
}

int main(int argc, char *argv[])
{
	char num[50];
	if(argc == 1)
	{
		printf("Enter a number: ");
		scanf("%s", num);
	}
	else if(argc > 2)
	{
		printf("Error, enter only one number!\n");
		return 1;
	}
	else 
		strcpy(num, argv[1]);
	if(isNumber(num))
		printf("you entered: %d which +1 equal to: %d\n", toNumber(toString(toNumber(num))),toNumber(num)+1);
	else
		printf("That isn't a number ! %s\n",num);
	
	return 0;
}

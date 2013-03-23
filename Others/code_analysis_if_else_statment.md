代码分析
==

正确的代码：

	int main()
	{
		int c;
		while ((c = getchar()) != EOF){
			if (c == '\t' || c == ' ')
				putchar('\n');
			else
				putchar(c);
		}
		return 0;
	}


错误的代码：

	int main()
	{
		int c;
		while ((c = getchar()) != EOF){
			if (c != '\t' || c != ' ')
				putchar(c);
			else
				putchar('\n');
		}
		return 0;
	}

原因分析：
根据if……else语句的判断，错误代码执行else必须满足，等于\t并且等于' '，这个显然是不可能的。因此出现问题。

正确的代码，则是在不等于\t和' '的情况下，直接输出字符，所以是正确的。

错误修正：

	int main()
	{
		int c;
		while ((c = getchar()) != EOF){
			if (c != '\t' && c != ' ')
				putchar(c);
			else
				putchar('\n');
		}
		return 0;
	}





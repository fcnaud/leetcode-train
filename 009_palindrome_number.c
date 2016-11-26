bool isPalindrome(int x) {
    if(x<0) return false;
    
    int* str = (int*)malloc(10 * sizeof(int));
    
    int cnt = 0;
    while(x)
    {
        str[cnt++] = x%10;
        x/=10;
    }
    for(int i=0; i<cnt/2; i++)
    {
        if(str[i]!=str[cnt-1-i]) return false;
    }
    return true;
}
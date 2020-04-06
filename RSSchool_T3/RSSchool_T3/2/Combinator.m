#import "Combinator.h"

@implementation Combinator
- (int) binomRecursiveBy:(int) n andBy: (int) k {
  
    if ((k==0) || (n==k))
    {return 1;}
    else
    {return ([self binomRecursiveBy: (n-1) andBy:(k)]+[self binomRecursiveBy:(n-1) andBy:(k-1)]);}
}

- (NSNumber*)chechChooseFromArray:(NSArray <NSNumber*>*)array {
    int c = [[array objectAtIndex:0] intValue];
    int realN = [[array objectAtIndex:1]intValue];
    int i = 1;
    while (i<=realN) {
         if ([self binomRecursiveBy: realN andBy:i] == c)
            return [NSNumber numberWithInt:(i)];
        i++;
    }
    return nil;
}
@end

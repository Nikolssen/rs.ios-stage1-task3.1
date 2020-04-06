#import "PolynomialConverter.h"

@implementation PolynomialConverter
- (NSString*)convertToStringFrom:(NSArray <NSNumber*>*)numbers {
    BOOL alreadyPrinted = NO;
    NSMutableString *result = [NSMutableString new];
    for (int degree = ([numbers count]-1); degree>=0; degree--) {
        int currentCoefficient = [[numbers objectAtIndex:([numbers count]-1 -degree)] intValue];
        NSMutableString *sign = [NSMutableString new];
        if (currentCoefficient<0){
            [sign appendString: @" - "];
        }
            else if (alreadyPrinted)
            [sign appendString: @" + "];
        
        switch (abs(currentCoefficient)) {
            case 0:
                {continue;
                break;}
            case 1:
                {
                    alreadyPrinted = YES;
                    switch (degree) {
                        case 0:
                        {
                            [result appendString:sign];
                            [result appendString:@"1"];
                            break;}
                            
                        case 1:
                        {
                            [result appendString: sign];
                            [result appendString:@"x"];
                            break;
                        }
                        default:
                        {   [result appendString:sign];
                            [result appendFormat:@"x^%d", degree ];
                            break;
                        }}
                            break;
                    
                }
            default:
            {   [result appendString: sign];
                alreadyPrinted = YES;
                
                    switch (degree) {
                    case 0:
                    {
                        [result appendFormat:@"%d", abs(currentCoefficient)];
                        break;}
                        
                    case 1:
                    {
                        
                        [result appendFormat:@"%dx", abs(currentCoefficient)];
                        break;
                    }
                    default:
                    {
                        [result appendFormat:@"%dx^%d", abs(currentCoefficient) ,degree ];
                        break;
                    }
                        
                }                break;
        }
        
        }}
    if ([numbers count]  == 0) return nil;
    return result;
    
    }
@end

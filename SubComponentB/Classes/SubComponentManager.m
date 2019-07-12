//
//  SubComponentManager.m
//  Pods-SubComponentC_Example
//
//  Created by 王磊 on 2019/7/10.
//

#import "SubComponentManager.h"
#import <MGJRouter/MGJRouter.h>
#import "SubComponentB.h"
#import <objc/runtime.h>
@implementation SubComponentManager : NSObject

+ (void)load
{
    [MGJRouter registerURLPattern:PRESENT_VIEWCONTROLLER_URL toHandler:^(NSDictionary *routerParameters) {
        SubComponentB *vc = [SubComponentB new];
        UIViewController *vc2 = routerParameters[MGJRouterParameterUserInfo][@"presentvc"];
        [vc2 presentViewController:vc animated:YES completion:nil];
    }];
    //经过验证，动态库的load方法也是执行的
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class aClass = [self class];
        
        SEL originalSelector = @selector(showLog);
        SEL swizzledSelector = @selector(showLog2);
        
        Method originalMethod = class_getClassMethod(aClass, originalSelector);
        Method swizzledMethod = class_getClassMethod(aClass, swizzledSelector);
        method_exchangeImplementations(originalMethod, swizzledMethod);
    });
}
+(void)showLog{
    
    NSLog(@"你使用了我们的静态库");
}

+(void)showLog2{
    
    NSLog(@"hi,你使用了我们的被hook的静态库");
}
@end

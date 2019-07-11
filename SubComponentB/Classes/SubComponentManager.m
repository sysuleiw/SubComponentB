//
//  SubComponentManager.m
//  Pods-SubComponentC_Example
//
//  Created by 王磊 on 2019/7/10.
//

#import "SubComponentManager.h"
#import <MGJRouter/MGJRouter.h>
#import "SubComponentB.h"
@implementation SubComponentManager : NSObject

+ (void)load
{
    [MGJRouter registerURLPattern:PRESENT_VIEWCONTROLLER_URL toHandler:^(NSDictionary *routerParameters) {
        SubComponentB *vc = [SubComponentB new];
        UIViewController *vc2 = routerParameters[MGJRouterParameterUserInfo][@"presentvc"];
        [vc2 presentViewController:vc animated:YES completion:nil];
    }];
}
@end

//
//  GQWeakProxy.h
//  TestDemo
//
//  Created by Lois_pan on 17/3/30.
//  Copyright © 2017年 Lois_pan. All rights reserved.
//

#import <Foundation/Foundation.h>


//源码YYKit https://github.com/ibireme/YYKit/blob/master/YYKit/Utility/YYWeakProxy.h

NS_ASSUME_NONNULL_BEGIN

/** A proxy used to hold a weak object  It can be used avoid retain cycles, such as the target in NSTimer or CADisplayLink

     sample code:
     
     @implementation MyView {
     NSTimer *_timer;
     }
     
     - (void)initTimer {
     YYWeakProxy *proxy = [YYWeakProxy proxyWithTarget:self];
     _timer = [NSTimer timerWithTimeInterval:0.1 target:proxy selector:@selector(tick:) userInfo:nil repeats:YES];
     }
     
     - (void)tick:(NSTimer *)timer {...}
     @end
 */
@interface GQWeakProxy : NSObject

//proxy target
@property (nullable, nonatomic, weak, readonly) id target;

//


@end
NS_ASSUME_NONNULL_END

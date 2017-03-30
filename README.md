# GQWeakProxy

A proxy used to hold a weak object It can be used avoid retain cycles, such as the target in NSTimer or CADisplayLink

[源码YYKit](https://github.com/ibireme/YYKit/blob/master/YYKit/Utility/YYWeakProxy.h)

`
@implementation MyView {
  NSTimer *_timer;
}

-(void)initTimer {
  YYWeakProxy *proxy = [YYWeakProxy proxyWithTarget:self];
  _timer = [NSTimer timerWithTimeInterval:0.1 target:proxy selector:@selector(tick:) userInfo:nil repeats:YES];
}

-(void)tick:(NSTimer *)timer {...}
@end
`



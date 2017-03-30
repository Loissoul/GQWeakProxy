//
//  GQWeakProxy.m
//  TestDemo
//
//  Created by Lois_pan on 17/3/30.
//  Copyright © 2017年 Lois_pan. All rights reserved.
//

#import "GQWeakProxy.h"

@implementation GQWeakProxy

- (instancetype)initWithTarget:(id)target {

    _target = target;
    return self;
}

+ (instancetype)proxyWithTarget:(id)target {

    return [[GQWeakProxy alloc] initWithTarget:target];
}

- (id)forwardingTargetForSelector:(SEL)aSelector {

    return _target;
}

- (void)forwardInvocation:(NSInvocation *)anInvocation {

    void * null = NULL;
    [anInvocation setReturnValue: &null];
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {

    return [NSObject instanceMethodSignatureForSelector:@selector(init)];
}

- (BOOL)respondsToSelector:(SEL)aSelector {

    return [_target respondsToSelector:aSelector];
}

- (BOOL)isEqual:(id)object {

    return [_target isEqual:object];
}

- (NSUInteger)hash {

    return [_target hash];
}

- (Class)superclass {

    return [_target superclass];
}

- (Class)class {

    return [_target class];
}

- (BOOL)isMemberOfClass:(Class)aClass {
    return [_target isMemberOfClass:aClass];
}

- (BOOL)conformsToProtocol:(Protocol *)aProtocol {

    return [_target conformsToProtocol:aProtocol];
}

- (BOOL)isProxy {

    return YES;
}

- (NSString *)description {

    return [_target description];
}

- (NSString *)debugDescription {

    return [_target debugDescription];
}

















@end

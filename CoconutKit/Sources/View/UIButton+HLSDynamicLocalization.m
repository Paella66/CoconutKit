//
//  UIButton+HLSDynamicLocalization.m
//  CoconutKit
//
//  Created by Samuel Défago on 1/26/13.
//  Copyright (c) 2013 Hortis. All rights reserved.
//

#import "UIButton+HLSDynamicLocalization.h"

// Keys for associated objects
static void *s_localizationTableNameKey = &s_localizationTableNameKey;
static void *s_localizationBundleNameKey = &s_localizationBundleNameKey;

@implementation UIButton (HLSDynamicLocalization)

#pragma mark Accessors and mutators

- (NSString *)locTable
{
    return objc_getAssociatedObject(self, s_localizationTableNameKey);
}

- (void)setLocTable:(NSString *)locTable
{
    objc_setAssociatedObject(self, s_localizationTableNameKey, locTable, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)locBundle
{
    return objc_getAssociatedObject(self, s_localizationBundleNameKey);
}

- (void)setLocBundle:(NSString *)locBundle
{
    objc_setAssociatedObject(self, s_localizationBundleNameKey, locBundle, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
//
//  MWBrowsePhotoHelper.h
//  XGDevelopDemo
//
//  Created by sunyongguang on 2017/10/19.
//  Copyright © 2017年 小广. All rights reserved.
//  浏览大图Helper

#import <Foundation/Foundation.h>

@interface MWBrowsePhotoHelper : NSObject

/**
 浏览大图方法
 
 @param images 图片数组
 @param index 当前显示第几张
 @param controller 容器
 */
+ (void)showBigImages:(NSArray *)images currentIndex:(NSInteger)index controller:(UIViewController *)controller;

@end

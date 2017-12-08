//
//  UIImage+MWPhotoBrowser.h
//  Pods
//
//  Created by Michael Waterfall on 05/07/2015.
//
//

#import <Foundation/Foundation.h>

@interface UIImage (MWPhotoBrowser)

/// 加载图片
+ (UIImage *)imageForBundleImageName:(NSString *)name;

+ (UIImage *)clearImageWithSize:(CGSize)size;

/// 根据颜色和大小生成image
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;

@end

//
//  UIImage+MWPhotoBrowser.m
//  Pods
//
//  Created by Michael Waterfall on 05/07/2015.
//
//

#import "UIImage+MWPhotoBrowser.h"

@implementation UIImage (MWPhotoBrowser)

+ (UIImage *)imageForBundleImageName:(NSString *)name {
    
    UIImage *image = [UIImage imageNamed:[@"MWPhotoBrowserHelper.bundle" stringByAppendingPathComponent:name]];
    if (image) {
        return image;
    } else {
        image = [UIImage imageNamed:[@"Frameworks/MWPhotoBrowserHelper.framework/MWPhotoBrowserHelper.bundle/images" stringByAppendingPathComponent:name]];
        if (image) {
            return image;
        } else {
            image = [UIImage imageNamed:name];
            return image;
        }
    }
}

+ (UIImage *)clearImageWithSize:(CGSize)size {
    UIGraphicsBeginImageContextWithOptions(size, NO, [UIScreen mainScreen].scale);
    UIImage *blank = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return blank;
}

/// 根据颜色和大小生成image
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size {
    NSParameterAssert(color);
    NSAssert(!CGSizeEqualToSize(size, CGSizeZero), @"Size cannot be CGSizeZero");
    
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    
    // Create a context depending on given size
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    
    // Fill it with your color
    [color setFill];
    UIRectFill(rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}


@end

//
//  MWBrowsePhotoHelper.m
//  XGDevelopDemo
//
//  Created by sunyongguang on 2017/10/19.
//  Copyright © 2017年 小广. All rights reserved.
//

#import "MWBrowsePhotoHelper.h"
#import "MWPhotoBrowser.h"

@interface MWBrowsePhotoHelper () <MWPhotoBrowserDelegate>

@property (nonatomic, assign) NSInteger index;
@property (nonatomic, strong) UIViewController *controller;
@property (nonatomic, strong) MWPhotoBrowser *browser;
@property (nonatomic, copy) NSArray *photos;

@end


@implementation MWBrowsePhotoHelper

// 单例
+ (instancetype)shareInstance {
    
    static MWBrowsePhotoHelper *helper = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        helper = [[MWBrowsePhotoHelper alloc] init];
    });
    return helper;
}

+ (void)showBigImages:(NSArray *)images currentIndex:(NSInteger)index controller:(UIViewController *)controller {
    
    [[MWBrowsePhotoHelper shareInstance] initWithPhotos:images index:index controller:controller];
    
}

- (void)initWithPhotos:(NSArray *)photos
                 index:(NSInteger)index
            controller:(UIViewController *)controller {
    
    self.photos = photos;
    self.index = index;
    self.controller = controller;
    
    self.browser = [[MWPhotoBrowser alloc] initWithDelegate:self];
    // 选中的按钮(右上角)
    self.browser.displaySelectionButtons = NO;
    // 导航条底部的tabbar是否一直显示
    self.browser.alwaysShowControls = NO;
    // 放大以填充
    self.browser.zoomPhotosToFill = YES;
    // 是否允许查看所有图片缩略图的网格
    self.browser.enableGrid = NO;
    self.browser.enableSwipeToDismiss = NO;
    [self.browser showNextPhotoAnimated:YES];
    [self.browser showPreviousPhotoAnimated:YES];
    [self.browser setCurrentPhotoIndex:self.index];
    
    UINavigationController *navVC = [[UINavigationController alloc] initWithRootViewController:self.browser];
    self.browser.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [controller presentViewController:navVC animated:YES completion:nil];
    
}

#pragma mark - MWPhotoBrowserDelegate

- (NSUInteger)numberOfPhotosInPhotoBrowser:(MWPhotoBrowser *)photoBrowser {
    return self.photos.count;
}

- (id <MWPhoto>)photoBrowser:(MWPhotoBrowser *)photoBrowser photoAtIndex:(NSUInteger)index {
    MWPhoto *photo = nil;
    id object = self.photos[index];
    if ([object isKindOfClass:[UIImage class]]) {
        photo = [MWPhoto photoWithImage:(UIImage *)object];
    } else {
        if ([object isKindOfClass:[NSString class]]) {
            photo = [MWPhoto photoWithURL:[NSURL URLWithString:object]];
        }
    }
    return photo;
}

@end

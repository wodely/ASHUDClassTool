//
//  ASHUDClassTool.m
//  hxxdj
//
//  Created by 刘 on 2019/10/25.
//  Copyright © 2019 aisino. All rights reserved.
//

#import "ASHUDClassTool.h"
#import "UIImage+GIF.h"
@implementation ASHUDClassTool

+ (void)show{
    dispatch_async(dispatch_get_main_queue(), ^{
        [MBProgressHUD hideHUDForView:AS_Toast_KeyWindow animated:YES];
        [MBProgressHUD showHUDAddedTo:AS_Toast_KeyWindow animated:YES];;
    });
}

+ (void)showInfo:(NSString *)msg{
    dispatch_async(dispatch_get_main_queue(), ^{
        // UI更新代码
        [MBProgressHUD hideHUDForView:AS_Toast_KeyWindow animated:YES];
        MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:AS_Toast_KeyWindow animated:YES];;
        hud.detailsLabel.text = msg;
        hud.mode = MBProgressHUDModeIndeterminate;
        hud.margin = 15;
        hud.detailsLabel.font = [UIFont systemFontOfSize:15];
    });
}

+ (void)showInfoWithStatus:(NSString *)msg{
    dispatch_async(dispatch_get_main_queue(), ^{
        [MBProgressHUD hideHUDForView:AS_Toast_KeyWindow animated:YES];
        MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:AS_Toast_KeyWindow animated:YES];
        hud.detailsLabel.text = msg;
        hud.margin = 15;
        hud.detailsLabel.font = [UIFont systemFontOfSize:15];;
        hud.mode = MBProgressHUDModeText;
        dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, 2 * NSEC_PER_SEC);
        dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
            [MBProgressHUD hideHUDForView:AS_Toast_KeyWindow animated:YES];
        });
    });
}

+ (void)showErrorWithMsg:(NSString *)msg{
    
    dispatch_async(dispatch_get_main_queue(), ^{
        [MBProgressHUD hideHUDForView:AS_Toast_KeyWindow animated:YES];
        MBProgressHUD *hud =  [MBProgressHUD showHUDAddedTo:AS_Toast_KeyWindow animated:YES];;
        UIImageView *imgView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 37, 37)];
        imgView.image = [self getImageWith:@"HUDClassTool.bundle/images/error@2x.png"];
        hud.customView = imgView;
        hud.detailsLabel.text = msg;
        hud.mode = MBProgressHUDModeCustomView;
        dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, 2 * NSEC_PER_SEC);
        dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
            // Do something...
            [MBProgressHUD hideHUDForView:AS_Toast_KeyWindow animated:YES];
            
        });
    });
}

+ (void)showSuccessWithMsg:(NSString *)msg{
    dispatch_async(dispatch_get_main_queue(), ^{
        [MBProgressHUD hideHUDForView:AS_Toast_KeyWindow animated:YES];
        MBProgressHUD *hud =  [MBProgressHUD showHUDAddedTo:AS_Toast_KeyWindow animated:YES];;
        UIImageView *imgView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 37, 37)];
        imgView.image =  [self getImageWith:@"HUDClassTool.bundle/images/success@2x.png"];;
        hud.customView = imgView;
        hud.detailsLabel.text = msg;
        hud.mode = MBProgressHUDModeCustomView;
        dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, 2 * NSEC_PER_SEC);
        dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
            // Do something...
            [MBProgressHUD hideHUDForView:AS_Toast_KeyWindow animated:YES];
        });
    });
}

+(void)showSuccessWithMsg:(NSString *)msg withDelayw:(NSTimeInterval)timer completion:(completionBlock)completion{
    dispatch_async(dispatch_get_main_queue(), ^{
        [MBProgressHUD hideHUDForView:AS_Toast_KeyWindow animated:YES];
        MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:AS_Toast_KeyWindow animated:YES];
        UIImageView *imgView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 37, 37)];
        
        imgView.image = [self getImageWith:@"HUDClassTool.bundle/images/success@2x.png"];
        hud.customView = imgView;
        hud.detailsLabel.text = msg;
        hud.mode = MBProgressHUDModeCustomView;
        dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, timer * NSEC_PER_SEC);
        dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
            // Do something...
            completion();
            [MBProgressHUD hideHUDForView:AS_Toast_KeyWindow animated:YES];
          
            
        });
    });
}

+ (void)showMsgOnbottom:(NSString *)msg{
    
    [MBProgressHUD hideHUDForView:AS_Toast_KeyWindow animated:YES];
     MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:AS_Toast_KeyWindow animated:YES];
     hud.detailsLabel.text = msg;
     hud.margin = 10;
     hud.detailsLabel.font = [UIFont systemFontOfSize:15];;
     hud.mode = MBProgressHUDModeText;
     hud.offset = CGPointMake(0.f, AS_Toast_SCREENHEIGHT/2 -64);
     dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, 2 * NSEC_PER_SEC);
     dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        [MBProgressHUD hideHUDForView:AS_Toast_KeyWindow animated:YES];
    });
    
    
}

+ (UIImage*)getImageWith:(NSString *)name{
    
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"HUDClassTool" withExtension:@"bundle"];
    if (!url) {
        /// 动态库 url 的获取
        url = [[NSBundle bundleForClass:[self class]] URLForResource:@"HUDClassTool" withExtension:@"bundle"];
    }
    NSBundle *bundle = [NSBundle bundleWithURL:url];
    
    return  [UIImage imageNamed:name inBundle:bundle compatibleWithTraitCollection:nil];
}

+ (void)dismiss{
    dispatch_async(dispatch_get_main_queue(), ^{
        [MBProgressHUD hideHUDForView:AS_Toast_KeyWindow animated:YES];
    });
   
}


@end

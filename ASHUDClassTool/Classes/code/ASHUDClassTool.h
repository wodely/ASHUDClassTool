//
//  ASHUDClassTool.h
//  hxxdj
//
//  Created by 刘 on 2019/10/25.
//  Copyright © 2019 aisino. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MBProgressHUD/MBProgressHUD.h>
#define AS_Toast_KeyWindow  [UIApplication sharedApplication].keyWindow
#define AS_Toast_SCREENHEIGHT   ([UIScreen mainScreen].bounds.size.height)
NS_ASSUME_NONNULL_BEGIN
typedef void  (^completionBlock)(void);
@interface ASHUDClassTool : NSObject

@property (nonatomic,strong) MBProgressHUD *hud;

/*
 * 加载HUD 调用后需调用dismiss方法
 */
+(void)show;

/*
 * hud 消失
 */
+(void)dismiss;



/*
 *  toast 提示 需传入 msg 默认显示时间为2s
 */
+(void)showInfoWithStatus:(NSString *)msg;


/*
*  toast 提示 需传入 msg 默认显示时间为2s 底部
*/
+ (void)showMsgOnbottom:(NSString *)msg;


/*
 *  toast 提示 调用后需调用dismiss方法
 */

+(void)showInfo:(NSString *)msg;

/*
 *  toast 错误提示 需传入 msg 默认显示时间为2s
 */

+(void)showErrorWithMsg:(NSString *)msg;

/*
 *  toast 成功 需传入 msg 默认显示时间为2s
 */

+(void)showSuccessWithMsg:(NSString *)msg ;


+(void)showSuccessWithMsg:(NSString *)msg withDelayw:(NSTimeInterval)timer completion:(completionBlock)completion;


@end

NS_ASSUME_NONNULL_END

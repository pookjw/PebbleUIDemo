#ifndef CNAVATARVIEWCONTROLLERSOFTLINK_H
#define CNAVATARVIEWCONTROLLERSOFTLINK_H

#import <UIKit/UIKit.h>

@class CNAvatarViewController;

@interface CNAvatarViewControllerSoftLink : UIViewController
@property (copy, nonatomic) CNAvatarViewController *avatarViewController;
@property (copy, nonatomic) NSArray *contacts;
- (instancetype)initWithPersonaId:(id)personaId;
@end

#endif

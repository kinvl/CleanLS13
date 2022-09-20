#import <UIKit/UIKit.h>

@class SBUserAgent;
SBUserAgent *userAgent;

@interface SBUserAgent
-(BOOL)launchFromSource:(int)arg1 withURL:(id)arg2 bundleID:(id)arg3 allowUnlock:(BOOL)arg4;
@end

@interface UIImage (Private)
+(instancetype)_applicationIconImageForBundleIdentifier:(NSString*)bundleIdentifier format:(int)format scale:(CGFloat)scale;
@end

void launchApp(NSString* bundleId);
UIImage* appIconForBundleId(NSString* bundleId);

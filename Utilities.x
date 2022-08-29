#import "Utilities.h"

SBUserAgent *userAgent;

void launchApp(NSString* bundleId)
{
    [userAgent launchFromSource:0 withURL:nil bundleID:bundleId allowUnlock:YES];
}

UIImage* appIconForBundleId(NSString* bundleId)
{
    // `format:0` returns a 29x29 image; format:1` returns a 40x40 image; `format:2` returns a 62x62 image
    return [UIImage _applicationIconImageForBundleIdentifier:bundleId format:0 scale:[UIScreen mainScreen].scale];
}

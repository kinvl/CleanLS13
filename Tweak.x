#import "Tweak.h"
#define PREFS_PATH @"/var/mobile/Library/Preferences/com.kinvl.cleanls13prefs.plist"

inline bool boolForPrefsEntry(NSString *key) {
    return [[[NSDictionary dictionaryWithContentsOfFile:PREFS_PATH] valueForKey:key] boolValue];
    
}


%hook SBUIProudLockIconView

-(void)didMoveToWindow {
    if(boolForPrefsEntry(@"hidePadlock")) {
        [self setHidden:YES];
        
    }
    
    %orig;
    
}

%end


%hook SBFLockScreenDateSubtitleDateView

-(void)layoutSubviews {
    UILabel *subtitleDateLabel;
    
    if(boolForPrefsEntry(@"shrinkDate")) {
        subtitleDateLabel = self.subviews[0];
        subtitleDateLabel.font = [UIFont systemFontOfSize:14.0];
        
    }
    
    %orig;
    
}

%end


%hook CSTeachableMomentsContainerView

-(void)_addCallToActionLabel {
    if(boolForPrefsEntry(@"hideUnlockText") == NO) {
        %orig;
        
    }
    
}

%end

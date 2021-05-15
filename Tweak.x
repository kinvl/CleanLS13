#import "Tweak.h"

%hook CSTeachableMomentsContainerView

-(void)_addCallToActionLabel {

}
%end


%hook SBUIProudLockIconView

-(void)didMoveToWindow {

    %orig;
    [self setHidden:YES];
}
%end

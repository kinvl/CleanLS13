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

%hook SBFLockScreenDateSubtitleDateView

UILabel *subtitleDateLabel;

-(void)layoutSubviews {
    subtitleDateLabel = self.subviews[0];
    subtitleDateLabel.font = [UIFont systemFontOfSize:14.0];
    //self.hidden = NO;
    %orig;

}

%end

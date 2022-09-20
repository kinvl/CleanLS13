#import "PrivateHeaders.h"
#import "Preferences.h"
#import "Utilities.h"

%group Customization
    %hook SBUIProudLockIconView
    -(void)didMoveToWindow
    {
        if(is_padlock_hidden())
            [self setHidden:YES];

        %orig;
    }
    %end

    %hook SBFLockScreenDateSubtitleDateView
    -(void)layoutSubviews
    {
        if(is_date_size_adjusted())
        {
            for(id subview in self.subviews)
            {
                if([subview isKindOfClass:[%c(SBUILegibilityLabel) class]])
                {
                    UILabel *subtitleDateLabel = subview;
                    CGFloat fontSize = date_font_size();
                    subtitleDateLabel.font = [UIFont systemFontOfSize:fontSize];
                }
            }
        }
        
        %orig;
    }
    %end

    %hook CSTeachableMomentsContainerView
    -(void)_addCallToActionLabel
    {
        if(!is_call_to_action_hidden())
            %orig;
    }
    %end
%end

%group QuickActions
    %hook SBUserAgent
    -(id)init
    {
        return userAgent = %orig;
    }
    %end

    %hook CSQuickActionsViewController
    -(void)_toggleFlashlight
    {
        if(is_left_qa_enabled())
             launchApp(left_app_bundleId());
        else
            %orig;
    }

    -(void)_launchCamera
    {
        if(is_right_qa_enabled())
            launchApp(right_app_bundleId());
        else
            %orig;
    }
    %end

    %hook CSQuickActionsView
    -(id)flashlightButton
    {
        CSQuickActionsButton *flashlightButton = %orig;

        if(is_left_qa_hidden())
            [flashlightButton setHidden:YES];

        if(!is_left_qa_enabled())
            return flashlightButton;

        UIImage *icon = appIconForBundleId(left_app_bundleId());
        [flashlightButton setImage:icon];

        return flashlightButton;
    }

    -(id)cameraButton
    {
        CSQuickActionsButton *cameraButton = %orig;

        if(is_right_qa_hidden())
            [cameraButton setHidden:YES];

        if(!is_right_qa_enabled())
            return cameraButton;

        UIImage *icon = appIconForBundleId(right_app_bundleId());
        [cameraButton setImage:icon];

        return cameraButton;
    }
    %end

    %hook CSQuickActionsButton
    // Prevent flashlight button from being toggled i.e. changing appearance to selected
    -(void)setSelected:(BOOL)isSelected
    {
        if(!is_left_qa_enabled())
            %orig;
    }
    %end
%end

%ctor 
{
    preferences = [[HBPreferences alloc] initWithIdentifier:@"com.kinvl.cleanls13prefs"];

    if(are_customizations_enabled())
        %init(Customization)

    if(are_quick_actions_enabled()) 
        %init(QuickActions)
}

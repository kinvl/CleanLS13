#import "Preferences.h"

/*** Quick Actions ***/
BOOL are_quick_actions_enabled()
{
    return is_left_qa_enabled() || is_left_qa_hidden() || is_right_qa_enabled() || is_right_qa_hidden();
}

BOOL is_left_qa_enabled()
{
    return [preferences boolForKey:IS_LEFT_QA_ENABLED];
}

BOOL is_left_qa_hidden()
{
    return [preferences boolForKey:IS_LEFT_QA_HIDDEN];
}
NSString* left_app_bundleId()
{
    return [preferences objectForKey:LEFT_APPLICATION_KEY];
}

BOOL is_right_qa_enabled()
{
    return [preferences boolForKey:IS_RIGHT_QA_ENABLED];
}

BOOL is_right_qa_hidden()
{
    return [preferences boolForKey:IS_RIGHT_QA_HIDDEN];   
}

NSString* right_app_bundleId()
{
    return [preferences objectForKey:RIGHT_APPLICATION_KEY];
}

/*** Customizations ***/
BOOL are_customizations_enabled()
{
    return is_padlock_hidden() || is_date_size_adjusted() || is_call_to_action_hidden();
}

BOOL is_padlock_hidden()
{
    return [preferences boolForKey:IS_PADLOCK_HIDDEN];
}

BOOL is_date_size_adjusted()
{
    return [preferences boolForKey:IS_DATE_SIZE_ADJUSTED];
}

BOOL is_call_to_action_hidden()
{
    return [preferences boolForKey:IS_CALL_TO_ACTION_HIDDEN];
}

/*** Miscellaneous ***/
CGFloat date_font_size()
{
    return [preferences floatForKey:DATE_FONT_SIZE];
}

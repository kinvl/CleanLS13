#import <Cephei/HBPreferences.h>
#import "Defines.h"

HBPreferences *preferences;

BOOL are_quick_actions_enabled();
BOOL is_left_qa_enabled();
BOOL is_left_qa_hidden();
NSString* left_app_bundleId();
BOOL is_right_qa_enabled();
BOOL is_right_qa_hidden();
NSString* right_app_bundleId();

BOOL are_customizations_enabled();
BOOL is_padlock_hidden();
BOOL is_date_size_adjusted();
BOOL is_call_to_action_hidden();

CGFloat date_font_size();

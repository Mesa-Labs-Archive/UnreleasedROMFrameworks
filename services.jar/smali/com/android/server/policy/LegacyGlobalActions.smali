.class Lcom/android/server/policy/LegacyGlobalActions;
.super Ljava/lang/Object;
.source "LegacyGlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/LegacyGlobalActions$10;,
        Lcom/android/server/policy/LegacyGlobalActions$11;,
        Lcom/android/server/policy/LegacyGlobalActions$12;,
        Lcom/android/server/policy/LegacyGlobalActions$13;,
        Lcom/android/server/policy/LegacyGlobalActions$1;,
        Lcom/android/server/policy/LegacyGlobalActions$2;,
        Lcom/android/server/policy/LegacyGlobalActions$3;,
        Lcom/android/server/policy/LegacyGlobalActions$4;,
        Lcom/android/server/policy/LegacyGlobalActions$5;,
        Lcom/android/server/policy/LegacyGlobalActions$6;,
        Lcom/android/server/policy/LegacyGlobalActions$7;,
        Lcom/android/server/policy/LegacyGlobalActions$8;,
        Lcom/android/server/policy/LegacyGlobalActions$9;,
        Lcom/android/server/policy/LegacyGlobalActions$Action;,
        Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;,
        Lcom/android/server/policy/LegacyGlobalActions$ConfirmDialogReceiver;,
        Lcom/android/server/policy/LegacyGlobalActions$ExtractColor;,
        Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;,
        Lcom/android/server/policy/LegacyGlobalActions$LongPressAction;,
        Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;,
        Lcom/android/server/policy/LegacyGlobalActions$PowerAction;,
        Lcom/android/server/policy/LegacyGlobalActions$SilentModeAction;,
        Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;,
        Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;,
        Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;
    }
.end annotation


# static fields
.field public static final ACTION_BIXBY_GLOBAL_ACTIONS:Ljava/lang/String; = "com.intent.action.BIXBY_GLOBAL_ACTIONS"

.field private static final ACTION_CLEAR_COVER_STATE_CHANGE:Ljava/lang/String; = "com.samsung.cover.STATE_CHANGE"

.field private static final ACTION_KEYGUARD_STATE_UPDATE:Ljava/lang/String; = "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

.field private static final ACTION_NETWORK_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.NETWORK_MODE_CHANGED"

.field public static final ACTION_SHOW_GLOBAL_ACTIONS:Ljava/lang/String; = "android.intent.action.SHOW_GLOBAL_ACTIONS"

.field private static final ACTION_STATUS_EXPAND:Ljava/lang/String; = "com.android.systemui.statusbar.EXPANDED"

.field private static final ACTION_TALKBACK_TOGGLED:Ljava/lang/String; = "com.samsung.settings.action.talkback_toggled"

.field private static final COUNTRY_CODE:Ljava/lang/String;

.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final FORCE_RESTART_TIME:I = 0x7

.field private static final GLOBALACTIONS_MSG_DELAY:I = 0x96

.field private static final GLOBAL_ACTION_KEY_AIRPLANE:Ljava/lang/String; = "airplane"

.field private static final GLOBAL_ACTION_KEY_ASSIST:Ljava/lang/String; = "assist"

.field private static final GLOBAL_ACTION_KEY_BUGREPORT:Ljava/lang/String; = "bugreport"

.field private static final GLOBAL_ACTION_KEY_DATAMODE:Ljava/lang/String; = "datamode"

.field private static final GLOBAL_ACTION_KEY_EMERGENCYMODE:Ljava/lang/String; = "emergencymode"

.field private static final GLOBAL_ACTION_KEY_LOCKDOWN:Ljava/lang/String; = "lockdown"

.field private static final GLOBAL_ACTION_KEY_POWER:Ljava/lang/String; = "power"

.field private static final GLOBAL_ACTION_KEY_RESTART:Ljava/lang/String; = "restart"

.field private static final GLOBAL_ACTION_KEY_SETTINGS:Ljava/lang/String; = "settings"

.field private static final GLOBAL_ACTION_KEY_SILENT:Ljava/lang/String; = "silent"

.field private static final GLOBAL_ACTION_KEY_SUBSCREEN:Ljava/lang/String; = "subscreen"

.field private static final GLOBAL_ACTION_KEY_USERS:Ljava/lang/String; = "users"

.field private static final GLOBAL_ACTION_KEY_VOICEASSIST:Ljava/lang/String; = "voiceassist"

.field private static final INSERT_LOG_TAG:Ljava/lang/String; = "com.android.service.GlobalAction"

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_HIDE_CONFIRM_LANDSCAPE:I = 0x7

.field private static final MESSAGE_HIDE_CONFIRM_PORTRAIT:I = 0x6

.field private static final MESSAGE_HIDE_DECORVIEW:I = 0xc

.field private static final MESSAGE_HIDE_QUICKPANEL:I = 0x4

.field private static final MESSAGE_ONCLICK_ITEM_WITH_BIXBY:I = 0xa

.field private static final MESSAGE_ONCLICK_WITH_SECURE_POWEROFF:I = 0x9

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_REFRESH_AIRPLANEMODE:I = 0x3

.field private static final MESSAGE_REFRESH_RINGER:I = 0x5

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final MESSAGE_SHOW_CONFIRM_BY_ORIENTATION:I = 0x8

.field private static final PRODUCT_NAME:Ljava/lang/String;

.field private static final SAFE_DEBUG:Z

.field private static final SALES_CODE:Ljava/lang/String;

.field private static final SCAFE:Ljava/lang/String;

.field private static final SEP_VERSION_8_1:I = 0x138e4

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final SUPPORT_FORCE_RESTART:Z

.field private static final SURVEY_LOG:Z

.field private static final TAG:Ljava/lang/String; = "LegacyGlobalActions"

.field public static mHandlerStack:[Ljava/lang/String;

.field public static mInstanceInfo:[Ljava/lang/String;

.field private static mPasscodeEditText:Landroid/widget/EditText;

.field private static mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private static mProKioskMenuPosition:I

.field private static mProKioskOptionShown:Z

.field private static sAccessibilityShortcutEnabled:Z

.field private static sCurrentDensity:I

.field private static sHasVibrator:Z

.field private static sIsAirplaneConfirmDialogExist:Z

.field private static sIsClearCover:Z

.field private static sIsClearCoverClosed:Z

.field private static sIsConfirmDlg:Z

.field private static sIsConfirming:Z

.field private static final sIsConfirmingGuard:Ljava/lang/Object;

.field private static sIsCoverOpen:Z

.field private static sIsGraceR:Z

.field private static sIsNeedWhiteTheme:Z

.field private static sIsSViewCoverClosed:Z

.field private static sIsSecondConfirming:Z

.field private static sMessageViewColorWhite:I

.field private static sMessageViewTextSize:I

.field private static sResource:Landroid/content/res/Resources;

.field private static sSCoverRequestStatus:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSilentModeView:Landroid/view/View;

.field private static sStatusViewColorWhite:I

.field private static sStatusViewTextSize:I

.field private static sSupportBlackWhiteTheme:Z


# instance fields
.field private final BIKE_MODE_PACKAGE_NAME:Ljava/lang/String;

.field private final BLUR_DIM_AMOUNT:F

.field private final CONFIRM_DARK_OPACITY:I

.field private final CONFIRM_WHITE_OPACITY:I

.field private final DEFAULT_DARK_OPACITY:I

.field private final DEFAULT_WHITE_OPACITY:I

.field private final DO_NOT_MOVE:I

.field private final FORCE_RESTART_MAX_FONT_SCALE:F

.field private final INTERVAL_SCOVER_TRANSITION:I

.field private final MAX_WIDTH_RATIO:F

.field private final SUPPORT_BIKEMODE_ACTION:Z

.field private final SUPPORT_DATAMODE_ACTION:Z

.field private final bgTouchListener:Landroid/view/View$OnTouchListener;

.field private mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

.field private mAirplaneModeAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

.field mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

.field mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneMsg:Landroid/widget/TextView;

.field private mAirplaneState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBikeModeAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

.field private mBikeModeDialog:Landroid/app/AlertDialog;

.field private mBikeModeObserver:Landroid/database/ContentObserver;

.field private mBixbyReceiver:Landroid/content/BroadcastReceiver;

.field private mBottomLayout:Landroid/widget/LinearLayout;

.field private mBottomViewSingleItemHeight:I

.field private mBottomViewSingleItemWidth:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBugReport:Landroid/widget/Button;

.field private mCancelButton:Landroid/widget/Button;

.field private mConfirmDialog:Landroid/app/AlertDialog;

.field private mConfirmDialogReceiver:Lcom/android/server/policy/LegacyGlobalActions$ConfirmDialogReceiver;

.field private mConfirmPowerOffIconResId:I

.field private mConfirmRestartIconResId:I

.field private mConfirmSViewCoverDialog:Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mCurrentPositionXLand:F

.field private mCurrentPositionY:F

.field private mCurrentPositionYLand:F

.field private mDataModeAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

.field mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDataNetworkState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

.field private mDescriptionLayout:Landroid/widget/LinearLayout;

.field private mDesktopModeEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

.field private mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

.field private mDisplayConfirm:Z

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mDontShowCheckbox:Landroid/widget/CheckBox;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mEmergencyAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

.field private mEmergencyIconResId:I

.field private mEmergencyState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

.field private mForceRestartLayout:Landroid/widget/LinearLayout;

.field private mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mIsBugReportEnable:Z

.field private mIsConfirmPowerOffOnClearCover:Z

.field private mIsConfirmRestartOnClearCover:Z

.field private mIsDisableConfirm:Z

.field private mIsFirstCreated:Z

.field private mIsInitWidthHeight:Z

.field private mIsItemLongPressed:Z

.field private mIsSafeModeEnabled:Z

.field private mIsScreenOFF:Z

.field private mIsSecureKeyguard:Z

.field private mIsSelectedItemTagForBixby:I

.field private mIsSelectedItemTagForSecure:I

.field private mIsSetAirplaneOnMessageCHINA:Z

.field private mIsSetAirplaneOnMessageVZW:Z

.field private mIsShopDemo:Z

.field private mIsTablet:Z

.field private mIsVZWOperatorAirplaneModeONReasonUSB3:Z

.field private mIsWaitingForEcmExit:Z

.field private mItemDivider:I

.field private mItemDividerLand:I

.field private mItemHeight:I

.field private mItemLandscapeDivider:I

.field private mItemMaxWidth:I

.field private mItemMaxWidthForClearCoverClosed:I

.field private mItemMaxWidthForSViewCoverClosed:I

.field private mItemMaxWidthLand:I

.field private mItemPortraitDivider:I

.field private mItemPortraitDividerOverFour:I

.field private mItemPortraitDividerSViewCover:I

.field private mItemWidth:I

.field private mItemWidthLand:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/LegacyGlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeyguardShowing:Z

.field private mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

.field private mLandscapeLinearLayout:Landroid/widget/LinearLayout;

.field private mLayout:Landroid/widget/LinearLayout;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mMSimServiceState:[I

.field private mMessageViewPaddingBottom:I

.field private mMessageViewPaddingTop:I

.field private final mOnDismiss:Ljava/lang/Runnable;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPetNameIcon:Landroid/widget/ImageView;

.field private mPetNameLayout:Landroid/widget/LinearLayout;

.field private mPhoneCount:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerOffIconResId:I

.field private mProKioskAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

.field private mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

.field private mRestartAction:Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;

.field private mRestartIconResId:I

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mSafeModeIconResId:I

.field private mScrollview:Landroid/widget/ScrollView;

.field private mSecureLockReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectedItemNumbyBixby:I

.field private mSelectedItemView:Landroid/view/View;

.field private mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

.field private mShowNavigationBar:Z

.field private mShowOnAirplaneConfirm:Z

.field private final mShowSilentToggle:Z

.field private mSilentModeAction:Lcom/android/server/policy/LegacyGlobalActions$SilentModeAction;

.field private mSubScreenAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

.field private mSubScreenState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTrueStringArray:[Ljava/lang/String;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mWindow:Landroid/view/Window;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private sBugReportStatusViewColorWhite:I

.field private final scrollViewTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions;->COUNTRY_CODE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/LegacyGlobalActions;->SAFE_DEBUG:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBottomLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDataModeAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDataNetworkState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDescriptionLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDisplayConfirm:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mEmergencyAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/policy/LegacyGlobalActions;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mEmergencyIconResId:I

    return v0
.end method

.method static synthetic -get2()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions;->SALES_CODE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mEmergencyState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mForceRestartLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasTelephony:Z

    return v0
.end method

.method static synthetic -get25(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsConfirmPowerOffOnClearCover:Z

    return v0
.end method

.method static synthetic -get26(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsConfirmRestartOnClearCover:Z

    return v0
.end method

.method static synthetic -get27(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsItemLongPressed:Z

    return v0
.end method

.method static synthetic -get28(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSafeModeEnabled:Z

    return v0
.end method

.method static synthetic -get29(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsScreenOFF:Z

    return v0
.end method

.method static synthetic -get3()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions;->SCAFE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get30(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSecureKeyguard:Z

    return v0
.end method

.method static synthetic -get31(Lcom/android/server/policy/LegacyGlobalActions;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSelectedItemTagForBixby:I

    return v0
.end method

.method static synthetic -get32(Lcom/android/server/policy/LegacyGlobalActions;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSelectedItemTagForSecure:I

    return v0
.end method

.method static synthetic -get33(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsShopDemo:Z

    return v0
.end method

.method static synthetic -get34(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsVZWOperatorAirplaneModeONReasonUSB3:Z

    return v0
.end method

.method static synthetic -get35(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic -get36(Lcom/android/server/policy/LegacyGlobalActions;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemHeight:I

    return v0
.end method

.method static synthetic -get37(Lcom/android/server/policy/LegacyGlobalActions;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemWidth:I

    return v0
.end method

.method static synthetic -get38(Lcom/android/server/policy/LegacyGlobalActions;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get39(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/app/KeyguardManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->SUPPORT_DATAMODE_ACTION:Z

    return v0
.end method

.method static synthetic -get40(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic -get41(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get42(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get43(Lcom/android/server/policy/LegacyGlobalActions;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mMSimServiceState:[I

    return-object v0
.end method

.method static synthetic -get44()Landroid/widget/EditText;
    .locals 1

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get45(Lcom/android/server/policy/LegacyGlobalActions;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPhoneCount:I

    return v0
.end method

.method static synthetic -get46(Lcom/android/server/policy/LegacyGlobalActions;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPowerOffIconResId:I

    return v0
.end method

.method static synthetic -get47(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mProKioskAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic -get48(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/samsung/android/knox/custom/ProKioskManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    return-object v0
.end method

.method static synthetic -get49()I
    .locals 1

    sget v0, Lcom/android/server/policy/LegacyGlobalActions;->mProKioskMenuPosition:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic -get50()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/LegacyGlobalActions;->mProKioskOptionShown:Z

    return v0
.end method

.method static synthetic -get51(Lcom/android/server/policy/LegacyGlobalActions;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mRestartIconResId:I

    return v0
.end method

.method static synthetic -get52(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/samsung/android/emergencymode/SemEmergencyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    return-object v0
.end method

.method static synthetic -get53(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$SilentModeAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSilentModeAction:Lcom/android/server/policy/LegacyGlobalActions$SilentModeAction;

    return-object v0
.end method

.method static synthetic -get54(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -get55(Lcom/android/server/policy/LegacyGlobalActions;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mTrueStringArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get56(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/hardware/usb/UsbManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic -get57(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic -get58()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/LegacyGlobalActions;->sAccessibilityShortcutEnabled:Z

    return v0
.end method

.method static synthetic -get59()I
    .locals 1

    sget v0, Lcom/android/server/policy/LegacyGlobalActions;->sCurrentDensity:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic -get60()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/LegacyGlobalActions;->sHasVibrator:Z

    return v0
.end method

.method static synthetic -get61()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/LegacyGlobalActions;->sIsClearCover:Z

    return v0
.end method

.method static synthetic -get62()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/LegacyGlobalActions;->sIsClearCoverClosed:Z

    return v0
.end method

.method static synthetic -get63()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/LegacyGlobalActions;->sIsConfirmDlg:Z

    return v0
.end method

.method static synthetic -get64()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get65()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/LegacyGlobalActions;->sIsCoverOpen:Z

    return v0
.end method

.method static synthetic -get66()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/LegacyGlobalActions;->sIsGraceR:Z

    return v0
.end method

.method static synthetic -get67()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/LegacyGlobalActions;->sIsNeedWhiteTheme:Z

    return v0
.end method

.method static synthetic -get68()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/LegacyGlobalActions;->sIsSViewCoverClosed:Z

    return v0
.end method

.method static synthetic -get69()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/LegacyGlobalActions;->sIsSecondConfirming:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic -get70()I
    .locals 1

    sget v0, Lcom/android/server/policy/LegacyGlobalActions;->sMessageViewColorWhite:I

    return v0
.end method

.method static synthetic -get71()I
    .locals 1

    sget v0, Lcom/android/server/policy/LegacyGlobalActions;->sMessageViewTextSize:I

    return v0
.end method

.method static synthetic -get72()Landroid/content/res/Resources;
    .locals 1

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic -get73()Landroid/view/View;
    .locals 1

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions;->sSilentModeView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get74()I
    .locals 1

    sget v0, Lcom/android/server/policy/LegacyGlobalActions;->sStatusViewColorWhite:I

    return v0
.end method

.method static synthetic -get75()I
    .locals 1

    sget v0, Lcom/android/server/policy/LegacyGlobalActions;->sStatusViewTextSize:I

    return v0
.end method

.method static synthetic -get76()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/LegacyGlobalActions;->sSupportBlackWhiteTheme:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBikeModeAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;)Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/policy/LegacyGlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set10(Lcom/android/server/policy/LegacyGlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/server/policy/LegacyGlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/server/policy/LegacyGlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsVZWOperatorAirplaneModeONReasonUSB3:Z

    return p1
.end method

.method static synthetic -set13(Lcom/android/server/policy/LegacyGlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic -set14(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/LegacyGlobalActions;->mProKioskOptionShown:Z

    return p0
.end method

.method static synthetic -set15(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;)Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSubScreenState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic -set16(Lcom/android/server/policy/LegacyGlobalActions;Landroid/hardware/usb/UsbManager;)Landroid/hardware/usb/UsbManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object p1
.end method

.method static synthetic -set17(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/LegacyGlobalActions;->sAccessibilityShortcutEnabled:Z

    return p0
.end method

.method static synthetic -set18(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/LegacyGlobalActions;->sIsAirplaneConfirmDialogExist:Z

    return p0
.end method

.method static synthetic -set19(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/LegacyGlobalActions;->sIsConfirmDlg:Z

    return p0
.end method

.method static synthetic -set2(Lcom/android/server/policy/LegacyGlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set20(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/LegacyGlobalActions;->sIsConfirming:Z

    return p0
.end method

.method static synthetic -set21(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/LegacyGlobalActions;->sIsSecondConfirming:Z

    return p0
.end method

.method static synthetic -set3(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;)Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/policy/LegacyGlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsConfirmPowerOffOnClearCover:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/policy/LegacyGlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsConfirmRestartOnClearCover:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/policy/LegacyGlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsItemLongPressed:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/policy/LegacyGlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSafeModeEnabled:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/policy/LegacyGlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsScreenOFF:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/server/policy/LegacyGlobalActions;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSelectedItemTagForSecure:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/LegacyGlobalActions;Z)Landroid/view/ViewGroup;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions;->findTargetView(Z)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$Action;IZ)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/LegacyGlobalActions;->makeActionsItemView(Lcom/android/server/policy/LegacyGlobalActions$Action;IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isSimReady()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isTSafeLock()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(Lcom/android/server/policy/LegacyGlobalActions;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/LegacyGlobalActions;->isTouchInside(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap13(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isUSA()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap14(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isVoiceAssistantOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap15(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isVoiceCapable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap16(Lcom/android/server/policy/LegacyGlobalActions;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions;->getMarginStartAtCenter(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap17(Lcom/android/server/policy/LegacyGlobalActions;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions;->getMarginTopAtCenter(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap18(Lcom/android/server/policy/LegacyGlobalActions;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap19(Lcom/android/server/policy/LegacyGlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/LegacyGlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/LegacyGlobalActions;IZZ)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/LegacyGlobalActions;->bottomViewOnTouch(IZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$Action;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/LegacyGlobalActions;->actionClicked(Lcom/android/server/policy/LegacyGlobalActions$Action;Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/policy/LegacyGlobalActions;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions;->airplaneModeClickAction(Z)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/policy/LegacyGlobalActions;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/policy/LegacyGlobalActions;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions;->changeConfirmDialogByOrientation(Z)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/policy/LegacyGlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->clearSCoverRequestStatus()V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/policy/LegacyGlobalActions;Landroid/view/View;Lcom/android/server/policy/LegacyGlobalActions$Action;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/LegacyGlobalActions;->confirmAction(Landroid/view/View;Lcom/android/server/policy/LegacyGlobalActions$Action;Z)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/LegacyGlobalActions;->confirmDialog(Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;III)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/policy/LegacyGlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->dismissDialog()V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/policy/LegacyGlobalActions;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions;->doActionByBixby(I)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/policy/LegacyGlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->handleShow()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/policy/LegacyGlobalActions;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions;->isActionAvailable(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/server/policy/LegacyGlobalActions;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/LegacyGlobalActions;->hideConfirmDialog(ZZ)V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/policy/LegacyGlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->hideDecorView()V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/policy/LegacyGlobalActions;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/LegacyGlobalActions;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap33(Lcom/android/server/policy/LegacyGlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic -wrap34(Lcom/android/server/policy/LegacyGlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->onToggleDatamode()V

    return-void
.end method

.method static synthetic -wrap35(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$Action;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/LegacyGlobalActions;->performItemLongClickForSafemode(Lcom/android/server/policy/LegacyGlobalActions$Action;Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap36(Lcom/android/server/policy/LegacyGlobalActions;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions;->registerPhoneStateListener(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap37(Lcom/android/server/policy/LegacyGlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->sendBendedPendingIntent()V

    return-void
.end method

.method static synthetic -wrap38(Landroid/widget/TextView;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions;->setLimitTextSizeToLarge(Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic -wrap39(Lcom/android/server/policy/LegacyGlobalActions;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/LegacyGlobalActions;->showToast(II)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isCHINA()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap40(Lcom/android/server/policy/LegacyGlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->unregisterPhoneStateListener()V

    return-void
.end method

.method static synthetic -wrap41(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions;->updateActions(Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;)V

    return-void
.end method

.method static synthetic -wrap42(Lcom/android/server/policy/LegacyGlobalActions;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions;->updateWindowBlur(F)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isFMMLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isInAirplaneModeFromSettings()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isMultiSim()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isPortrait()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/server/policy/LegacyGlobalActions;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions;->isSimCardInserted(I)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/LegacyGlobalActions;->SAFE_DEBUG:Z

    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/LegacyGlobalActions;->SALES_CODE:Ljava/lang/String;

    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/LegacyGlobalActions;->COUNTRY_CODE:Ljava/lang/String;

    const-string/jumbo v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/LegacyGlobalActions;->SCAFE:Ljava/lang/String;

    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/LegacyGlobalActions;->PRODUCT_NAME:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/LegacyGlobalActions;->SURVEY_LOG:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v3, "CscFeature_Framework_SupportForceRestartGlobalAction"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/LegacyGlobalActions;->SUPPORT_FORCE_RESTART:Z

    sput v2, Lcom/android/server/policy/LegacyGlobalActions;->mProKioskMenuPosition:I

    sput-boolean v2, Lcom/android/server/policy/LegacyGlobalActions;->mProKioskOptionShown:Z

    sput-object v4, Lcom/android/server/policy/LegacyGlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    sput-object v4, Lcom/android/server/policy/LegacyGlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    sput-boolean v2, Lcom/android/server/policy/LegacyGlobalActions;->sIsConfirming:Z

    sput-boolean v2, Lcom/android/server/policy/LegacyGlobalActions;->sIsSecondConfirming:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/policy/LegacyGlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    sput-boolean v2, Lcom/android/server/policy/LegacyGlobalActions;->sAccessibilityShortcutEnabled:Z

    sput-boolean v2, Lcom/android/server/policy/LegacyGlobalActions;->sIsAirplaneConfirmDialogExist:Z

    sput-boolean v2, Lcom/android/server/policy/LegacyGlobalActions;->sIsClearCover:Z

    sput-boolean v2, Lcom/android/server/policy/LegacyGlobalActions;->sIsConfirmDlg:Z

    sput-boolean v1, Lcom/android/server/policy/LegacyGlobalActions;->sIsCoverOpen:Z

    sput-boolean v2, Lcom/android/server/policy/LegacyGlobalActions;->sIsSViewCoverClosed:Z

    sput-boolean v2, Lcom/android/server/policy/LegacyGlobalActions;->sIsClearCoverClosed:Z

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v3, 0x138e4

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/policy/LegacyGlobalActions;->sSupportBlackWhiteTheme:Z

    sput-object v4, Lcom/android/server/policy/LegacyGlobalActions;->sSilentModeView:Landroid/view/View;

    sput v2, Lcom/android/server/policy/LegacyGlobalActions;->sCurrentDensity:I

    sput-boolean v2, Lcom/android/server/policy/LegacyGlobalActions;->sIsNeedWhiteTheme:Z

    sput v2, Lcom/android/server/policy/LegacyGlobalActions;->sMessageViewColorWhite:I

    sput v2, Lcom/android/server/policy/LegacyGlobalActions;->sStatusViewColorWhite:I

    sput-object v4, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "empty"

    aput-object v3, v0, v2

    const-string/jumbo v3, "empty"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/server/policy/LegacyGlobalActions;->mHandlerStack:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "empty"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/policy/LegacyGlobalActions;->mInstanceInfo:[Ljava/lang/String;

    sput-boolean v2, Lcom/android/server/policy/LegacyGlobalActions;->sIsGraceR:Z

    sput v2, Lcom/android/server/policy/LegacyGlobalActions;->sMessageViewTextSize:I

    sput v2, Lcom/android/server/policy/LegacyGlobalActions;->sStatusViewTextSize:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/policy/LegacyGlobalActions;->sSCoverRequestStatus:Ljava/util/HashSet;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Ljava/lang/Runnable;)V
    .locals 9

    const/16 v8, 0x99

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0xc8

    iput v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->INTERVAL_SCOVER_TRANSITION:I

    const/16 v2, -0x3e8

    iput v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->DO_NOT_MOVE:I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v5, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v2, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "bikemode"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v5, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v2, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "globalaction"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->SUPPORT_BIKEMODE_ACTION:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v5, "CscFeature_Framework_SupportDataModeSwitchGlobalAction"

    invoke-virtual {v2, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->SUPPORT_DATAMODE_ACTION:Z

    iput-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    iput-boolean v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mKeyguardShowing:Z

    iput-boolean v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDeviceProvisioned:Z

    sget-object v2, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    sget-object v2, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDataNetworkState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    sget-object v2, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSubScreenState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    iput-boolean v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsWaitingForEcmExit:Z

    iput-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    iput-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    iput-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mProKioskAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    sget-object v2, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mEmergencyState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    iput-boolean v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDisplayConfirm:Z

    iput-boolean v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSafeModeEnabled:Z

    iput-boolean v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsBugReportEnable:Z

    iput-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    iput-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iput-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    iput-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDesktopModeEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    iput-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    iput-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iput-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCancelButton:Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBugReport:Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iput-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBottomLayout:Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDescriptionLayout:Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mForceRestartLayout:Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mLayout:Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mScrollview:Landroid/widget/ScrollView;

    iput-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneMsg:Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSelectedItemView:Landroid/view/View;

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v5, "true"

    aput-object v5, v2, v3

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mTrueStringArray:[Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsConfirmPowerOffOnClearCover:Z

    iput-boolean v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsConfirmRestartOnClearCover:Z

    iput-boolean v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsDisableConfirm:Z

    iput-boolean v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsFirstCreated:Z

    iput-boolean v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsInitWidthHeight:Z

    iput-boolean v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsScreenOFF:Z

    iput-boolean v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSecureKeyguard:Z

    iput-boolean v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    iput-boolean v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    iput-boolean v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsShopDemo:Z

    iput-boolean v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsVZWOperatorAirplaneModeONReasonUSB3:Z

    iput-boolean v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsTablet:Z

    iput-boolean v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mShowNavigationBar:Z

    iput-boolean v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mShowOnAirplaneConfirm:Z

    iput v7, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCurrentPositionY:F

    iput v7, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCurrentPositionXLand:F

    iput v7, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCurrentPositionYLand:F

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBottomViewSingleItemHeight:I

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBottomViewSingleItemWidth:I

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDisplayHeight:I

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDisplayWidth:I

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemDivider:I

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemDividerLand:I

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemHeight:I

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemLandscapeDivider:I

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemMaxWidth:I

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemMaxWidthForClearCoverClosed:I

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemMaxWidthForSViewCoverClosed:I

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemMaxWidthLand:I

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemPortraitDivider:I

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemPortraitDividerOverFour:I

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemPortraitDividerSViewCover:I

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemWidth:I

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemWidthLand:I

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mMessageViewPaddingTop:I

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mMessageViewPaddingBottom:I

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPhoneCount:I

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPowerOffIconResId:I

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mConfirmPowerOffIconResId:I

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mRestartIconResId:I

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mConfirmRestartIconResId:I

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mEmergencyIconResId:I

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSafeModeIconResId:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSelectedItemNumbyBixby:I

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSelectedItemTagForBixby:I

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSelectedItemTagForSecure:I

    iput-boolean v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsItemLongPressed:Z

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->sBugReportStatusViewColorWhite:I

    iput-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mWindow:Landroid/view/Window;

    const v2, 0x3e19999a    # 0.15f

    iput v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->BLUR_DIM_AMOUNT:F

    iput v8, p0, Lcom/android/server/policy/LegacyGlobalActions;->DEFAULT_DARK_OPACITY:I

    const/16 v2, 0xcc

    iput v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->CONFIRM_DARK_OPACITY:I

    const/16 v2, 0x66

    iput v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->DEFAULT_WHITE_OPACITY:I

    iput v8, p0, Lcom/android/server/policy/LegacyGlobalActions;->CONFIRM_WHITE_OPACITY:I

    const v2, 0x3f99999a    # 1.2f

    iput v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->FORCE_RESTART_MAX_FONT_SCALE:F

    const v2, 0x3f5c28f6    # 0.86f

    iput v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->MAX_WIDTH_RATIO:F

    const-string/jumbo v2, "com.samsung.android.app.bikemode"

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->BIKE_MODE_PACKAGE_NAME:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPetNameLayout:Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPetNameIcon:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/server/policy/LegacyGlobalActions$1;

    invoke-direct {v2, p0}, Lcom/android/server/policy/LegacyGlobalActions$1;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    new-instance v2, Lcom/android/server/policy/LegacyGlobalActions$2;

    invoke-direct {v2, p0}, Lcom/android/server/policy/LegacyGlobalActions$2;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->scrollViewTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v2, Lcom/android/server/policy/LegacyGlobalActions$3;

    invoke-direct {v2, p0}, Lcom/android/server/policy/LegacyGlobalActions$3;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->bgTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v2, Lcom/android/server/policy/LegacyGlobalActions$4;

    invoke-direct {v2, p0}, Lcom/android/server/policy/LegacyGlobalActions$4;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v2, Lcom/android/server/policy/LegacyGlobalActions$5;

    invoke-direct {v2, p0}, Lcom/android/server/policy/LegacyGlobalActions$5;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v2, Lcom/android/server/policy/LegacyGlobalActions$6;

    invoke-direct {v2, p0}, Lcom/android/server/policy/LegacyGlobalActions$6;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v2, Lcom/android/server/policy/LegacyGlobalActions$7;

    invoke-direct {v2, p0}, Lcom/android/server/policy/LegacyGlobalActions$7;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/policy/LegacyGlobalActions$8;

    invoke-direct {v2, p0}, Lcom/android/server/policy/LegacyGlobalActions$8;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/policy/LegacyGlobalActions$9;

    invoke-direct {v2, p0}, Lcom/android/server/policy/LegacyGlobalActions$9;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBixbyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/policy/LegacyGlobalActions$10;

    invoke-direct {v2, p0}, Lcom/android/server/policy/LegacyGlobalActions$10;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v2, Lcom/android/server/policy/LegacyGlobalActions$11;

    invoke-direct {v2, p0}, Lcom/android/server/policy/LegacyGlobalActions$11;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/policy/LegacyGlobalActions$12;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v5}, Lcom/android/server/policy/LegacyGlobalActions$12;-><init>(Lcom/android/server/policy/LegacyGlobalActions;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    new-instance v2, Lcom/android/server/policy/LegacyGlobalActions$13;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v5}, Lcom/android/server/policy/LegacyGlobalActions$13;-><init>(Lcom/android/server/policy/LegacyGlobalActions;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBikeModeObserver:Landroid/database/ContentObserver;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    const v5, 0x103012b

    invoke-direct {v2, p1, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sput-object v2, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iput-object p3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mOnDismiss:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "audio"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, "dreams"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.settings.action.talkback_toggled"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasTelephony:Z

    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/policy/LegacyGlobalActions;->registerPhoneStateListener(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x20

    invoke-virtual {v2, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "airplane_mode_on"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "vibrator"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    :goto_1
    sput-boolean v2, Lcom/android/server/policy/LegacyGlobalActions;->sHasVibrator:Z

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x11200b9

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mShowSilentToggle:Z

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "keyguard"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "power"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPowerManager:Landroid/os/PowerManager;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "shopdemo"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_3

    move v2, v4

    :goto_2
    iput-boolean v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsShopDemo:Z

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isTablet()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsTablet:Z

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1120096

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mShowNavigationBar:Z

    iget-boolean v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->SUPPORT_BIKEMODE_ACTION:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isSBikeInstalled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "isBikeMode"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBikeModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "com.sec.feature.folder_type"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "com.sec.feature.dual_lcd"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    :goto_3
    iput-boolean v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsDisableConfirm:Z

    invoke-direct {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions;->initCoverManager(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->registerBixbyReceiver()V

    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-static {}, Lcom/samsung/android/knox/custom/SystemManager;->getInstance()Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    sget-object v2, Lcom/android/server/policy/LegacyGlobalActions;->mInstanceInfo:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "LegacyGlobalActions.instanceInfor. pid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". tid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". callers : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    return-void

    :cond_1
    move v2, v3

    goto/16 :goto_0

    :cond_2
    move v2, v3

    goto/16 :goto_1

    :cond_3
    move v2, v3

    goto/16 :goto_2

    :cond_4
    move v2, v3

    goto :goto_3
.end method

.method private actionClicked(Lcom/android/server/policy/LegacyGlobalActions$Action;Landroid/view/View;Z)V
    .locals 9

    const/4 v8, 0x1

    const v5, 0x10202de

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_1

    return-void

    :cond_1
    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v5, 0x102000b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v5, 0x10204f9

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/policy/LegacyGlobalActions;->isActionAvailable(I)Z

    move-result v5

    if-nez v5, :cond_2

    return-void

    :cond_2
    iput v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSelectedItemTagForBixby:I

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {p0, v4, v5}, Lcom/android/server/policy/LegacyGlobalActions;->updateDescViewHeight(Landroid/view/View;I)V

    const-string/jumbo v5, "LegacyGlobalActions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "actionClicked item : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lcom/android/server/policy/LegacyGlobalActions;->sIsConfirmDlg:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsDisableConfirm:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    invoke-direct {p0, v4}, Lcom/android/server/policy/LegacyGlobalActions;->isSingleActionItem(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, p2, v8, p3}, Lcom/android/server/policy/LegacyGlobalActions;->showConfirmDialog(Landroid/view/View;ZZ)V

    :goto_0
    return-void

    :cond_3
    invoke-direct {p0, p2, p1, v8}, Lcom/android/server/policy/LegacyGlobalActions;->confirmAction(Landroid/view/View;Lcom/android/server/policy/LegacyGlobalActions$Action;Z)V

    goto :goto_0
.end method

.method private addCustomDialogItems(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Landroid/content/Intent;I)Z
    .locals 8

    iget-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$32;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/LegacyGlobalActions$32;-><init>(Lcom/android/server/policy/LegacyGlobalActions;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ILandroid/content/Intent;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v6

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private addDialogItemsIfEnabled(ILcom/android/server/policy/LegacyGlobalActions$Action;Ljava/util/ArrayList;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/policy/LegacyGlobalActions$Action;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/LegacyGlobalActions$Action;",
            ">;Z)Z"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    const-string/jumbo v0, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    const-string/jumbo v1, "getSealedPowerDialogItems"

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/LegacyGlobalActions;->isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_1

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    sget v0, Lcom/android/server/policy/LegacyGlobalActions;->mProKioskMenuPosition:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/policy/LegacyGlobalActions;->mProKioskMenuPosition:I

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private addUsersToMenu(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/LegacyGlobalActions$Action;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v6, :cond_2

    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_1

    :goto_1
    const/4 v7, 0x1

    :goto_2
    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_3
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$37;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v7, :cond_5

    const-string/jumbo v1, " \u2714"

    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v2, 0x1080471

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/LegacyGlobalActions$37;-><init>(Lcom/android/server/policy/LegacyGlobalActions;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    iget v2, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    const-string/jumbo v1, "Primary"

    goto :goto_4

    :cond_5
    const-string/jumbo v1, ""

    goto :goto_5

    :cond_6
    return-void
.end method

.method private adjustBottomView()V
    .locals 11

    const/16 v8, 0x8

    const/4 v10, 0x0

    iget-boolean v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsBugReportEnable:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v7, 0x10202d8

    invoke-virtual {v6, v7}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v7, 0x10202da

    invoke-virtual {v6, v7}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v7, 0x10202d9

    invoke-virtual {v6, v7}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-boolean v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mShowNavigationBar:Z

    if-eqz v6, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isPortrait()Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    const v7, 0x105015a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBottomViewSingleItemHeight:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v8

    double-to-int v0, v6

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v4, v6, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v10, v10, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v6, Lcom/android/server/policy/LegacyGlobalActions;->SUPPORT_FORCE_RESTART:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v7, 0x10202dc

    invoke-virtual {v6, v7}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mForceRestartLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mForceRestartLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10, v10, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBottomLayout:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/android/server/policy/LegacyGlobalActions$42;

    invoke-direct {v7, p0}, Lcom/android/server/policy/LegacyGlobalActions$42;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_1
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBottomViewSingleItemWidth:I

    iget v7, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBottomViewSingleItemHeight:I

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private adjustForceRestartView()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    sget-boolean v6, Lcom/android/server/policy/LegacyGlobalActions;->SUPPORT_FORCE_RESTART:Z

    if-eqz v6, :cond_5

    sget-boolean v6, Lcom/android/server/policy/LegacyGlobalActions;->sIsCoverOpen:Z

    if-nez v6, :cond_0

    sget-boolean v6, Lcom/android/server/policy/LegacyGlobalActions;->sIsClearCoverClosed:Z

    if-eqz v6, :cond_5

    :cond_0
    iget-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v7, 0x10202dc

    invoke-virtual {v6, v7}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mForceRestartLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v7, 0x10202cd

    invoke-virtual {v6, v7}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    sget-object v6, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-boolean v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mShowNavigationBar:Z

    if-eqz v6, :cond_1

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mForceRestartLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    const v7, 0x105015a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-boolean v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsBugReportEnable:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mForceRestartLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9, v9, v9, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_1
    sget-boolean v6, Lcom/android/server/policy/LegacyGlobalActions;->sIsNeedWhiteTheme:Z

    if-eqz v6, :cond_2

    if-eqz v5, :cond_2

    sget-object v6, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    const v7, 0x1060217

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    sget-object v6, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    const v7, 0x1050350

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sget-object v7, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    div-float v4, v6, v7

    iget v1, v0, Landroid/content/res/Configuration;->fontScale:F

    const v6, 0x3f99999a    # 1.2f

    cmpl-float v6, v1, v6

    if-lez v6, :cond_3

    const v1, 0x3f99999a    # 1.2f

    :cond_3
    iget-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    const v8, 0x1040382

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v5, :cond_4

    mul-float v6, v1, v4

    invoke-virtual {v5, v10, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mForceRestartLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mForceRestartLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method private adjustPetIconView()V
    .locals 4

    sget-boolean v2, Lcom/android/server/policy/LegacyGlobalActions;->sIsGraceR:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v3, 0x10202e0

    invoke-virtual {v2, v3}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPetNameLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPetNameLayout:Landroid/widget/LinearLayout;

    const v3, 0x10202e1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPetNameIcon:Landroid/widget/ImageView;

    sget-boolean v2, Lcom/android/server/policy/LegacyGlobalActions;->sIsNeedWhiteTheme:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPetNameIcon:Landroid/widget/ImageView;

    const v3, 0x10802b9

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    sget-boolean v2, Lcom/android/server/policy/LegacyGlobalActions;->sIsClearCoverClosed:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPetNameIcon:Landroid/widget/ImageView;

    const v3, 0x10802b7

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPetNameLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050370

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105036e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDescriptionLayout:Landroid/widget/LinearLayout;

    const v3, 0x10201e6

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/android/server/policy/LegacyGlobalActions;->sStatusViewTextSize:I

    invoke-static {v0, v2}, Lcom/android/server/policy/LegacyGlobalActions;->setLimitTextSizeToLarge(Landroid/widget/TextView;I)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPetNameLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPetNameIcon:Landroid/widget/ImageView;

    const v3, 0x10802b8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private airplaneModeClickAction(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    invoke-virtual {v0}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->onPressAction()V

    sget-boolean v0, Lcom/android/server/policy/LegacyGlobalActions;->sIsCoverOpen:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/policy/LegacyGlobalActions;->sIsSecondConfirming:Z

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/android/server/policy/LegacyGlobalActions;->sIsConfirming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->clearSCoverRequestStatus()V

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsVZWOperatorAirplaneModeONReasonUSB3:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v4}, Landroid/hardware/usb/UsbManager;->setUsb30Mode(Z)V

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode_on_reason_usb3"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-boolean v0, Lcom/android/server/policy/LegacyGlobalActions;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "LegacyGlobalActions"

    const-string/jumbo v1, "USB 3.0 is disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tw_globalactions_dont_show_again"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_4
    sput-boolean v4, Lcom/android/server/policy/LegacyGlobalActions;->sIsSecondConfirming:Z

    goto :goto_0

    :cond_5
    sget-boolean v0, Lcom/android/server/policy/LegacyGlobalActions;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "LegacyGlobalActions"

    const-string/jumbo v1, "USB manager is not created hence USB 3.0 connection can not be terminated."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private awakenIfNecessary()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private bottomViewOnTouch(IZZ)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    sget-boolean v0, Lcom/android/server/policy/LegacyGlobalActions;->sAccessibilityShortcutEnabled:Z

    if-eqz v0, :cond_0

    xor-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    return v2

    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0, p2, v1}, Lcom/android/server/policy/LegacyGlobalActions;->hideConfirmDialog(ZZ)V

    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_3

    sget-boolean v0, Lcom/android/server/policy/LegacyGlobalActions;->sAccessibilityShortcutEnabled:Z

    if-eqz v0, :cond_3

    if-eqz p3, :cond_4

    sput-boolean v1, Lcom/android/server/policy/LegacyGlobalActions;->sIsConfirmDlg:Z

    iput-boolean v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSafeModeEnabled:Z

    :cond_3
    :goto_1
    return v1

    :cond_4
    sput-boolean v1, Lcom/android/server/policy/LegacyGlobalActions;->sAccessibilityShortcutEnabled:Z

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method private buildActionsBaseView(Z)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions;->findTargetView(Z)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions;->findTargetScrollView(Z)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    invoke-virtual {v2}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    sget-object v2, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    const v3, 0x105036b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemWidthLand:I

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->bgTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->scrollViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions;->fillActionItemViews(Z)V

    return-void

    :cond_1
    sget-object v2, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    const v3, 0x105036c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemWidthLand:I

    goto :goto_0
.end method

.method private captureScreen(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 14

    if-nez p1, :cond_0

    const-string/jumbo v0, "LegacyGlobalActions"

    const-string/jumbo v5, "captureScreen() : mContext is NULL!!!"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v13

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move v1, v13

    move v2, v12

    invoke-virtual {v10}, Landroid/view/Display;->getRotation()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v11, 0x0

    const/16 v3, 0x4e20

    const v4, 0x30d40

    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    :goto_1
    if-nez v11, :cond_1

    const-string/jumbo v0, "LegacyGlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "captureScreen : Could not capture the screen! screenBitmap == null, lcdWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " lcdHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " rotation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    move v1, v12

    move v2, v13

    goto :goto_0

    :catch_0
    move-exception v9

    const-string/jumbo v0, "LegacyGlobalActions"

    const-string/jumbo v5, "captureScreen : failed to access screenshot API : "

    invoke-static {v0, v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    return-object v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "airplane_mode_on"

    if-eqz p1, :cond_3

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v4, "CscFeature_IMS_EnableIMS"

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v3, "CscFeature_IMS_EnableIMS"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    if-eqz p1, :cond_4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/LegacyGlobalActions$38;

    invoke-direct {v2, p0}, Lcom/android/server/policy/LegacyGlobalActions$38;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasTelephony:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_5

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    :goto_2
    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    :cond_2
    return-void

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    goto :goto_2
.end method

.method private changeConfirmDialogByOrientation(Z)V
    .locals 10

    iget-object v8, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    if-nez v8, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget-object v8, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    invoke-virtual {v8}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getCount()I

    move-result v8

    if-ge v1, v8, :cond_3

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v8, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSelectedItemView:Landroid/view/View;

    invoke-virtual {v8, v4}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSelectedItemView:Landroid/view/View;

    const v8, 0x10202de

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v8, 0x102000b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v8, 0x10204f9

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    xor-int/lit8 v8, p1, 0x1

    invoke-direct {p0, v8}, Lcom/android/server/policy/LegacyGlobalActions;->fillActionItemViews(Z)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v8

    invoke-virtual {v6}, Landroid/widget/TextView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {p0, v2, v8}, Lcom/android/server/policy/LegacyGlobalActions;->updateDescViewHeight(Landroid/view/View;I)V

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8, p1}, Lcom/android/server/policy/LegacyGlobalActions;->showConfirmDialog(Landroid/view/View;ZZ)V

    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private checkAirplaneModeOnOff()V
    .locals 4

    const-string/jumbo v0, "LegacyGlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkAirplaneModeOnOff : airplaneModeOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isInAirplaneModeFromSettings()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isInAirplaneModeFromSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    const-string/jumbo v0, "LegacyGlobalActions"

    const-string/jumbo v1, "checkAirplaneModeOnOff : sendEmptyMessageDelayed MESSAGE_REFRESH_AIRPLANEMODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x96

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    goto :goto_0
.end method

.method private clearCustomDialogItems()V
    .locals 4

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/LegacyGlobalActions$Action;

    instance-of v2, v1, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;

    iget-boolean v2, v1, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->isKnoxCustom:Z

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    monitor-exit v3

    return-void
.end method

.method private clearSCoverRequestStatus()V
    .locals 4

    const/4 v3, 0x4

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    sget-object v2, Lcom/android/server/policy/LegacyGlobalActions;->sSCoverRequestStatus:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/policy/LegacyGlobalActions;->restoreQuickPanelBackground(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/server/policy/LegacyGlobalActions;->sSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method private confirmAction(Landroid/view/View;Lcom/android/server/policy/LegacyGlobalActions$Action;Z)V
    .locals 11

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v5, 0x1020006

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz p3, :cond_0

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/policy/LegacyGlobalActions;->isSecureConfirmAction(I)Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    iput-boolean v7, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDisplayConfirm:Z

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPowerOffIconResId:I

    if-eq v5, v6, :cond_1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mRestartIconResId:I

    if-eq v5, v6, :cond_1

    invoke-interface {p2}, Lcom/android/server/policy/LegacyGlobalActions$Action;->onPress()V

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    invoke-virtual {v5, p1, v9}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hideAllView(Landroid/view/View;Z)V

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    const v6, 0x102036e

    invoke-virtual {v5, v6}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSelectedItemTagForSecure:I

    if-eqz v5, :cond_4

    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    invoke-virtual {v5}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_4

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_2

    invoke-direct {p0, v9}, Lcom/android/server/policy/LegacyGlobalActions;->findTargetView(Z)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4, v8}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_3

    invoke-direct {p0, v7}, Lcom/android/server/policy/LegacyGlobalActions;->findTargetView(Z)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4, v8}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0x96

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDescriptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0x96

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string/jumbo v6, "alpha"

    const/16 v7, 0x99

    const/16 v8, 0xff

    filled-new-array {v7, v8}, [I

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    new-instance v5, Lcom/android/server/policy/LegacyGlobalActions$30;

    invoke-direct {v5, p0, p2}, Lcom/android/server/policy/LegacyGlobalActions$30;-><init>(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$Action;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_0
.end method

.method private confirmDialog(Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;III)V
    .locals 18

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x1

    sput-boolean v14, Lcom/android/server/policy/LegacyGlobalActions;->sIsAirplaneConfirmDialogExist:Z

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    sget-object v15, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    if-ne v14, v15, :cond_3

    const v13, 0x1040302

    const/4 v10, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_4

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    :goto_1
    sget-boolean v14, Lcom/android/server/policy/LegacyGlobalActions;->sIsSViewCoverClosed:Z

    if-eqz v14, :cond_8

    new-instance v14, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;-><init>(Landroid/content/Context;)V

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->setTitle(I)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    sget-object v16, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    move-object/from16 v0, v16

    if-ne v14, v0, :cond_6

    move/from16 v14, p3

    :goto_2
    invoke-virtual {v15, v14}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->setMessage(I)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/policy/LegacyGlobalActions;->mIsVZWOperatorAirplaneModeONReasonUSB3:Z

    if-eqz v14, :cond_7

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    sget-object v16, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    move-object/from16 v0, v16

    if-eq v14, v0, :cond_7

    const v14, 0x10403c6

    :goto_3
    invoke-virtual {v15, v14, v12}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    const v16, 0x1040009

    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog$Builder;->create()Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    move-result-object v11

    :goto_4
    new-instance v14, Lcom/android/server/policy/LegacyGlobalActions$ConfirmDialogReceiver;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/android/server/policy/LegacyGlobalActions$ConfirmDialogReceiver;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/policy/LegacyGlobalActions;->mConfirmDialogReceiver:Lcom/android/server/policy/LegacyGlobalActions$ConfirmDialogReceiver;

    sget-boolean v14, Lcom/android/server/policy/LegacyGlobalActions;->sIsSViewCoverClosed:Z

    if-eqz v14, :cond_12

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x833

    invoke-virtual {v14, v15}, Landroid/view/Window;->setType(I)V

    sget-object v14, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    const v15, 0x1120094

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v11}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    invoke-virtual {v11}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v14, 0x1

    iput v14, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const/4 v14, 0x0

    iput v14, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {v11}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v11}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->show()V

    const-string/jumbo v14, "GlobalActions$ConfirmDialog"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/policy/LegacyGlobalActions;->hideQuickPanelBackground(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/policy/LegacyGlobalActions;->mConfirmSViewCoverDialog:Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    :cond_1
    :goto_5
    if-nez v7, :cond_2

    sget-object v14, Lcom/android/server/policy/LegacyGlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v14

    const/4 v15, 0x1

    :try_start_0
    sput-boolean v15, Lcom/android/server/policy/LegacyGlobalActions;->sIsConfirming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v14

    :cond_2
    return-void

    :cond_3
    const v13, 0x10402be

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/LegacyGlobalActions;->mDataModeAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/LegacyGlobalActions;->mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v14, "LegacyGlobalActions"

    const-string/jumbo v15, "Cannot find ClickListener."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    move/from16 v14, p4

    goto/16 :goto_2

    :cond_7
    move v14, v13

    goto/16 :goto_3

    :cond_8
    sget-boolean v14, Lcom/android/server/policy/LegacyGlobalActions;->sIsClearCoverClosed:Z

    if-eqz v14, :cond_b

    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    const v15, 0x103031f

    invoke-direct {v1, v14, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_6
    move/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    if-nez v14, :cond_9

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    if-eqz v14, :cond_d

    :cond_9
    if-eqz v6, :cond_d

    if-eqz v10, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const v14, 0x1090144

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    if-eqz v14, :cond_c

    const/4 v9, 0x1

    const-string/jumbo v14, "LegacyGlobalActions"

    const-string/jumbo v15, "confirmDialog : set airplane mode on message for VZW"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_7
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v14, 0x1020554

    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/policy/LegacyGlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    const v14, 0x102000b

    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneMsg:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneMsg:Landroid/widget/TextView;

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_8
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/policy/LegacyGlobalActions;->mIsVZWOperatorAirplaneModeONReasonUSB3:Z

    if-eqz v14, :cond_f

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    sget-object v15, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    if-eq v14, v15, :cond_f

    const v13, 0x10403c6

    :goto_9
    invoke-virtual {v1, v13, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v14, 0x1040009

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_4

    :cond_b
    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v1, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto/16 :goto_6

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    if-eqz v14, :cond_a

    const/4 v8, 0x1

    const-string/jumbo v14, "LegacyGlobalActions"

    const-string/jumbo v15, "confirmDialog : set airplane mode on message for CHINA"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_d
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    sget-object v15, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    if-ne v14, v15, :cond_e

    move/from16 v14, p3

    :goto_a
    invoke-virtual {v1, v14}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_8

    :cond_e
    move/from16 v14, p4

    goto :goto_a

    :cond_f
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    sget-object v15, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    if-ne v14, v15, :cond_11

    const-string/jumbo v14, "VZW"

    sget-object v15, Lcom/android/server/policy/LegacyGlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    const v13, 0x104000a

    goto :goto_9

    :cond_10
    const v13, 0x1040302

    goto :goto_9

    :cond_11
    const v13, 0x10402be

    goto :goto_9

    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/LegacyGlobalActions;->mConfirmDialogReceiver:Lcom/android/server/policy/LegacyGlobalActions$ConfirmDialogReceiver;

    iput-object v4, v14, Lcom/android/server/policy/LegacyGlobalActions$ConfirmDialogReceiver;->dialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/LegacyGlobalActions;->mConfirmDialogReceiver:Lcom/android/server/policy/LegacyGlobalActions$ConfirmDialogReceiver;

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    sget-boolean v14, Lcom/android/server/policy/LegacyGlobalActions;->sIsClearCoverClosed:Z

    if-eqz v14, :cond_16

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x833

    invoke-virtual {v14, v15}, Landroid/view/Window;->setType(I)V

    :goto_b
    sget-object v14, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    const v15, 0x1120094

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-nez v14, :cond_13

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/view/Window;->addFlags(I)V

    :cond_13
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/policy/LegacyGlobalActions;->mShowOnAirplaneConfirm:Z

    if-nez v14, :cond_17

    if-nez v9, :cond_14

    if-eqz v8, :cond_17

    :cond_14
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/policy/LegacyGlobalActions;->airplaneModeClickAction(Z)V

    const/4 v7, 0x1

    :goto_c
    sget-boolean v14, Lcom/android/server/policy/LegacyGlobalActions;->SAFE_DEBUG:Z

    if-eqz v14, :cond_15

    const-string/jumbo v14, "LegacyGlobalActions"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "in confirmDialog action = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " resON = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "resOFF = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " config_sf_slowBlur = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    const v17, 0x1120094

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " resTitle = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " mAirplaneModeAction = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " mDataModeAction = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mDataModeAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/policy/LegacyGlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    goto/16 :goto_5

    :cond_16
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x96b

    invoke-virtual {v14, v15}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_b

    :cond_17
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_c

    :catchall_0
    move-exception v15

    monitor-exit v14

    throw v15
.end method

.method private createDialog()Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;
    .locals 30

    const/16 v25, 0x0

    sput-boolean v25, Lcom/android/server/policy/LegacyGlobalActions;->mProKioskOptionShown:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/LegacyGlobalActions;->makeActionsItems()V

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v7, 0x1

    const/16 v25, 0x0

    sput v25, Lcom/android/server/policy/LegacyGlobalActions;->mProKioskMenuPosition:I

    const-string/jumbo v25, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v26, "getSealedState"

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/policy/LegacyGlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "true"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    new-instance v25, Lcom/android/server/policy/LegacyGlobalActions$PowerAction;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$PowerAction;-><init>(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$PowerAction;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x4

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/LegacyGlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/LegacyGlobalActions$Action;Ljava/util/ArrayList;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mRestartAction:Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x40

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/LegacyGlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/LegacyGlobalActions$Action;Ljava/util/ArrayList;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mEmergencyAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x80

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/LegacyGlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/LegacyGlobalActions$Action;Ljava/util/ArrayList;Z)Z

    new-instance v25, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x100

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/LegacyGlobalActions;->addDialogItemsIfEnabled(ILcom/android/server/policy/LegacyGlobalActions$Action;Ljava/util/ArrayList;Z)Z

    const-string/jumbo v25, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v26, "getSealedPowerDialogOptionMode"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions;->isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mProKioskAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mProKioskAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v7, 0x0

    :cond_1
    if-eqz v7, :cond_14

    sget-object v25, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    const v26, 0x1070053

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    const/16 v25, 0x0

    array-length v0, v13

    move/from16 v27, v0

    move/from16 v26, v25

    :goto_0
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_13

    aget-object v6, v13, v26

    invoke-virtual {v8, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v25, v26, 0x1

    move/from16 v26, v25

    goto :goto_0

    :cond_3
    sget-boolean v25, Lcom/android/server/policy/LegacyGlobalActions;->sIsCoverOpen:Z

    if-nez v25, :cond_4

    const-string/jumbo v25, "emergencymode"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_2

    const-string/jumbo v25, "users"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_2

    const-string/jumbo v25, "settings"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_2

    :cond_4
    invoke-static {}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->isEmergencyModeSupported()Z

    move-result v25

    if-nez v25, :cond_5

    const-string/jumbo v25, "emergencymode"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    const-string/jumbo v25, "LegacyGlobalActions"

    const-string/jumbo v28, "Removed Emergency mode button because of Knox creation."

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string/jumbo v25, "power"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    new-instance v28, Lcom/android/server/policy/LegacyGlobalActions$PowerAction;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$PowerAction;-><init>(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$PowerAction;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    invoke-virtual {v8, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    const-string/jumbo v25, "airplane"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    const-string/jumbo v25, "subscreen"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_6

    const-string/jumbo v25, "datamode"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mDataModeAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    const-string/jumbo v25, "bugreport"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string/jumbo v28, "bugreport_in_power_menu"

    const/16 v29, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/LegacyGlobalActions;->isCurrentUserOwner()Z

    move-result v25

    if-eqz v25, :cond_a

    sget-boolean v25, Lcom/android/server/policy/LegacyGlobalActions;->sIsCoverOpen:Z

    :goto_3
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/LegacyGlobalActions;->mIsBugReportEnable:Z

    goto/16 :goto_2

    :cond_a
    const/16 v25, 0x0

    goto :goto_3

    :cond_b
    const-string/jumbo v25, "restart"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mRestartAction:Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_c
    const-string/jumbo v25, "emergencymode"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mEmergencyAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_d
    const-string/jumbo v25, "silent"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mShowSilentToggle:Z

    move/from16 v25, v0

    if-eqz v25, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mSilentModeAction:Lcom/android/server/policy/LegacyGlobalActions$SilentModeAction;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_e
    const-string/jumbo v25, "users"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_f

    const-string/jumbo v25, "fw.power_user_switcher"

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    if-eqz v25, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/policy/LegacyGlobalActions;->addUsersToMenu(Ljava/util/ArrayList;)V

    goto/16 :goto_2

    :cond_f
    const-string/jumbo v25, "settings"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/LegacyGlobalActions;->getSettingsAction()Lcom/android/server/policy/LegacyGlobalActions$Action;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_10
    const-string/jumbo v25, "voiceassist"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/LegacyGlobalActions;->getVoiceAssistAction()Lcom/android/server/policy/LegacyGlobalActions$Action;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_11
    const-string/jumbo v25, "assist"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/LegacyGlobalActions;->getAssistAction()Lcom/android/server/policy/LegacyGlobalActions$Action;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_12
    const-string/jumbo v25, "LegacyGlobalActions"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Invalid global action key "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_13
    new-instance v25, Lcom/android/server/policy/LegacyGlobalActions$SilentModeAction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    invoke-direct/range {v25 .. v27}, Lcom/android/server/policy/LegacyGlobalActions$SilentModeAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/LegacyGlobalActions$SilentModeAction;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v25

    sput-object v25, Lcom/android/server/policy/LegacyGlobalActions;->sSilentModeView:Landroid/view/View;

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->SUPPORT_BIKEMODE_ACTION:Z

    move/from16 v25, v0

    if-eqz v25, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/LegacyGlobalActions;->isSBikeInstalled()Z

    move-result v25

    if-eqz v25, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mBikeModeAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    move-object/from16 v25, v0

    if-eqz v25, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/knox/custom/SystemManager;->getPowerDialogCustomItemsState()Z

    move-result v25

    if-eqz v25, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/LegacyGlobalActions;->clearCustomDialogItems()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/knox/custom/SystemManager;->getPowerDialogCustomItems()Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_16

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_16

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/samsung/android/knox/custom/PowerItem;

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/custom/PowerItem;->getIcon()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v25

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/custom/PowerItem;->getText()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/custom/PowerItem;->getIntent()Landroid/content/Intent;

    move-result-object v27

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/custom/PowerItem;->getIntentAction()I

    move-result v28

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/LegacyGlobalActions;->addCustomDialogItems(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Landroid/content/Intent;I)Z

    goto :goto_4

    :cond_16
    new-instance v25, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;-><init>(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    new-instance v20, Lcom/android/internal/app/AlertController$AlertParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    sget-boolean v25, Lcom/android/server/policy/LegacyGlobalActions;->sIsCoverOpen:Z

    if-nez v25, :cond_17

    sget-boolean v25, Lcom/android/server/policy/LegacyGlobalActions;->sIsClearCover:Z

    if-eqz v25, :cond_1e

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    :goto_5
    new-instance v14, Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    move-object/from16 v2, v26

    invoke-direct {v14, v0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;Landroid/os/Handler;)V

    const-string/jumbo v25, "LegacyGlobalActions"

    const-string/jumbo v26, "Create GlobalActionsDialog"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/view/Window;->requestFeature(I)Z

    new-instance v19, Lcom/android/server/policy/LegacyGlobalActions$14;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/policy/LegacyGlobalActions$14;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    new-instance v25, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    sget-boolean v27, Lcom/android/server/policy/LegacyGlobalActions;->sIsSViewCoverClosed:Z

    sget-boolean v28, Lcom/android/server/policy/LegacyGlobalActions;->sIsClearCoverClosed:Z

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;-><init>(Landroid/content/Context;Ljava/lang/Runnable;ZZ)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/LegacyGlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v25, v0

    const v26, 0x10202d7

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/LegacyGlobalActions;->mBottomLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v25, v0

    const v26, 0x1020221

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/Button;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/LegacyGlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v25, v0

    const v26, 0x102023b

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/Button;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/LegacyGlobalActions;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v25, v0

    const v26, 0x10202db

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/LegacyGlobalActions;->mDescriptionLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v25, v0

    const v26, 0x10202d5

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/LegacyGlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v25, v0

    const v26, 0x10202e2

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ScrollView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/LegacyGlobalActions;->mScrollview:Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v25, v0

    const v26, 0x10202dd

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/LegacyGlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v25, v0

    const v26, 0x1020222

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v25, v0

    const v26, 0x1020223

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    sget-boolean v25, Lcom/android/server/policy/LegacyGlobalActions;->sIsSViewCoverClosed:Z

    if-nez v25, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v25, v0

    const v26, 0x10202d6

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/LegacyGlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mDescriptionLayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/LinearLayout;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v25, v0

    new-instance v26, Lcom/android/server/policy/LegacyGlobalActions$15;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/policy/LegacyGlobalActions$15;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x1040180

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    sget-object v27, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/16 v28, 0x0

    aput-object v27, v26, v28

    sget-object v27, Landroid/os/Build;->ID:Ljava/lang/String;

    const/16 v28, 0x1

    aput-object v27, v26, v28

    const v27, 0x104017f

    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v25, Lcom/android/server/policy/LegacyGlobalActions;->sIsNeedWhiteTheme:Z

    if-eqz v25, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->sBugReportStatusViewColorWhite:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v25, v0

    new-instance v26, Lcom/android/server/policy/LegacyGlobalActions$16;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/policy/LegacyGlobalActions$16;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mIsBugReportEnable:Z

    move/from16 v25, v0

    if-nez v25, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mBottomLayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/LegacyGlobalActions;->adjustForceRestartView()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/LegacyGlobalActions;->adjustPetIconView()V

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/policy/LegacyGlobalActions;->buildActionsBaseView(Z)V

    sget-boolean v25, Lcom/android/server/policy/LegacyGlobalActions;->sIsSViewCoverClosed:Z

    if-nez v25, :cond_1a

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/policy/LegacyGlobalActions;->buildActionsBaseView(Z)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v25, v0

    const v26, 0x102036e

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v25, -0x1

    const/16 v26, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v25, Lcom/android/server/policy/LegacyGlobalActions;->sIsNeedWhiteTheme:Z

    if-eqz v25, :cond_20

    const v25, 0x1060210

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_7
    sget-boolean v25, Lcom/android/server/policy/LegacyGlobalActions;->sIsNeedWhiteTheme:Z

    if-eqz v25, :cond_21

    const/16 v22, 0x66

    :goto_8
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v28, v27, v29

    const/16 v28, 0x1

    aput v22, v27, v28

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v26, 0x12c

    move-wide/from16 v0, v26

    invoke-virtual {v9, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/animation/ObjectAnimator;->start()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    if-eqz v21, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;->setContentView(Landroid/view/View;)V

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    sget-boolean v25, Lcom/android/server/policy/LegacyGlobalActions;->sIsCoverOpen:Z

    if-nez v25, :cond_1c

    sget-boolean v25, Lcom/android/server/policy/LegacyGlobalActions;->sIsClearCover:Z

    if-eqz v25, :cond_1d

    :cond_1c
    const-string/jumbo v25, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v26, "getSealedPowerDialogOptionMode"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions;->isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1d

    new-instance v25, Lcom/android/server/policy/LegacyGlobalActions$17;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/policy/LegacyGlobalActions$17;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1d
    return-object v14

    :cond_1e
    new-instance v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/LegacyGlobalActions;->mLayout:Landroid/widget/LinearLayout;

    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v25, -0x1

    const/16 v26, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mLayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mLayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_5

    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/LegacyGlobalActions;->adjustBottomView()V

    goto/16 :goto_6

    :cond_20
    const v25, 0x1060211

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_7

    :cond_21
    const/16 v22, 0x99

    goto/16 :goto_8
.end method

.method private dismissDialog()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isGlobalActionConfirming()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    sget-boolean v0, Lcom/android/server/policy/LegacyGlobalActions;->sIsCoverOpen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mConfirmSViewCoverDialog:Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mConfirmSViewCoverDialog:Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isGlobalActionConfirming()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mConfirmSViewCoverDialog:Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/globalactions/GlobalActionsSViewCoverDialog;->dismiss()V

    sget-boolean v0, Lcom/android/server/policy/LegacyGlobalActions;->sIsSecondConfirming:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/android/server/policy/LegacyGlobalActions;->sIsConfirming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "LegacyGlobalActions"

    const-string/jumbo v1, "handleMessage : MESSAGE_DISMISS : Call mDialog.dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;->dismiss()V

    iput-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    :cond_2
    sput-boolean v2, Lcom/android/server/policy/LegacyGlobalActions;->sIsConfirmDlg:Z

    iput-boolean v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSafeModeEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsScreenOFF:Z

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_3
    sput-boolean v2, Lcom/android/server/policy/LegacyGlobalActions;->sIsSecondConfirming:Z

    goto :goto_0
.end method

.method private doActionByBixby(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "LegacyGlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPowerOffIconResId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPowerOffIconResId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mRestartIconResId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mRestartIconResId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions;->getActionViewByTag(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions;->getActionViewByTag(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSelectedItemView:Landroid/view/View;

    iget v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPowerOffIconResId:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mRestartIconResId:I

    if-ne p1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    iget v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSelectedItemNumbyBixby:I

    invoke-virtual {v0, v1}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/LegacyGlobalActions$Action;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSelectedItemView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isPortrait()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions;->actionClicked(Lcom/android/server/policy/LegacyGlobalActions$Action;Landroid/view/View;Z)V

    :cond_2
    return-void
.end method

.method private doAnimation(Landroid/view/View;FFFIZ)V
    .locals 39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    move-object/from16 v32, v0

    if-nez v32, :cond_0

    return-void

    :cond_0
    const v32, 0x1020006

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    const v32, 0x102000b

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mDescriptionLayout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const v33, 0x10201e6

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v32, 0x10202de

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout;

    const/4 v12, 0x0

    const/16 v23, 0x0

    const/4 v9, 0x0

    invoke-virtual {v13}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v16

    sget-boolean v32, Lcom/android/server/policy/LegacyGlobalActions;->sIsNeedWhiteTheme:Z

    if-eqz v32, :cond_1

    if-eqz v10, :cond_1

    sget v32, Lcom/android/server/policy/LegacyGlobalActions;->sStatusViewColorWhite:I

    move/from16 v0, v32

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    if-eqz p6, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mPowerOffIconResId:I

    move/from16 v32, v0

    move/from16 v0, v16

    move/from16 v1, v32

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mIsTablet:Z

    move/from16 v32, v0

    if-eqz v32, :cond_c

    const v9, 0x10403a2

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mDescriptionLayout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const-string/jumbo v33, "alpha"

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [F

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mDescriptionLayout:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v35

    const/16 v36, 0x0

    aput v35, v34, v36

    const/high16 v35, 0x3f800000    # 1.0f

    const/16 v36, 0x1

    aput v35, v34, v36

    invoke-static/range {v32 .. v34}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mBottomLayout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const-string/jumbo v33, "alpha"

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [F

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mBottomLayout:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v35

    const/16 v36, 0x0

    aput v35, v34, v36

    const/16 v35, 0x0

    const/16 v36, 0x1

    aput v35, v34, v36

    invoke-static/range {v32 .. v34}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mForceRestartLayout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    if-eqz v32, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mForceRestartLayout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const-string/jumbo v33, "alpha"

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [F

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mForceRestartLayout:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v35

    const/16 v36, 0x0

    aput v35, v34, v36

    const/16 v35, 0x0

    const/16 v36, 0x1

    aput v35, v34, v36

    invoke-static/range {v32 .. v34}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mPetNameLayout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    if-eqz v32, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mPetNameLayout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const-string/jumbo v33, "alpha"

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [F

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mPetNameLayout:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v35

    const/16 v36, 0x0

    aput v35, v34, v36

    const/16 v35, 0x0

    const/16 v36, 0x1

    aput v35, v34, v36

    invoke-static/range {v32 .. v34}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v23

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/Button;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/Button;->setClickable(Z)V

    :goto_1
    const-wide/16 v32, 0x190

    move-wide/from16 v0, v32

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-object/from16 v32, v0

    const v33, 0x102036e

    invoke-virtual/range {v32 .. v33}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    if-eqz p6, :cond_12

    const-string/jumbo v32, "translationX"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [F

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput p2, v33, v34

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v30

    const-string/jumbo v32, "translationY"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [F

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput p3, v33, v34

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v31

    const-string/jumbo v32, "translationY"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [F

    move-object/from16 v33, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getHeight()I

    move-result v34

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0x3fd999999999999aL    # 0.4

    mul-double v34, v34, v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mMessageViewPaddingTop:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v36, v0

    add-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    const/16 v35, 0x0

    aput v34, v33, v35

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v22

    :goto_2
    const-string/jumbo v32, "scaleX"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [F

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput p4, v33, v34

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    const-string/jumbo v32, "scaleY"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [F

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput p4, v33, v34

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v27

    const v32, 0x1020303

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    const v32, 0x1020306

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    sget-boolean v32, Lcom/android/server/policy/LegacyGlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v32, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mPowerOffIconResId:I

    move/from16 v32, v0

    move/from16 v0, v16

    move/from16 v1, v32

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSafeModeEnabled:Z

    move/from16 v32, v0

    if-eqz v32, :cond_15

    if-eqz p6, :cond_14

    const v20, 0x10403b5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mIsTablet:Z

    move/from16 v32, v0

    if-eqz v32, :cond_13

    const v9, 0x10403a6

    :goto_3
    const/high16 v32, 0x3f800000    # 1.0f

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_4
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_5
    if-eqz v9, :cond_5

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    const/16 v18, 0x0

    if-eqz p6, :cond_17

    sget-boolean v32, Lcom/android/server/policy/LegacyGlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v32, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mPowerOffIconResId:I

    move/from16 v32, v0

    move/from16 v0, v16

    move/from16 v1, v32

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSafeModeEnabled:Z

    move/from16 v32, v0

    if-eqz v32, :cond_16

    const-string/jumbo v32, "alpha"

    const/16 v33, 0x0

    const/16 v34, 0xff

    filled-new-array/range {v33 .. v34}, [I

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v15, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v19

    const-string/jumbo v32, "alpha"

    const/16 v33, 0xff

    const/16 v34, 0x0

    filled-new-array/range {v33 .. v34}, [I

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v13, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v18

    :goto_6
    const-string/jumbo v32, "scaleX"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [F

    move-object/from16 v33, v0

    const v34, 0x3f6b851f    # 0.92f

    const/16 v35, 0x0

    aput v34, v33, v35

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v26

    const-string/jumbo v32, "scaleY"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [F

    move-object/from16 v33, v0

    const v34, 0x3f99999a    # 1.2f

    const/16 v35, 0x0

    aput v34, v33, v35

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v28

    :goto_7
    const-wide/16 v32, 0xc8

    move-object/from16 v0, v19

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz p6, :cond_1b

    sget-boolean v32, Lcom/android/server/policy/LegacyGlobalActions;->sIsNeedWhiteTheme:Z

    if-eqz v32, :cond_19

    const v32, 0x1060210

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_8
    sget-boolean v32, Lcom/android/server/policy/LegacyGlobalActions;->sIsNeedWhiteTheme:Z

    if-eqz v32, :cond_1a

    const/16 v29, 0x66

    const/16 v11, 0x99

    :goto_9
    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v32

    const-string/jumbo v33, "alpha"

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aput v29, v34, v35

    const/16 v35, 0x1

    aput v11, v34, v35

    invoke-static/range {v32 .. v34}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v32, Lcom/android/server/policy/LegacyGlobalActions$31;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$31;-><init>(Lcom/android/server/policy/LegacyGlobalActions;Landroid/widget/FrameLayout;)V

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-boolean v32, Lcom/android/server/policy/LegacyGlobalActions;->sIsNeedWhiteTheme:Z

    if-nez v32, :cond_6

    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v32

    const-string/jumbo v33, "backgroundColor"

    new-instance v34, Landroid/animation/ArgbEvaluator;

    invoke-direct/range {v34 .. v34}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    sget-object v36, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    const v37, 0x1060211

    const/16 v38, 0x0

    invoke-virtual/range {v36 .. v38}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    const/16 v37, 0x0

    aput-object v36, v35, v37

    sget-object v36, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    const v37, 0x1060212

    const/16 v38, 0x0

    invoke-virtual/range {v36 .. v38}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    const/16 v37, 0x1

    aput-object v36, v35, v37

    invoke-static/range {v32 .. v35}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v6, v32, v33

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_6
    move/from16 v0, p2

    float-to-int v0, v0

    move/from16 v32, v0

    const/16 v33, -0x3e8

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_7

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v30, v32, v33

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_7
    if-eqz v12, :cond_8

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v12, v32, v33

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_8
    if-eqz v23, :cond_9

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v23, v32, v33

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_9
    move/from16 v0, p3

    float-to-int v0, v0

    move/from16 v32, v0

    const/16 v33, -0x3e8

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_a

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v31, v32, v33

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_a
    if-eqz v18, :cond_b

    const-wide/16 v32, 0xc8

    move-object/from16 v0, v18

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v18, v32, v33

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_b
    move/from16 v0, p5

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v32, Landroid/view/animation/PathInterpolator;

    const v33, 0x3e2e147b    # 0.17f

    const v34, 0x3e2e147b    # 0.17f

    const v35, 0x3e4ccccd    # 0.2f

    const/high16 v36, 0x3f800000    # 1.0f

    invoke-direct/range {v32 .. v36}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_c
    const v9, 0x10403a1

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mRestartIconResId:I

    move/from16 v32, v0

    move/from16 v0, v16

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mIsTablet:Z

    move/from16 v32, v0

    if-eqz v32, :cond_e

    const v9, 0x10403a4

    goto/16 :goto_0

    :cond_e
    const v9, 0x10403a3

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mDescriptionLayout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const-string/jumbo v33, "alpha"

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [F

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mDescriptionLayout:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v35

    const/16 v36, 0x0

    aput v35, v34, v36

    const/16 v35, 0x0

    const/16 v36, 0x1

    aput v35, v34, v36

    invoke-static/range {v32 .. v34}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mBottomLayout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const-string/jumbo v33, "alpha"

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [F

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mBottomLayout:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v35

    const/16 v36, 0x0

    aput v35, v34, v36

    const/high16 v35, 0x3f800000    # 1.0f

    const/16 v36, 0x1

    aput v35, v34, v36

    invoke-static/range {v32 .. v34}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mForceRestartLayout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    if-eqz v32, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mForceRestartLayout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const-string/jumbo v33, "alpha"

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [F

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mForceRestartLayout:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v35

    const/16 v36, 0x0

    aput v35, v34, v36

    const/high16 v35, 0x3f800000    # 1.0f

    const/16 v36, 0x1

    aput v35, v34, v36

    invoke-static/range {v32 .. v34}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mPetNameLayout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    if-eqz v32, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mPetNameLayout:Landroid/widget/LinearLayout;

    move-object/from16 v32, v0

    const-string/jumbo v33, "alpha"

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [F

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mPetNameLayout:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v35

    const/16 v36, 0x0

    aput v35, v34, v36

    const/high16 v35, 0x3f800000    # 1.0f

    const/16 v36, 0x1

    aput v35, v34, v36

    invoke-static/range {v32 .. v34}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v23

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/widget/Button;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mBugReport:Landroid/widget/Button;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/widget/Button;->setClickable(Z)V

    goto/16 :goto_1

    :cond_12
    const-string/jumbo v32, "x"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [F

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput p2, v33, v34

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v30

    const-string/jumbo v32, "y"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [F

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput p3, v33, v34

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v31

    const-string/jumbo v32, "translationY"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [F

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const/16 v35, 0x0

    aput v34, v33, v35

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v22

    goto/16 :goto_2

    :cond_13
    const v9, 0x10403a5

    goto/16 :goto_3

    :cond_14
    const v20, 0x10403ae

    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_4

    :cond_15
    const/high16 v32, 0x3f800000    # 1.0f

    move/from16 v0, v32

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_5

    :cond_16
    const-string/jumbo v32, "alpha"

    const/16 v33, 0x0

    const/16 v34, 0xff

    filled-new-array/range {v33 .. v34}, [I

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v14, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v19

    goto/16 :goto_6

    :cond_17
    sget-boolean v32, Lcom/android/server/policy/LegacyGlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v32, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mPowerOffIconResId:I

    move/from16 v32, v0

    move/from16 v0, v16

    move/from16 v1, v32

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSafeModeEnabled:Z

    move/from16 v32, v0

    if-eqz v32, :cond_18

    const-string/jumbo v32, "alpha"

    const/16 v33, 0xff

    const/16 v34, 0x0

    filled-new-array/range {v33 .. v34}, [I

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v15, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v19

    const-string/jumbo v32, "alpha"

    const/16 v33, 0x0

    const/16 v34, 0xff

    filled-new-array/range {v33 .. v34}, [I

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v13, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v18

    :goto_a
    const-string/jumbo v32, "scaleX"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [F

    move-object/from16 v33, v0

    const/high16 v34, 0x3f800000    # 1.0f

    const/16 v35, 0x0

    aput v34, v33, v35

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v26

    const-string/jumbo v32, "scaleY"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [F

    move-object/from16 v33, v0

    const/high16 v34, 0x3f800000    # 1.0f

    const/16 v35, 0x0

    aput v34, v33, v35

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v28

    goto/16 :goto_7

    :cond_18
    const-string/jumbo v32, "alpha"

    const/16 v33, 0xff

    const/16 v34, 0x0

    filled-new-array/range {v33 .. v34}, [I

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v14, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v19

    goto :goto_a

    :cond_19
    const v32, 0x1060211

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_8

    :cond_1a
    const/16 v29, 0x99

    const/16 v11, 0xcc

    goto/16 :goto_9

    :cond_1b
    sget-boolean v32, Lcom/android/server/policy/LegacyGlobalActions;->sIsNeedWhiteTheme:Z

    if-eqz v32, :cond_1c

    const/16 v29, 0x99

    const/16 v11, 0x66

    goto/16 :goto_9

    :cond_1c
    const/16 v29, 0xcc

    const/16 v11, 0x99

    goto/16 :goto_9
.end method

.method private fillActionItemViews(Z)V
    .locals 5

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    invoke-virtual {v3}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getCount()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions;->findTargetView(Z)Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz p1, :cond_2

    sget-boolean v3, Lcom/android/server/policy/LegacyGlobalActions;->sIsSViewCoverClosed:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemPortraitDividerSViewCover:I

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemDivider:I

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    invoke-virtual {v3, v1}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/LegacyGlobalActions$Action;

    move-result-object v3

    invoke-direct {p0, v3, v1, p1}, Lcom/android/server/policy/LegacyGlobalActions;->makeActionsItemView(Lcom/android/server/policy/LegacyGlobalActions$Action;IZ)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    invoke-virtual {v3}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_1

    iget v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemPortraitDivider:I

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemDivider:I

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemPortraitDividerOverFour:I

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemDivider:I

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemLandscapeDivider:I

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemDividerLand:I

    goto :goto_0

    :cond_3
    return-void
.end method

.method private findTargetScrollView(Z)Landroid/view/ViewGroup;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mScrollview:Landroid/widget/ScrollView;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    goto :goto_0
.end method

.method private findTargetView(Z)Landroid/view/ViewGroup;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method private getActionViewByTag(I)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    invoke-virtual {v3}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isPortrait()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/policy/LegacyGlobalActions;->findTargetView(Z)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x1020006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_0

    iput v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSelectedItemNumbyBixby:I

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method private getAssistAction()Lcom/android/server/policy/LegacyGlobalActions$Action;
    .locals 3

    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$34;

    const v1, 0x1080376

    const v2, 0x1040394

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$34;-><init>(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-object v0
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private getLockdownAction()Lcom/android/server/policy/LegacyGlobalActions$Action;
    .locals 3

    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$36;

    const v1, 0x108002f

    const v2, 0x10403ad

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$36;-><init>(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-object v0
.end method

.method private getMarginStartAtCenter(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsInitWidthHeight:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->initDialogWidthHeight()V

    :cond_0
    iget v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDisplayWidth:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getMarginTopAtCenter(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsInitWidthHeight:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->initDialogWidthHeight()V

    :cond_0
    iget v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDisplayHeight:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getPhoneId(I)I
    .locals 2

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    return v0
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 2

    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$40;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/LegacyGlobalActions$40;-><init>(Lcom/android/server/policy/LegacyGlobalActions;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private getSettingsAction()Lcom/android/server/policy/LegacyGlobalActions$Action;
    .locals 3

    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$33;

    const v1, 0x10804e1

    const v2, 0x10403ba

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$33;-><init>(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-object v0
.end method

.method private getVoiceAssistAction()Lcom/android/server/policy/LegacyGlobalActions$Action;
    .locals 3

    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$35;

    const v1, 0x1080503

    const v2, 0x10403c1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$35;-><init>(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-object v0
.end method

.method private handleShow()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v2, "LegacyGlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleShow() : call createDialog(), sIsCoverOpen = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/server/policy/LegacyGlobalActions;->sIsCoverOpen:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->awakenIfNecessary()V

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isCoverOpened()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isMobileKeyboard()Z

    move-result v2

    :goto_0
    sput-boolean v2, Lcom/android/server/policy/LegacyGlobalActions;->sIsCoverOpen:Z

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isClearCover()Z

    move-result v2

    sput-boolean v2, Lcom/android/server/policy/LegacyGlobalActions;->sIsClearCover:Z

    sget-boolean v2, Lcom/android/server/policy/LegacyGlobalActions;->sIsCoverOpen:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/server/policy/LegacyGlobalActions;->sIsClearCover:Z

    xor-int/lit8 v2, v2, 0x1

    :goto_1
    sput-boolean v2, Lcom/android/server/policy/LegacyGlobalActions;->sIsSViewCoverClosed:Z

    sget-boolean v2, Lcom/android/server/policy/LegacyGlobalActions;->sIsCoverOpen:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/server/policy/LegacyGlobalActions;->sIsClearCover:Z

    :goto_2
    sput-boolean v2, Lcom/android/server/policy/LegacyGlobalActions;->sIsClearCoverClosed:Z

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/server/policy/LegacyGlobalActions;->sIsCoverOpen:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getModel()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_3

    const-string/jumbo v2, "LegacyGlobalActions"

    const-string/jumbo v3, "Device is not supported in Global Actions in main view, show panel in cocktail bar"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->notifyStateToCocktailBar()V

    return-void

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->createDialog()Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    if-nez v2, :cond_4

    const-string/jumbo v2, "LegacyGlobalActions"

    const-string/jumbo v3, "Can not show dialog as it is not well formed properly"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mWindow:Landroid/view/Window;

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->prepareDialog()V

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    invoke-virtual {v2}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getCount()I

    move-result v2

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    invoke-virtual {v2, v4}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/LegacyGlobalActions$Action;

    move-result-object v2

    instance-of v2, v2, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    invoke-virtual {v2, v4}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/LegacyGlobalActions$Action;

    move-result-object v2

    instance-of v2, v2, Lcom/android/server/policy/LegacyGlobalActions$LongPressAction;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    invoke-virtual {v2, v4}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/LegacyGlobalActions$Action;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;

    invoke-virtual {v2}, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->onPress()V

    :goto_3
    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    sget-object v2, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    const v5, 0x10403c2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iput-boolean v3, v0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget-boolean v2, Lcom/android/server/policy/LegacyGlobalActions;->sIsCoverOpen:Z

    if-nez v2, :cond_6

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_6
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v2, 0x3e19999a    # 0.15f

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v7, v7}, Landroid/view/Window;->setLayout(II)V

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mWindow:Landroid/view/Window;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v4}, Landroid/view/Window;->setWindowAnimations(I)V

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/high16 v1, 0x10000

    iget-boolean v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mShowNavigationBar:Z

    if-eqz v2, :cond_8

    const v1, 0x10200

    sget-boolean v2, Lcom/android/server/policy/LegacyGlobalActions;->sIsNeedWhiteTheme:Z

    if-eqz v2, :cond_7

    or-int/lit8 v1, v1, 0x10

    :cond_7
    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_8
    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;->show()V

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mScrollview:Landroid/widget/ScrollView;

    invoke-virtual {v2, v8}, Landroid/widget/ScrollView;->setVisibility(I)V

    :cond_9
    :goto_4
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->hideQuickPanelBackground()V

    goto/16 :goto_3

    :cond_a
    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v8}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_4
.end method

.method private hasTSafeLock()Z
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "com.skt.t_smart_charge"

    :try_start_0
    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "com.skt.t_smart_charge"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    return v7
.end method

.method private hideConfirmDialog(ZZ)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions;->findTargetView(Z)Landroid/view/ViewGroup;

    move-result-object v11

    const/4 v7, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_7

    invoke-virtual {v11, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSelectedItemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x10202de

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const v0, 0x10204f9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    if-eqz p1, :cond_5

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemMaxWidth:I

    const/4 v2, -0x2

    invoke-direct {v9, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getCount()I

    move-result v0

    add-int/lit8 v2, v7, 0x1

    sub-int/2addr v0, v2

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemDivider:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v9, v2, v3, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :cond_4
    invoke-virtual {v1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, -0x3b860000    # -1000.0f

    iget v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCurrentPositionY:F

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x12c

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/LegacyGlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_1

    :cond_5
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemWidthLand:I

    const/4 v2, -0x2

    invoke-direct {v9, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getCount()I

    move-result v0

    add-int/lit8 v2, v7, 0x1

    sub-int/2addr v0, v2

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemDividerLand:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v9, v2, v3, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :cond_6
    invoke-virtual {v1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCurrentPositionXLand:F

    iget v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCurrentPositionYLand:F

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x12c

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/LegacyGlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_1

    :cond_7
    sget-boolean v0, Lcom/android/server/policy/LegacyGlobalActions;->sAccessibilityShortcutEnabled:Z

    if-nez v0, :cond_8

    xor-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/LegacyGlobalActions;->sIsConfirmDlg:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSafeModeEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsConfirmPowerOffOnClearCover:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsConfirmRestartOnClearCover:Z

    :cond_8
    return-void
.end method

.method private hideDecorView()V
    .locals 6

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/server/policy/LegacyGlobalActions$41;

    invoke-direct {v3, p0, v0}, Lcom/android/server/policy/LegacyGlobalActions$41;-><init>(Lcom/android/server/policy/LegacyGlobalActions;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private hideQuickPanelBackground()V
    .locals 1

    const-string/jumbo v0, "GlobalActions"

    invoke-direct {p0, v0}, Lcom/android/server/policy/LegacyGlobalActions;->hideQuickPanelBackground(Ljava/lang/String;)V

    return-void
.end method

.method private hideQuickPanelBackground(Ljava/lang/String;)V
    .locals 4

    sget-boolean v1, Lcom/android/server/policy/LegacyGlobalActions;->sIsCoverOpen:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions;->sSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initCoverManager(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    const-string/jumbo v0, "LegacyGlobalActions"

    const-string/jumbo v1, "initCoverManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    const-string/jumbo v0, "LegacyGlobalActions"

    const-string/jumbo v1, "mCoverManager.registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private initDialogWidthHeight()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDisplayWidth:I

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDisplayHeight:I

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsInitWidthHeight:Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDisplayWidth:I

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDisplayHeight:I

    goto :goto_0
.end method

.method private initValueForShow()V
    .locals 9

    const/4 v8, 0x2

    const/4 v3, 0x1

    const v7, 0x3f5c28f6    # 0.86f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sput-object v5, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    sget-object v5, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v5, Lcom/android/server/policy/LegacyGlobalActions;->sCurrentDensity:I

    sget-object v5, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDisplayWidth:I

    sget-object v5, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDisplayHeight:I

    sget-object v5, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    const v6, 0x1050358

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemHeight:I

    sget-object v5, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    const v6, 0x105036a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemWidth:I

    sget-object v5, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    const v6, 0x105036b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemWidthLand:I

    iget v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDisplayWidth:I

    iget v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDisplayHeight:I

    if-ge v5, v6, :cond_2

    iget v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDisplayWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemMaxWidth:I

    iget v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDisplayHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemMaxWidthLand:I

    :goto_0
    sget-object v5, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    const v6, 0x1050363

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemMaxWidthForClearCoverClosed:I

    sget-object v5, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    const v6, 0x1050364

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemMaxWidthForSViewCoverClosed:I

    sget-object v5, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    const v6, 0x105035f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemPortraitDivider:I

    sget-object v5, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    const v6, 0x1050361

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemPortraitDividerOverFour:I

    sget-object v5, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    const v6, 0x1050360

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemPortraitDividerSViewCover:I

    sget-object v5, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    const v6, 0x105035b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemLandscapeDivider:I

    sget-object v5, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    const v6, 0x1050367

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBottomViewSingleItemWidth:I

    sget-object v5, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    const v6, 0x1050366

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBottomViewSingleItemHeight:I

    sget-object v5, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    const v6, 0x105035e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mMessageViewPaddingTop:I

    sget-object v5, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    const v6, 0x105035d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mMessageViewPaddingBottom:I

    sget-object v5, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    const v6, 0x1060215

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->sBugReportStatusViewColorWhite:I

    sget-object v5, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    const v6, 0x106021a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    sput v5, Lcom/android/server/policy/LegacyGlobalActions;->sMessageViewColorWhite:I

    sget-object v5, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    const v6, 0x106021d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    sput v5, Lcom/android/server/policy/LegacyGlobalActions;->sStatusViewColorWhite:I

    sget-object v5, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    const v6, 0x10e011b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/android/server/policy/LegacyGlobalActions;->sMessageViewTextSize:I

    sget-object v5, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    const v6, 0x10e011c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/android/server/policy/LegacyGlobalActions;->sStatusViewTextSize:I

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    invoke-virtual {v5}, Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    iput v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSelectedItemTagForSecure:I

    :cond_0
    iput v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSelectedItemTagForBixby:I

    const/4 v5, -0x1

    iput v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSelectedItemNumbyBixby:I

    iput-boolean v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsConfirmPowerOffOnClearCover:Z

    iput-boolean v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsConfirmRestartOnClearCover:Z

    iput-boolean v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsInitWidthHeight:Z

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v5}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    sget-boolean v5, Lcom/android/server/policy/LegacyGlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/server/policy/LegacyGlobalActions;->captureScreen(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isPortrait()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v2, Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDisplayWidth:I

    iget v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDisplayHeight:I

    invoke-direct {v2, v4, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_1
    invoke-static {v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$ExtractColor;->getColorHSV(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)[F

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v5, "LegacyGlobalActions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Whole Area Hue="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v0, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", Saturation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v0, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", Brightness="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v0, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget v5, v0, v3

    const v6, 0x3e99999a    # 0.3f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    aget v5, v0, v8

    const v6, 0x3f6147ae    # 0.88f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_4

    :goto_2
    sput-boolean v3, Lcom/android/server/policy/LegacyGlobalActions;->sIsNeedWhiteTheme:Z

    :cond_1
    const v3, 0x1080aa1

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPowerOffIconResId:I

    const v3, 0x1080aa0

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mConfirmPowerOffIconResId:I

    const v3, 0x1080aa5

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mRestartIconResId:I

    const v3, 0x1080aa4

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mConfirmRestartIconResId:I

    const v3, 0x1080a9c

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mEmergencyIconResId:I

    const v3, 0x1080aa7

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSafeModeIconResId:I

    sget-object v3, Lcom/android/server/policy/LegacyGlobalActions;->PRODUCT_NAME:Ljava/lang/String;

    const-string/jumbo v4, "gracer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/policy/LegacyGlobalActions;->sIsGraceR:Z

    :goto_3
    return-void

    :cond_2
    iget v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDisplayHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemMaxWidth:I

    iget v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDisplayWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemMaxWidthLand:I

    goto/16 :goto_0

    :cond_3
    new-instance v2, Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDisplayHeight:I

    iget v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDisplayWidth:I

    invoke-direct {v2, v4, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_1

    :cond_4
    move v3, v4

    goto :goto_2

    :cond_5
    const v3, 0x1080a9e

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPowerOffIconResId:I

    const v3, 0x1080a9f

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mConfirmPowerOffIconResId:I

    const v3, 0x1080aa2

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mRestartIconResId:I

    const v3, 0x1080aa3

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mConfirmRestartIconResId:I

    const v3, 0x1080a9b

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mEmergencyIconResId:I

    const v3, 0x1080aa7

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSafeModeIconResId:I

    goto :goto_3
.end method

.method private insertLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    sget-boolean v2, Lcom/android/server/policy/LegacyGlobalActions;->SURVEY_LOG:Z

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.android.service.GlobalAction"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-boolean v2, Lcom/android/server/policy/LegacyGlobalActions;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "LegacyGlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insetLog feature="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,extra="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private isActionAvailable(I)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSecureKeyguard:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSafeModeEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPowerOffIconResId:I

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isTSafeLock()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPowerOffIconResId:I

    if-ne p1, v0, :cond_0

    const v0, 0x10403da

    invoke-direct {p0, v0, v3}, Lcom/android/server/policy/LegacyGlobalActions;->showToast(II)V

    :cond_0
    return v4

    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isSKTCarrierLockPlusEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isFMMLocked()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    iget v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPowerOffIconResId:I

    if-eq p1, v0, :cond_3

    iget v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mRestartIconResId:I

    if-ne p1, v0, :cond_5

    :cond_3
    iget v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPowerOffIconResId:I

    if-ne p1, v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSafeModeEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    const v0, 0x10403db

    invoke-direct {p0, v0, v3}, Lcom/android/server/policy/LegacyGlobalActions;->showToast(II)V

    :cond_4
    :goto_0
    return v4

    :cond_5
    iget v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mEmergencyIconResId:I

    if-eq p1, v0, :cond_3

    :cond_6
    iget v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPowerOffIconResId:I

    if-eq p1, v0, :cond_7

    iget v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mRestartIconResId:I

    if-ne p1, v0, :cond_c

    :cond_7
    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v1, "isPowerOffAllowed"

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mTrueStringArray:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/android/server/policy/LegacyGlobalActions;->SAFE_DEBUG:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "LegacyGlobalActions"

    const-string/jumbo v1, "power or restart : restricted by MDM "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v4

    :cond_9
    iget v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mRestartIconResId:I

    if-eq p1, v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSafeModeEnabled:Z

    if-eqz v0, :cond_b

    :cond_a
    const v0, 0x10403dd

    invoke-direct {p0, v0, v3}, Lcom/android/server/policy/LegacyGlobalActions;->showToast(II)V

    goto :goto_0

    :cond_b
    iget v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mEmergencyIconResId:I

    if-ne p1, v0, :cond_4

    const v0, 0x10403d8

    invoke-direct {p0, v0, v3}, Lcom/android/server/policy/LegacyGlobalActions;->showToast(II)V

    goto :goto_0

    :cond_c
    return v3
.end method

.method private isCHINA()Z
    .locals 2

    const-string/jumbo v0, "CMCC"

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "CHM"

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isClearCover()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isCoverOpened()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LegacyGlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCoverManager.getCoverState() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "LegacyGlobalActions"

    const-string/jumbo v1, "state is null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const-string/jumbo v0, "LegacyGlobalActions"

    const-string/jumbo v1, "mCoverManager is null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private isCurrentUserOwner()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    const-string/jumbo v7, ""

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-nez p3, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :cond_0
    :goto_0
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v7

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isFMMLocked()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v0

    return v0
.end method

.method private isGlobalActionConfirming()Z
    .locals 2

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/policy/LegacyGlobalActions;->sIsConfirming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isInAirplaneModeFromSettings()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isIntEDM(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/policy/LegacyGlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/policy/LegacyGlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private isMobileKeyboard()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private isMultiSim()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPortrait()Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRMMLocked()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isRMMLockEnabled(I)Z

    move-result v0

    return v0
.end method

.method private isSBikeInstalled()Z
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v3, "com.samsung.android.app.bikemode"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSKTCarrierLockPlusEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled(I)Z

    move-result v0

    return v0
.end method

.method private isSecureConfirmAction(I)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "device_policy"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_0

    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "lock_function_val"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :goto_1
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    :goto_2
    iput-boolean v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSecureKeyguard:Z

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isSimLock()Z

    move-result v4

    if-eqz v4, :cond_3

    return v5

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isRMMLocked()Z

    move-result v4

    if-eqz v4, :cond_4

    return v5

    :cond_4
    iget v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mRestartIconResId:I

    if-ne p1, v4, :cond_6

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    const/4 v1, 0x1

    :cond_5
    iget-boolean v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSecureKeyguard:Z

    if-eqz v4, :cond_a

    sget-boolean v4, Lcom/android/server/policy/LegacyGlobalActions;->sIsCoverOpen:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_a

    if-eqz v1, :cond_9

    iput-boolean v7, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsConfirmRestartOnClearCover:Z

    const v4, 0x10403de

    invoke-direct {p0, v4, v7}, Lcom/android/server/policy/LegacyGlobalActions;->showToast(II)V

    :goto_3
    return v7

    :cond_6
    iget v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPowerOffIconResId:I

    if-ne p1, v4, :cond_7

    iget-boolean v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSafeModeEnabled:Z

    if-eqz v4, :cond_8

    :cond_7
    return v5

    :cond_8
    if-nez v2, :cond_5

    return v5

    :cond_9
    iput-boolean v7, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsConfirmPowerOffOnClearCover:Z

    const v4, 0x10403dc

    invoke-direct {p0, v4, v7}, Lcom/android/server/policy/LegacyGlobalActions;->showToast(II)V

    goto :goto_3

    :cond_a
    iget-boolean v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSecureKeyguard:Z

    if-eqz v4, :cond_c

    iput p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSelectedItemTagForSecure:I

    if-eqz v1, :cond_b

    const-string/jumbo v4, "LegacyGlobalActions"

    const-string/jumbo v5, "isFMMLocked true - Restart"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->sendBendedPendingIntent()V

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v7

    :cond_b
    const-string/jumbo v4, "LegacyGlobalActions"

    const-string/jumbo v5, "isFMMLocked true - Power off"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_c
    return v5
.end method

.method private isSimCardInserted(I)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "ril.MSIMM"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz p1, :cond_0

    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "ril.ICC_TYPE"

    const-string/jumbo v7, "0,0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v6, v0

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    return v5

    :cond_2
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_1
    if-eqz v2, :cond_4

    const-string/jumbo v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    :goto_2
    if-nez v6, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    move v5, v4

    :cond_3
    return v5

    :pswitch_0
    aget-object v2, v0, v5

    goto :goto_1

    :pswitch_1
    aget-object v2, v0, v4

    goto :goto_1

    :cond_4
    move v6, v4

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isSimLock()Z
    .locals 10

    const/16 v9, 0xa

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    new-array v0, v1, [I

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isMultiSim()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    aput v5, v0, v4

    aget v5, v0, v4

    if-eq v5, v7, :cond_0

    aget v5, v0, v4

    if-ne v5, v8, :cond_1

    :cond_0
    move v5, v6

    :goto_1
    or-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    aget v5, v0, v4

    if-ne v5, v9, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    if-eq v2, v7, :cond_4

    if-ne v2, v8, :cond_6

    :cond_4
    const/4 v3, 0x1

    :cond_5
    :goto_2
    return v3

    :cond_6
    if-ne v2, v9, :cond_7

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private isSimReady()Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const-string/jumbo v5, "ro.config.donot_nosim"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v0, :cond_0

    if-ne v0, v8, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    if-nez v3, :cond_2

    if-eqz v4, :cond_2

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x10403aa

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v5, 0x10403ab

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x96b

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    new-instance v5, Lcom/android/server/policy/LegacyGlobalActions$39;

    invoke-direct {v5, p0}, Lcom/android/server/policy/LegacyGlobalActions$39;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    sget-object v5, Lcom/android/server/policy/LegacyGlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v5

    const/4 v6, 0x1

    :try_start_0
    sput-boolean v6, Lcom/android/server/policy/LegacyGlobalActions;->sIsConfirming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return v7

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v5

    throw v6

    :cond_2
    return v8
.end method

.method private isSingleActionItem(Landroid/view/View;)Z
    .locals 4

    const/4 v3, 0x1

    const v2, 0x1020006

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPowerOffIconResId:I

    if-eq v1, v2, :cond_0

    iget v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mRestartIconResId:I

    if-ne v1, v2, :cond_1

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isTSafeLock()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->hasTSafeLock()Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    const-string/jumbo v0, "off_menu_setting"

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "off_menu_setting"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private isTablet()Z
    .locals 2

    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTouchInside(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x2

    new-array v0, v6, [I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    aget v7, v0, v5

    int-to-float v7, v7

    sub-float v2, v6, v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    aget v7, v0, v4

    int-to-float v7, v7

    sub-float v3, v6, v7

    sget-boolean v6, Lcom/android/server/policy/LegacyGlobalActions;->sIsConfirmDlg:Z

    if-eqz v6, :cond_0

    const v1, 0x3fa66666    # 1.3f

    :cond_0
    cmpg-float v6, v2, v8

    if-ltz v6, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    cmpl-float v6, v2, v6

    if-lez v6, :cond_2

    :cond_1
    :goto_0
    xor-int/lit8 v4, v4, 0x1

    return v4

    :cond_2
    cmpg-float v6, v3, v8

    if-ltz v6, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    cmpl-float v6, v3, v6

    if-gtz v6, :cond_1

    move v4, v5

    goto :goto_0
.end method

.method private isUSA()Z
    .locals 2

    const-string/jumbo v0, "USA"

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions;->COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "VZW"

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ATT"

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "TMB"

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SPR"

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "VMU"

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "MTR"

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "USC"

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "BST"

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "XAS"

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "LRA"

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SPT"

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "CSP"

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "AIO"

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "TFN"

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "CRI"

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "TFV"

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "TFO"

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "TFA"

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isVoiceAssistantOn()Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isVoiceCapable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    return v0
.end method

.method private makeActionsItemView(Lcom/android/server/policy/LegacyGlobalActions$Action;IZ)Landroid/view/View;
    .locals 20

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v15}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v14, v1, v2, v15}, Lcom/android/server/policy/LegacyGlobalActions$Action;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v12

    const v14, 0x1020006

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v14, 0x1020303

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v14, 0x1020306

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v14, 0x10202de

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/policy/LegacyGlobalActions;->mPowerOffIconResId:I

    if-ne v7, v14, :cond_4

    sget-object v14, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/LegacyGlobalActions;->mConfirmPowerOffIconResId:I

    sget v16, Lcom/android/server/policy/LegacyGlobalActions;->sCurrentDensity:I

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setAlpha(F)V

    sget-object v14, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/LegacyGlobalActions;->mSafeModeIconResId:I

    sget v16, Lcom/android/server/policy/LegacyGlobalActions;->sCurrentDensity:I

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    :goto_0
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/view/View;->setAlpha(F)V

    if-eqz p3, :cond_5

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/policy/LegacyGlobalActions;->mItemMaxWidth:I

    const/4 v15, -0x2

    invoke-direct {v9, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    invoke-virtual {v14}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getCount()I

    move-result v14

    add-int/lit8 v15, p2, 0x1

    sub-int/2addr v14, v15

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/policy/LegacyGlobalActions;->mItemDivider:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v1, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :cond_1
    :goto_1
    invoke-virtual {v12, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v12}, Landroid/view/View;->bringToFront()V

    if-eqz v8, :cond_3

    if-eqz p3, :cond_2

    const v14, 0x10204f9

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    sget-boolean v14, Lcom/android/server/policy/LegacyGlobalActions;->sIsSViewCoverClosed:Z

    if-eqz v14, :cond_2

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    iget v11, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/policy/LegacyGlobalActions;->SUPPORT_DATAMODE_ACTION:Z

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_2

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setHeight(I)V

    :cond_2
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Landroid/widget/FrameLayout;->setClickable(Z)V

    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    new-instance v14, Lcom/android/server/policy/LegacyGlobalActions$18;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v14, v0, v1, v12, v2}, Lcom/android/server/policy/LegacyGlobalActions$18;-><init>(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$Action;Landroid/view/View;Z)V

    invoke-virtual {v8, v14}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v14, Lcom/android/server/policy/LegacyGlobalActions$19;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v14, v0, v1, v12, v2}, Lcom/android/server/policy/LegacyGlobalActions$19;-><init>(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$Action;Landroid/view/View;Z)V

    invoke-virtual {v8, v14}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v14, Lcom/android/server/policy/LegacyGlobalActions$20;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v14, v0, v1, v12, v2}, Lcom/android/server/policy/LegacyGlobalActions$20;-><init>(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$Action;Landroid/view/View;Z)V

    invoke-virtual {v8, v14}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/LegacyGlobalActions;->isVoiceAssistantOn()Z

    move-result v14

    if-eqz v14, :cond_6

    const-string/jumbo v14, "LegacyGlobalActions"

    const-string/jumbo v15, "AccessibilityManager Enabled"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v14, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    sget v15, Lcom/android/server/policy/LegacyGlobalActions;->sCurrentDensity:I

    const v16, 0x1080354

    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    invoke-virtual {v12}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v14, v15}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    const-wide/16 v16, 0x258

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    new-instance v15, Landroid/view/animation/PathInterpolator;

    const v16, 0x3ebd70a4    # 0.37f

    const/16 v17, 0x0

    const v18, 0x3e99999a    # 0.3f

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-direct/range {v15 .. v19}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v14, v15}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    return-object v12

    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/policy/LegacyGlobalActions;->mRestartIconResId:I

    if-ne v7, v14, :cond_0

    sget-object v14, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/LegacyGlobalActions;->mConfirmRestartIconResId:I

    sget v16, Lcom/android/server/policy/LegacyGlobalActions;->sCurrentDensity:I

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_0

    :cond_5
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/policy/LegacyGlobalActions;->mItemWidthLand:I

    const/4 v15, -0x2

    invoke-direct {v9, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    invoke-virtual {v14}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getCount()I

    move-result v14

    add-int/lit8 v15, p2, 0x1

    sub-int/2addr v14, v15

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/policy/LegacyGlobalActions;->mItemDividerLand:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v15, v0, v14, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v14, "LegacyGlobalActions"

    const-string/jumbo v15, "AccessibilityManager Disabled"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v14, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    sget v15, Lcom/android/server/policy/LegacyGlobalActions;->sCurrentDensity:I

    const v16, 0x1080355

    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2
.end method

.method private makeActionsItems()V
    .locals 15

    const v14, 0x10403b2

    const/16 v13, 0x32

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, -0x1

    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeAction;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$SilentModeAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSilentModeAction:Lcom/android/server/policy/LegacyGlobalActions$SilentModeAction;

    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$21;

    sget-boolean v1, Lcom/android/server/policy/LegacyGlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v1, :cond_1

    const v2, 0x1080a98

    :goto_0
    sget-boolean v1, Lcom/android/server/policy/LegacyGlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v1, :cond_2

    const v3, 0x1080a98

    :goto_1
    const v4, 0x10403bd

    const v5, 0x10403a8

    const v6, 0x10403a7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/LegacyGlobalActions$21;-><init>(Lcom/android/server/policy/LegacyGlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDataModeAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$22;

    const v2, 0x1080aa9

    const v3, 0x1080aaa

    const v4, 0x10403d0

    const v5, 0x10403c7

    const v6, 0x10403c3

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/LegacyGlobalActions$22;-><init>(Lcom/android/server/policy/LegacyGlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->onAirplaneModeChanged()V

    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$23;

    const v2, 0x1080ab1

    const v3, 0x1080ab0

    const v4, 0x10403d4

    const v5, 0x10403cf

    const v6, 0x10403ce

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/LegacyGlobalActions$23;-><init>(Lcom/android/server/policy/LegacyGlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSubScreenAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$24;

    sget-boolean v1, Lcom/android/server/policy/LegacyGlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v1, :cond_3

    const v2, 0x1080a9c

    :goto_2
    sget-boolean v1, Lcom/android/server/policy/LegacyGlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v1, :cond_4

    const v3, 0x1080a9c

    :goto_3
    const v4, 0x10403d3

    const v5, 0x10403cd

    const v6, 0x10403cc

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/LegacyGlobalActions$24;-><init>(Lcom/android/server/policy/LegacyGlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mEmergencyAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/policy/LegacyGlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x10403b3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x10403b0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v13, v11, v13, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/policy/LegacyGlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v12}, Landroid/widget/EditText;->setGravity(I)V

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    invoke-virtual {v8, v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/server/policy/LegacyGlobalActions$25;

    invoke-direct {v1, p0}, Lcom/android/server/policy/LegacyGlobalActions$25;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/server/policy/LegacyGlobalActions$26;

    invoke-direct {v1, p0}, Lcom/android/server/policy/LegacyGlobalActions$26;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$27;

    sget-boolean v1, Lcom/android/server/policy/LegacyGlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v1, :cond_5

    const v2, 0x1080420

    :goto_4
    sget-boolean v1, Lcom/android/server/policy/LegacyGlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v1, :cond_6

    const v3, 0x1080420

    :goto_5
    const v4, 0x10403be

    move-object v1, p0

    move v5, v14

    move v6, v14

    invoke-direct/range {v0 .. v7}, Lcom/android/server/policy/LegacyGlobalActions$27;-><init>(Lcom/android/server/policy/LegacyGlobalActions;IIIIILandroid/app/AlertDialog;)V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mProKioskAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    new-instance v1, Lcom/android/server/policy/LegacyGlobalActions$28;

    sget-boolean v0, Lcom/android/server/policy/LegacyGlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v0, :cond_7

    const v0, 0x1080aa5

    :goto_6
    const v2, 0x10403b4

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/policy/LegacyGlobalActions$28;-><init>(Lcom/android/server/policy/LegacyGlobalActions;II)V

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mRestartAction:Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->SUPPORT_BIKEMODE_ACTION:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isSBikeInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$29;

    sget-boolean v1, Lcom/android/server/policy/LegacyGlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v1, :cond_8

    const v2, 0x1080a95

    :goto_7
    sget-boolean v1, Lcom/android/server/policy/LegacyGlobalActions;->sSupportBlackWhiteTheme:Z

    if-eqz v1, :cond_9

    const v3, 0x1080a95

    :goto_8
    const v4, 0x1040395

    const v5, 0x1040399

    const v6, 0x1040398

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/LegacyGlobalActions$29;-><init>(Lcom/android/server/policy/LegacyGlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBikeModeAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBikeModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void

    :cond_1
    const v2, 0x1080a97

    goto/16 :goto_0

    :cond_2
    const v3, 0x1080a97

    goto/16 :goto_1

    :cond_3
    const v2, 0x1080a9b

    goto/16 :goto_2

    :cond_4
    const v3, 0x1080a9b

    goto/16 :goto_3

    :cond_5
    const v2, 0x108041f

    goto :goto_4

    :cond_6
    const v3, 0x108041f

    goto :goto_5

    :cond_7
    const v0, 0x1080aa2

    goto :goto_6

    :cond_8
    const v2, 0x1080aab

    goto :goto_7

    :cond_9
    const v3, 0x1080aab

    goto :goto_8
.end method

.method private notifyStateToCocktailBar()V
    .locals 4

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "LegacyGlobalActions"

    const-string/jumbo v3, "notifyStateToCocktailBar"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "show_global_actions"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sendExtraDataToCocktailBar(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private onAirplaneModeChanged()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasTelephony:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isInAirplaneModeFromSettings()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;)V

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    goto :goto_0
.end method

.method private onToggleDatamode()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDataModeAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    invoke-virtual {v0}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->onPressAction()V

    sget-boolean v0, Lcom/android/server/policy/LegacyGlobalActions;->sIsCoverOpen:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/policy/LegacyGlobalActions;->sIsSecondConfirming:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/android/server/policy/LegacyGlobalActions;->sIsConfirming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->clearSCoverRequestStatus()V

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    sput-boolean v4, Lcom/android/server/policy/LegacyGlobalActions;->sIsSecondConfirming:Z

    goto :goto_0
.end method

.method private performItemLongClickForSafemode(Lcom/android/server/policy/LegacyGlobalActions$Action;Landroid/view/View;Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string/jumbo v1, "no_safe_boot"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSafeModeEnabled:Z

    sget-boolean v1, Lcom/android/server/policy/LegacyGlobalActions;->sIsConfirmDlg:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/policy/LegacyGlobalActions;->setSafemodeIcon(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/LegacyGlobalActions;->actionClicked(Lcom/android/server/policy/LegacyGlobalActions$Action;Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private prepareDialog()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->updateToggleActionState()V

    sget-boolean v1, Lcom/android/server/policy/LegacyGlobalActions;->sIsCoverOpen:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mWindow:Landroid/view/Window;

    const/16 v2, 0x96b

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    :goto_0
    iget-boolean v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->registerSecureLockReceiver()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mWindow:Landroid/view/Window;

    const/16 v2, 0x833

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method private registerBixbyReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.intent.action.BIXBY_GLOBAL_ACTIONS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBixbyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerPhoneStateListener(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPhoneCount:I

    const-string/jumbo v3, "LegacyGlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerPhoneStateListener: sim# "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPhoneCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPhoneCount:I

    new-array v3, v3, [Landroid/telephony/PhoneStateListener;

    iput-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    iget v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPhoneCount:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mMSimServiceState:[I

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPhoneCount:I

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    if-eqz v2, :cond_0

    aget v1, v2, v6

    if-lez v1, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1}, Lcom/android/server/policy/LegacyGlobalActions;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :goto_1
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mMSimServiceState:[I

    aput v6, v3, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v6}, Lcom/android/server/policy/LegacyGlobalActions;->isSimCardInserted(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v7}, Lcom/android/server/policy/LegacyGlobalActions;->isSimCardInserted(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1}, Lcom/android/server/policy/LegacyGlobalActions;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aput-object v8, v3, v0

    goto :goto_1

    :cond_3
    return-void
.end method

.method private registerSecureLockReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SHOW_GLOBAL_ACTIONS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private restoreQuickPanelBackground()V
    .locals 1

    const-string/jumbo v0, "GlobalActions"

    invoke-direct {p0, v0}, Lcom/android/server/policy/LegacyGlobalActions;->restoreQuickPanelBackground(Ljava/lang/String;)V

    return-void
.end method

.method private restoreQuickPanelBackground(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v1, Lcom/android/server/policy/LegacyGlobalActions;->sIsCoverOpen:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.cover.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "miniModeUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "sender"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendBendedPendingIntent()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SHOW_GLOBAL_ACTIONS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    const/high16 v5, 0x8000000

    invoke-static {v4, v6, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "afterKeyguardGone"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "dismissType"

    const-string/jumbo v5, "shutdown"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "LegacyGlobalActions"

    const-string/jumbo v5, "sendBendedPendingIntent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v3, v0}, Landroid/app/KeyguardManager;->setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    return-void
.end method

.method private static setLimitTextSizeToLarge(Landroid/widget/TextView;I)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    const v0, 0x3fa66666    # 1.3f

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->fontScale:F

    const v2, 0x3fa66666    # 1.3f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    const v1, 0x3fa66666    # 1.3f

    :cond_1
    int-to-float v2, p1

    mul-float/2addr v2, v1

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private setSafemodeIcon(Landroid/view/View;)V
    .locals 20

    const v15, 0x10202de

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    const v15, 0x102000b

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v15, 0x10204f9

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/LegacyGlobalActions;->mDescriptionLayout:Landroid/widget/LinearLayout;

    const v16, 0x10201e6

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v15, 0x1020006

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v15, 0x1020303

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v15, 0x1020306

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getAlpha()F

    move-result v15

    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v15, v15, v16

    if-nez v15, :cond_0

    return-void

    :cond_0
    invoke-virtual {v12}, Landroid/widget/TextView;->getHeight()I

    move-result v15

    invoke-virtual {v14}, Landroid/widget/TextView;->getHeight()I

    move-result v16

    add-int v15, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v15}, Lcom/android/server/policy/LegacyGlobalActions;->updateDescViewHeight(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/policy/LegacyGlobalActions;->mIsTablet:Z

    if-eqz v15, :cond_2

    const v3, 0x10403a6

    :goto_0
    const v15, 0x10403b5

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setAlpha(F)V

    const-string/jumbo v15, "alpha"

    const/16 v16, 0x0

    const/16 v17, 0xff

    filled-new-array/range {v16 .. v17}, [I

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v7, v15, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v11

    const-string/jumbo v15, "alpha"

    const/16 v16, 0xff

    const/16 v17, 0x0

    filled-new-array/range {v16 .. v17}, [I

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v5, v15, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-string/jumbo v15, "alpha"

    const/16 v16, 0xff

    const/16 v17, 0x0

    filled-new-array/range {v16 .. v17}, [I

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v6, v15, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const-wide/16 v16, 0xc8

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v16, 0xc8

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v16, 0xc8

    move-wide/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v15

    invoke-virtual {v15, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/LegacyGlobalActions;->mPetNameLayout:Landroid/widget/LinearLayout;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/LegacyGlobalActions;->mPetNameLayout:Landroid/widget/LinearLayout;

    const-string/jumbo v16, "alpha"

    const/16 v17, 0xff

    const/16 v18, 0x0

    filled-new-array/range {v17 .. v18}, [I

    move-result-object v17

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v13

    const/4 v15, 0x1

    new-array v15, v15, [Landroid/animation/Animator;

    const/16 v16, 0x0

    aput-object v13, v15, v16

    invoke-virtual {v2, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_1
    const-wide/16 v16, 0x12c

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v15, Landroid/view/animation/PathInterpolator;

    const v16, 0x3e2e147b    # 0.17f

    const v17, 0x3e2e147b    # 0.17f

    const v18, 0x3e4ccccd    # 0.2f

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-direct/range {v15 .. v19}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v15}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_2
    const v3, 0x10403a5

    goto/16 :goto_0
.end method

.method private showConfirmDialog(Landroid/view/View;ZZ)V
    .locals 15

    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSelectedItemView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSelectedItemView:Landroid/view/View;

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSelectedItemView:Landroid/view/View;

    const v2, 0x10204f9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v11, v1, [I

    sget-boolean v1, Lcom/android/server/policy/LegacyGlobalActions;->sIsClearCover:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSelectedItemView:Landroid/view/View;

    invoke-virtual {v1, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    :goto_0
    if-eqz p3, :cond_4

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSelectedItemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v13}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v14}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/server/policy/LegacyGlobalActions;->getMarginTopAtCenter(I)I

    move-result v1

    int-to-float v9, v1

    const/4 v1, 0x1

    aget v1, v11, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCurrentPositionY:F

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSelectedItemView:Landroid/view/View;

    move/from16 v0, p3

    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hideAllView(Landroid/view/View;Z)V

    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSelectedItemView:Landroid/view/View;

    const/high16 v3, -0x3b860000    # -1000.0f

    iget v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCurrentPositionY:F

    sub-float v4, v9, v1

    const v5, 0x3fa66666    # 1.3f

    const/16 v6, 0x12c

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/LegacyGlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    :goto_1
    iget v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCurrentPositionY:F

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mScrollview:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCurrentPositionY:F

    sget-boolean v1, Lcom/android/server/policy/LegacyGlobalActions;->sIsSViewCoverClosed:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/policy/LegacyGlobalActions;->sIsClearCoverClosed:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/server/policy/LegacyGlobalActions;->sIsGraceR:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    iget v12, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCurrentPositionY:F

    int-to-float v2, v12

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCurrentPositionY:F

    :cond_1
    :goto_2
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/policy/LegacyGlobalActions;->sIsConfirmDlg:Z

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSelectedItemView:Landroid/view/View;

    invoke-virtual {v1, v11}, Landroid/view/View;->getLocationInWindow([I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSelectedItemView:Landroid/view/View;

    const/high16 v3, -0x3b860000    # -1000.0f

    iget v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCurrentPositionY:F

    sub-float v4, v9, v1

    const v5, 0x3fa66666    # 1.3f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/LegacyGlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemWidthLand:I

    invoke-direct {p0, v1}, Lcom/android/server/policy/LegacyGlobalActions;->getMarginTopAtCenter(I)I

    move-result v1

    int-to-float v8, v1

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSelectedItemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v13}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v14}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/server/policy/LegacyGlobalActions;->getMarginStartAtCenter(I)I

    move-result v1

    int-to-float v9, v1

    const/4 v1, 0x0

    aget v1, v11, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCurrentPositionXLand:F

    const/4 v1, 0x1

    aget v1, v11, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCurrentPositionYLand:F

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mGlobalActionsFrameLayout:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSelectedItemView:Landroid/view/View;

    move/from16 v0, p3

    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->hideAllView(Landroid/view/View;Z)V

    if-eqz p2, :cond_5

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSelectedItemView:Landroid/view/View;

    iget v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCurrentPositionXLand:F

    sub-float v3, v8, v1

    iget v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCurrentPositionYLand:F

    sub-float v4, v9, v1

    const v5, 0x3fa66666    # 1.3f

    const/16 v6, 0x12c

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/LegacyGlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    :goto_3
    iget v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCurrentPositionXLand:F

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCurrentPositionXLand:F

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSelectedItemView:Landroid/view/View;

    iget v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCurrentPositionXLand:F

    sub-float v3, v8, v1

    iget v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mCurrentPositionYLand:F

    sub-float v4, v9, v1

    const v5, 0x3fa66666    # 1.3f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/LegacyGlobalActions;->doAnimation(Landroid/view/View;FFFIZ)V

    goto :goto_3
.end method

.method private showErrorMessage(I)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/LegacyGlobalActions;->showToast(II)V

    :cond_0
    return-void
.end method

.method private showToast(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private unRegisterBixbyReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBixbyReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBixbyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method private unRegisterSecureLockReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSecureLockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method private unregisterDesktopModeManagerListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDesktopModeEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    :cond_0
    return-void
.end method

.method private unregisterPhoneStateListener()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateActions(Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;)V
    .locals 12

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isPortrait()Z

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/server/policy/LegacyGlobalActions;->findTargetView(Z)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v9, p1, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    sget-object v10, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    if-eq v9, v10, :cond_1

    iget-object v9, p1, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    sget-object v10, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    if-ne v9, v10, :cond_3

    :cond_1
    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x1020006

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v9, 0x102000b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v9, 0x10204f9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v9, 0x10202de

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget v10, p1, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mEnabledIconResId:I

    if-ne v9, v10, :cond_2

    if-eqz v7, :cond_2

    if-eqz v6, :cond_4

    iget v9, p1, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_2
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/server/policy/LegacyGlobalActions;->sResource:Landroid/content/res/Resources;

    const v11, 0x10403a0

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_4
    iget v9, p1, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_2

    :cond_5
    return-void
.end method

.method private updateDescViewHeight(Landroid/view/View;I)V
    .locals 8

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDescriptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, p2

    invoke-direct {p0, v1}, Lcom/android/server/policy/LegacyGlobalActions;->getMarginTopAtCenter(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v4

    int-to-double v4, p2

    const-wide v6, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mMessageViewPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sget-boolean v1, Lcom/android/server/policy/LegacyGlobalActions;->sIsCoverOpen:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/server/policy/LegacyGlobalActions;->sIsClearCover:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemMaxWidthForClearCoverClosed:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDescriptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void

    :cond_0
    iget v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemMaxWidthForSViewCoverClosed:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemMaxWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/policy/LegacyGlobalActions;->getMarginStartAtCenter(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v4

    int-to-double v4, p2

    const-wide v6, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mMessageViewPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItemMaxWidthLand:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0
.end method

.method private updateToggleActionState()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDataNetworkState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    :goto_0
    const-string/jumbo v0, "gsm.sim.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ABSENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDataNetworkState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDataModeAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDataNetworkState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;)V

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDataModeAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    invoke-direct {p0, v0}, Lcom/android/server/policy/LegacyGlobalActions;->updateActions(Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;)V

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;)V

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    invoke-direct {p0, v0}, Lcom/android/server/policy/LegacyGlobalActions;->updateActions(Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;)V

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mProKioskAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v1, "getSealedState"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mProKioskAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    :goto_2
    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mEmergencyState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mEmergencyAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mEmergencyState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;)V

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mEmergencyAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    invoke-direct {p0, v0}, Lcom/android/server/policy/LegacyGlobalActions;->updateActions(Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;)V

    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->SUPPORT_BIKEMODE_ACTION:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isSBikeInstalled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBikeModeAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "isBikeMode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBikeModeAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;)V

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBikeModeAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    invoke-direct {p0, v0}, Lcom/android/server/policy/LegacyGlobalActions;->updateActions(Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;)V

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void

    :cond_4
    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDataNetworkState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mProKioskAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;)V

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBikeModeAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;)V

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBikeModeAction:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    invoke-direct {p0, v0}, Lcom/android/server/policy/LegacyGlobalActions;->updateActions(Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;)V

    goto :goto_3
.end method

.method private updateWindowBlur(F)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHandlerStack[0]="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions;->mHandlerStack:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHandlerStack[1]="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions;->mHandlerStack:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mInstanceInfo="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions;->mInstanceInfo:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method isDialogPowerOptionHidden()Z
    .locals 3

    const-string/jumbo v0, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v1, "getSealedState"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v1, "getSealedPowerDialogOptionMode"

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/LegacyGlobalActions;->isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/android/server/policy/LegacyGlobalActions;->mProKioskOptionShown:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isDialogShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mOnDismiss:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mOnDismiss:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/server/policy/LegacyGlobalActions;->sIsAirplaneConfirmDialogExist:Z

    if-nez v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    sget-boolean v1, Lcom/android/server/policy/LegacyGlobalActions;->sIsCoverOpen:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/server/policy/LegacyGlobalActions;->sIsSecondConfirming:Z

    if-nez v1, :cond_4

    sget-object v1, Lcom/android/server/policy/LegacyGlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_2
    sput-boolean v2, Lcom/android/server/policy/LegacyGlobalActions;->sIsConfirming:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->unRegisterSecureLockReceiver()V

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->unRegisterBixbyReceiver()V

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->unregisterDesktopModeManagerListener()V

    sput-boolean v3, Lcom/android/server/policy/LegacyGlobalActions;->sIsConfirmDlg:Z

    iput-boolean v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSafeModeEnabled:Z

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LegacyGlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "LegacyGlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    :cond_4
    sput-boolean v3, Lcom/android/server/policy/LegacyGlobalActions;->sIsSecondConfirming:Z

    goto :goto_2
.end method

.method public showDialog(ZZ)V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isGlobalActionConfirming()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v2, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-virtual {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isModifying()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "LegacyGlobalActions"

    const-string/jumbo v3, "Cannot use Global Action. because Emergency mode Entering.."

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v2, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v4, "getPowerMenuLockedState"

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/policy/LegacyGlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mKeyguardShowing:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "LegacyGlobalActions"

    const-string/jumbo v3, "Knox Customization: GlobalActions dialog will not display when keyguard is showing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string/jumbo v2, "0001"

    const-string/jumbo v4, "null"

    invoke-direct {p0, v2, v4}, Lcom/android/server/policy/LegacyGlobalActions;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->initValueForShow()V

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_3

    new-instance v2, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;

    invoke-direct {v2, p0, v5}, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;-><init>(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;)V

    iput-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/policy/LegacyGlobalActions;->mHandlerStack:[Ljava/lang/String;

    sget-object v4, Lcom/android/server/policy/LegacyGlobalActions;->mHandlerStack:[Ljava/lang/String;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    aput-object v4, v2, v5

    sget-object v2, Lcom/android/server/policy/LegacyGlobalActions;->mHandlerStack:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Create new handler. pid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". tid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". callers : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    :cond_3
    sput-boolean v3, Lcom/android/server/policy/LegacyGlobalActions;->sIsAirplaneConfirmDialogExist:Z

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSecureKeyguard:Z

    iput-boolean p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mKeyguardShowing:Z

    iget-boolean v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mKeyguardShowing:Z

    if-nez v2, :cond_4

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string/jumbo v2, "2.0"

    const-string/jumbo v4, "version"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "persona"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iget-boolean v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mKeyguardShowing:Z

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardShowState()Z

    move-result v4

    or-int/2addr v2, v4

    iput-boolean v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mKeyguardShowing:Z

    const-string/jumbo v2, "LegacyGlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Oring mKeyguardShowing and pm.getKeyguardShowState()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mKeyguardShowing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-boolean p2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDeviceProvisioned:Z

    const-string/jumbo v2, "LegacyGlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "device provision check : mDeviceProvisioned ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDeviceProvisioned:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_5

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    sput-boolean v3, Lcom/android/server/policy/LegacyGlobalActions;->sIsConfirmDlg:Z

    iput-boolean v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsSafeModeEnabled:Z

    :cond_5
    :goto_1
    return-void

    :cond_6
    move v2, v3

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v2, "LegacyGlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showDialog() : mIsFirstCreated = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsFirstCreated:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsFirstCreated:Z

    if-eqz v2, :cond_8

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->checkAirplaneModeOnOff()V

    iput-boolean v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsFirstCreated:Z

    :cond_8
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->handleShow()V

    goto :goto_1
.end method

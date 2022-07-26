.class public Lcom/android/server/policy/SamsungPhoneWindowManager;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/IPhoneWindowManagerBridge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/SamsungPhoneWindowManager$10;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$11;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$12;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$13;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$14;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$15;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$16;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$17;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$18;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$19;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$1;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$20;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$21;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$22;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$23;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$2;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$3;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$4;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$5;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$6;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$7;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$8;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$9;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$ForceImmersiveModeObserver;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$SamsungPolicyHandler;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$SettingsObserver;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;,
        Lcom/android/server/policy/SamsungPhoneWindowManager$WakeupPreventionObserver;
    }
.end annotation


# static fields
.field static final ACTION_PANIC_CALL:Ljava/lang/String; = "com.samsung.android.action.PANIC_CALL"

.field private static final BIXBY_ENABLED_ON_DEX:Ljava/lang/String; = "bixby_enabled"

.field static final CAR_MODE_BAR_BOTTOM:I = 0x2

.field static final CAR_MODE_BAR_LEFT:I = 0x0

.field static final CAR_MODE_BAR_RIGHT:I = 0x1

.field static final COG_BIXBYVERSION:Ljava/lang/String; = "BIXBY_KEY_FW_VERSION"

.field static final COG_KEYEVENT:Ljava/lang/String; = "KEYEVENT"

.field private static final CONVENTIONAL_MODE_MARGIN_FOR_GAME_BASE_HEIGHT:I = 0xb90

.field private static final CRITICAL_LOW_BATTERY_THRESHOLD:I = 0x5

.field static final DEBUG:Z = false

.field private static final DEX_CALL_METHOD_GET:Ljava/lang/String; = "getSettings"

.field private static final DEX_CONTENT_URI:Landroid/net/Uri;

.field static final EXTRAS_PANIC_CALL:Ljava/lang/String; = "panic_call"

.field private static final FEATURE_FRIENDS_AUTHENTICATION:Ljava/lang/String; = "com.sec.feature.cover.nfc_authentication"

.field private static final FINGERPRINT_KEY_IGNORE_DURATION:I = 0x3e8

.field private static final FLAG_HOME_KEY_INPUT:I = 0x8

.field private static final INTENT_ACTION_DOUBLE_CLICK:Ljava/lang/String; = "com.samsung.android.action.DOUBLE_CLICK"

.field private static final INTENT_ACTION_START_DOCK_OR_HOME:Ljava/lang/String; = "com.samsung.android.action.START_DOCK_OR_HOME"

.field private static final INTENT_PERMISSION_DOUBLE_CLICK:Ljava/lang/String; = "com.samsung.android.permisson.DOUBLE_CLICK"

.field private static final INTENT_PERMISSION_START_DOCK_OR_HOME:Ljava/lang/String; = "com.samsung.android.permisson.START_DOCK_OR_HOME"

.field public static final KNOX_KEYGUARD_EVENT_FLAG:Ljava/lang/String; = "KnoxKeyguardEventFlag"

.field private static final NAVIGATION_BAR_BUTTON_RATIO:D = 0.22220000624656677

.field private static final NAVIGATION_BAR_SPACE_RATIO:D = 0.10999999940395355

.field static final NOTIFY_TOUCH_CANCEL:Z = false

.field static final PERMISSION_PANIC_CALL:Ljava/lang/String; = "com.samsung.android.permission.PANIC_CALL"

.field public static final REDUCE_SCREEN_ENABLED:Z = true

.field static final SAFE_DEBUG:Z

.field static final SAMSUNGPAY_LAUNCH_ACTION:Ljava/lang/String; = "com.samsung.android.spay.quickpay"

.field private static final SCREENCAPTURE_BOTH:I = 0x3

.field private static final SCREENCAPTURE_FULLSCREEN:I = 0x1

.field private static final SCREENCAPTURE_KEY:I = 0x1

.field private static final SCREENCAPTURE_KNOX_DESKTOP:I = 0x4

.field private static final SCREENCAPTURE_MAIN:I = 0x1

.field private static final SCREENCAPTURE_ORIGINAL:I = 0x1

.field private static final SCREENCAPTURE_PALM:I = 0x2

.field private static final SCREENCAPTURE_PARTIAL:I = 0x2

.field private static final SCREENCAPTURE_QUICK_PANEL:I = 0x3

.field private static final SCREENCAPTURE_SHOW_SCREENSHOT_HELP:Ljava/lang/String; = "show_screenshot_help_guide"

.field private static final SCREENCAPTURE_SUB:I = 0x2

.field private static final SCREENCAPTURE_SWEEP_LEFT:I = 0x2

.field private static final SCREENCAPTURE_SWEEP_RIGHT:I = 0x3

.field private static final SCREENCAPTURE_WINDOW:I = 0x64

.field static final SPAGE_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.spage"

.field static final SPAGE_SERVICE_NAME:Ljava/lang/String; = "com.samsung.android.app.spage.service.SpageService"

.field private static final SYSUI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "SamsungPhoneWindowManager"

.field public static final TORCH_FILE:Ljava/lang/String; = "/sys/class/camera/flash/rear_flash"

.field private static final USERKEY_LONGPRESS:I = 0x1f4

.field private static final USERKEY_TIMEOUT:I = 0xaa

.field static final localLOGV:Z

.field private static mCameraId:Ljava/lang/String;

.field private static mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private static mCurrentUser:I

.field private static mIsJapanModel:Z

.field private static mModelName:Ljava/lang/String;

.field private static mRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

.field static final mTmpCarModeFrame:Landroid/graphics/Rect;

.field private static mWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;


# instance fields
.field private ACTION_RESOLUTION_CHANGED:Ljava/lang/String;

.field final MAX_SCREENSHOT_CONNECTION:I

.field final QUICKACCESS_AOD_DOUBLETAB:I

.field final QUICKACCESS_AOD_LONGPROESS:I

.field final QUICKACCESS_AOD_PRESS:I

.field final QUICKACCESS_CAMERA:I

.field final QUICKACCESS_CHANGE_AOD_MODE:I

.field final QUICKACCESS_FORCE_PRESS:I

.field final QUICKACCESS_FORCE_PRESS_SLEEP:I

.field final QUICKACCESS_FORCE_RELEASE:I

.field final QUICKACCESS_FORCE_RELEASE_SLEEP:I

.field final QUICKACCESS_FORCE_RELEASE_SLEEP2:I

.field final QUICKACCESS_SAMSUNGPAY:I

.field final QUICKACCESS_STATUS:I

.field final QUICKACCESS_SUBSCREEN_WAKEUP:I

.field private bIsTorchOn:Z

.field private isSBikeModeOn:Z

.field private mActiveKeyCurTime:J

.field private final mActiveKeyPress:Ljava/lang/Runnable;

.field private mActiveKeyTriggered:Z

.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/IApplicationToken;",
            ">;"
        }
    .end annotation
.end field

.field mAudioManager:Landroid/media/AudioManager;

.field mAvailableDoublTapLaunchCommand:Z

.field mAvailableOneTouchReport:Z

.field mAvailableVoiceCommand:Z

.field private mBackKeyConsumed:Z

.field private mBackKeyRect:Landroid/graphics/Rect;

.field private final mBatteryChangeReceiver:Landroid/content/BroadcastReceiver;

.field volatile mBeganFromNonInteractiveEndCall:Z

.field private mBixbyComponent:Landroid/content/ComponentName;

.field private mBixbyEnabledOnDEX:Z

.field private mBixbyMsg:Ljava/lang/String;

.field mBixbyToast:Landroid/widget/Toast;

.field mBixbyWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mBlockKeyForDrivingMode:Z

.field private mBlockedHwKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

.field mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field mBootCompleted:Z

.field mCanAffectSystemUiWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mCaptureReceiver:Landroid/content/BroadcastReceiver;

.field private mCapturedDisplay:I

.field private mCapturedOrigin:I

.field private mCarModeBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private mCarModeBarHorizontalPosition:I

.field private mCarModeBarPosition:I

.field private mCarModeSize:I

.field private mChangeRatioBarSize:I

.field mChangeRatioWindowTarget:Landroid/view/WindowManagerPolicy$WindowState;

.field private mChangedTouchableArea:Z

.field private final mCleanWatchLaunchingFlagRunnable:Ljava/lang/Runnable;

.field mCombinationKeyManager:Lcom/android/server/policy/CombinationKeyManager;

.field mComponentNameOfDoubleTapLaunchCommandIntent:Landroid/content/ComponentName;

.field mContext:Landroid/content/Context;

.field private mContextLoggingThread:Ljava/lang/Thread;

.field mConventionalModeMargin:I

.field mConventionalModeMarginForGameApp:I

.field mCoverCloseRotation:I

.field mCoverManager:Lcom/samsung/android/cover/ICoverManager;

.field mCoverNoteEnabled:Z

.field mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mCoverWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mCurrentAspect:F

.field final mDcmAppPkg:Ljava/lang/String;

.field mDefaultMaxAspect:F

.field private mDeskTopUiMode:I

.field mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field mDirectAccessBehavior:I

.field private mDisplayEnabled:Z

.field mDoubleTapEnabled:Z

.field mDoubleTapLaunchBehavior:I

.field mDoubleTapLaunchCommandIntent:Landroid/content/Intent;

.field mDoubleTapLaunchUser:I

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEasyOneHandEnabled:I

.field private mEasyOneHandRunning:I

.field private mEasyOneHandTriggerType:I

.field private mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

.field volatile mEndCallKeyPressCounter:I

.field private final mEndCallLongPress:Ljava/lang/Runnable;

.field mFakeFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mFifthTapLaunchCommandIntent:Landroid/content/Intent;

.field mFingerPrintIntent:Landroid/content/Intent;

.field mFingerPrintPending:Z

.field private final mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

.field mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

.field mFlipFolderOpenedIntent:Landroid/content/Intent;

.field private mFolderCloseSound:Ljava/lang/String;

.field private mFolderOpenSound:Ljava/lang/String;

.field private mFolderSoundEnable:Z

.field mForceEnabledSystemUiFlags:I

.field private mForceImmersiveModeObserver:Lcom/android/server/policy/SamsungPhoneWindowManager$ForceImmersiveModeObserver;

.field mForceStatusBarFromSViewCover:Z

.field mForceUserActivityTimeoutWin:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManagerPolicy$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

.field mGameToolOverlayWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mGameToolWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field private mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

.field mHandler:Landroid/os/Handler;

.field mHasDaynotePackage:Z

.field private mHasFakeMenuKeyBack:Z

.field private mHasFakeMenuKeyRecent:Z

.field mHasFlashAnnotateComponent:Z

.field mHiddenWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManagerPolicy$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field private mHomeBooster:Lcom/samsung/android/os/SemDvfsManager;

.field private mInputMethod:Landroid/view/WindowManagerPolicy$WindowState;

.field mIsAdaptiveBrightnessValue:Z

.field mIsBixbyConsumed:Z

.field mIsCheckDrivingMode:Z

.field private mIsDesktopMode:Z

.field mIsDockHomeEnabled:Z

.field mIsDoublePressedUserKey:Z

.field mIsEasyModeEnabled:Z

.field mIsEnabledAccessControl:Z

.field private mIsGearVrDocked:Z

.field private mIsLowBattery:Z

.field mIsPackageEnabledForUserKey:Z

.field private mIsQDSetting:Z

.field private mIsRinging:Z

.field private mIsRingingOrOffhook:Z

.field mIsSafetyAssuranceEnabled:Z

.field mIsSupportFlipCover:Z

.field mIsSupportSViewCover:Z

.field mIsTorchSetForUserKey:Z

.field mIsUseAccessControl:Z

.field private mIsWakekey:Z

.field private mIsWakeupPrevention:Z

.field private mKeyEventInjectionThread:Ljava/lang/Thread;

.field mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

.field mLastClearCoverState:Z

.field mLastCoverAppCovered:Z

.field private mLastFocus:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastRequiredFreezeRotation:Ljava/lang/String;

.field final mLock:Ljava/lang/Object;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockTaskModeState:I

.field mLowPowerMode:Z

.field private mMenuConsumed:Z

.field private mMobileKeyboardAlertToast:Landroid/widget/Toast;

.field public mMobileKeyboardEnabled:Z

.field private mMobileKeyboardHeight:I

.field private mMultiPhoneWindowManager:Lcom/android/server/policy/MultiPhoneWindowManager;

.field private mMultiWindowInternalFuncs:Lcom/samsung/android/multiwindow/MultiWindowManagerInternalFuncs;

.field mNaviBarForceTouchManager:Lcom/android/server/policy/NaviBarForceTouchManager;

.field private mNaviBarHideSetting:Z

.field private mNaviBarLockedOnGameMode:Z

.field private mNavigationBarCustomHeight:I

.field private mNavigationBarHeight:I

.field mNavigationBarKeyOrder:I

.field private mNeedTriggerQD:Z

.field mNetworkSelectionLongPress:Z

.field mOriginalDockBottom:I

.field mOriginalDockLeft:I

.field mOriginalDockRight:I

.field mOriginalDockTop:I

.field mOriginalStableBottom:I

.field mOriginalStableFullscreenBottom:I

.field mOriginalStableFullscreenLeft:I

.field mOriginalStableFullscreenRight:I

.field mOriginalStableFullscreenTop:I

.field mOriginalStableLeft:I

.field mOriginalStableRight:I

.field mOriginalStableTop:I

.field mOriginalSystemBottom:I

.field mOriginalSystemLeft:I

.field mOriginalSystemRight:I

.field mOriginalSystemTop:I

.field mOriginalUnrestrictedScreenHeight:I

.field mOriginalUnrestrictedScreenLeft:I

.field mOriginalUnrestrictedScreenTop:I

.field mOriginalUnrestrictedScreenWidth:I

.field mOutdoorModeSetting:Z

.field mPWM:Lcom/android/server/policy/PhoneWindowManager;

.field mPackageAddOrRemoveReceiver:Landroid/content/BroadcastReceiver;

.field mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field mPenDetachSoundId:I

.field mPenInsertSoundId:I

.field mPenInsertedIntent:Landroid/content/Intent;

.field mPenInsertedIntentUserSwitch:Landroid/content/Intent;

.field mPenNotifyVibrationChecked:Z

.field mPenSoundStreamId:I

.field mPenSounds:Landroid/media/SoundPool;

.field mPenState:I

.field mPerformEditAfterScreenCapture:Z

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPolicyUpdateReceiver:Landroid/content/BroadcastReceiver;

.field mPowerDoubleBehavior:Z

.field mPowerManager:Landroid/os/PowerManager;

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mPowerSave:Z

.field mPowerSaveChangeReceiver:Landroid/content/BroadcastReceiver;

.field mPremiumWatchReceiver:Landroid/content/BroadcastReceiver;

.field private mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

.field private mProKioskReEnableVolumeUpKey:Z

.field mProximytyChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

.field private mRecentConsumed:Z

.field mReconfigureDebugReceiver:Landroid/content/BroadcastReceiver;

.field mReduceScreenManager:Lcom/android/server/policy/ReduceScreenManager;

.field private final mRotationForQuickAccess:Ljava/lang/Runnable;

.field mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

.field private mSFinderLaunchPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;

.field mSViewCoverDockBottom:I

.field mSViewCoverDockLeft:I

.field mSViewCoverDockRight:I

.field mSViewCoverDockTop:I

.field mSViewCoverStableBottom:I

.field mSViewCoverStableFullscreenBottom:I

.field mSViewCoverStableFullscreenLeft:I

.field mSViewCoverStableFullscreenRight:I

.field mSViewCoverStableFullscreenTop:I

.field mSViewCoverStableLeft:I

.field mSViewCoverStableRight:I

.field mSViewCoverStableTop:I

.field mSViewCoverSystemBottom:I

.field mSViewCoverSystemLeft:I

.field mSViewCoverSystemRight:I

.field mSViewCoverSystemTop:I

.field mSViewCoverUnrestrictedScreenHeight:I

.field mSViewCoverUnrestrictedScreenLeft:I

.field mSViewCoverUnrestrictedScreenTop:I

.field mSViewCoverUnrestrictedScreenWidth:I

.field private mSafeModeReason:Ljava/lang/String;

.field mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

.field final mScreenshotLock:Ljava/lang/Object;

.field mSecondLcdLastRotation:I

.field mSecondLcdUserRotationMode:I

.field final mServiceAquireLock:Ljava/lang/Object;

.field mServiceConnectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ServiceConnection;",
            "Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;",
            ">;"
        }
    .end annotation
.end field

.field mSettingsObserver:Lcom/android/server/policy/SamsungPhoneWindowManager$SettingsObserver;

.field private mShowForceImmersiveIcon:Z

.field private mShowNavBarWhileGesture:Z

.field mShowingSViewCover:Z

.field mSideSyncSourcePresentationActived:Z

.field private mSupportedCPUFreqTable:[I

.field private mSweepDirection:I

.field mSweepReceiver:Landroid/content/BroadcastReceiver;

.field mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

.field mSystemUIReplacedReceiver:Landroid/content/BroadcastReceiver;

.field mTaskBarHeightInDesktopMode:I

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

.field mTorchlightEnabled:Z

.field mTorchlightOn:Z

.field mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mTurnOffTorchlight:Ljava/lang/Runnable;

.field mUnsettingSystemUiFlags:I

.field private mUserKeyLongPressed:Z

.field private mUserRotationAssigned:Z

.field mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

.field mVibrator:Landroid/os/Vibrator;

.field mVoiceCommandIntent:Landroid/content/Intent;

.field mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mVolumeDownLongPress:Ljava/lang/Runnable;

.field private final mVolumeUpLongPress:Ljava/lang/Runnable;

.field mWakeAndUnlockRunning:Ljava/lang/Runnable;

.field private mWakeAndUnlockTriggered:Z

.field mWakeSPenSetting:Z

.field private mWakeupPreventionObserver:Lcom/android/server/policy/SamsungPhoneWindowManager$WakeupPreventionObserver;

.field private mWakeupPreventionPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWakingUpReason:I

.field mWallpaperTargetMayChage:Z

.field private mWasGesture:Z

.field public mWatchLaunching:Z

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private mWindowPinned:Z


# direct methods
.method static synthetic -get0()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->DEX_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/SamsungPhoneWindowManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyCurTime:J

    return-wide v0
.end method

.method static synthetic -get10()Lcom/samsung/android/os/SemDvfsManager;
    .locals 1

    sget-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/policy/SamsungPhoneWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mShowForceImmersiveIcon:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/policy/SamsungPhoneWindowManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSweepDirection:I

    return v0
.end method

.method static synthetic -get13()Lcom/samsung/android/os/SemDvfsManager;
    .locals 1

    sget-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/SamsungPhoneWindowManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/SamsungPhoneWindowManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCapturedDisplay:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/policy/SamsungPhoneWindowManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCapturedOrigin:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/policy/SamsungPhoneWindowManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEasyOneHandEnabled:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/policy/SamsungPhoneWindowManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEasyOneHandTriggerType:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/policy/SamsungPhoneWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/policy/SamsungPhoneWindowManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavigationBarHeight:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->bIsTorchOn:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyTriggered:Z

    return p1
.end method

.method static synthetic -set10(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsRinging:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSweepDirection:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyEnabledOnDEX:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/policy/SamsungPhoneWindowManager;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCapturedDisplay:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCapturedOrigin:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEasyOneHandEnabled:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEasyOneHandTriggerType:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsGearVrDocked:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsLowBattery:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/SamsungPhoneWindowManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->handleTorchKeyForUserKey()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/SamsungPhoneWindowManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSpenInboxModel()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/SamsungPhoneWindowManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isUsingSound()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/policy/SamsungPhoneWindowManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->TorchModeFlashSet(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/policy/SamsungPhoneWindowManager;JZI)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->endCallPress(JZI)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->finishEndCallKeyPress()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->handleTorchKey()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->initCameraManager()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->setPowerSave(Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->updatePowerSave()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    const-string/jumbo v0, "ro.product.name"

    const-string/jumbo v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mModelName:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isJapanModel()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsJapanModel:Z

    sput-object v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpCarModeFrame:Landroid/graphics/Rect;

    const-string/jumbo v0, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->DEX_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    sput v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCurrentUser:I

    sput-object v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    sput-object v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mChangeRatioBarSize:I

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$SamsungPolicyHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager$SamsungPolicyHandler;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager$SamsungPolicyHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapLaunchCommandIntent:Landroid/content/ComponentName;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHiddenWindows:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBootCompleted:Z

    iput v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenState:I

    iput v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchBehavior:I

    iput v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchUser:I

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAvailableDoublTapLaunchCommand:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    iput v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDirectAccessBehavior:I

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerDoubleBehavior:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAvailableOneTouchReport:Z

    iput v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSweepDirection:I

    iput v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCapturedDisplay:I

    iput v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCapturedOrigin:I

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasDaynotePackage:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsCheckDrivingMode:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockKeyForDrivingMode:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverNoteEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNetworkSelectionLongPress:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightOn:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverWindow:Landroid/view/WindowManagerPolicy$WindowState;

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsRinging:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderSoundEnable:Z

    const-string/jumbo v0, "UNKNOWN"

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderOpenSound:Ljava/lang/String;

    const-string/jumbo v0, "UNKNOWN"

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderCloseSound:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasFakeMenuKeyRecent:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasFakeMenuKeyBack:Z

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->QUICKACCESS_STATUS:I

    iput v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->QUICKACCESS_CAMERA:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->QUICKACCESS_SAMSUNGPAY:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->QUICKACCESS_FORCE_PRESS:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->QUICKACCESS_FORCE_RELEASE:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->QUICKACCESS_SUBSCREEN_WAKEUP:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->QUICKACCESS_CHANGE_AOD_MODE:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->QUICKACCESS_AOD_PRESS:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->QUICKACCESS_AOD_LONGPROESS:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->QUICKACCESS_AOD_DOUBLETAB:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->QUICKACCESS_FORCE_PRESS_SLEEP:I

    const/16 v0, 0xd

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->QUICKACCESS_FORCE_RELEASE_SLEEP:I

    const/16 v0, 0xe

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->QUICKACCESS_FORCE_RELEASE_SLEEP2:I

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsWakeupPrevention:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeupPreventionPackages:Ljava/util/HashSet;

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLowPowerMode:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->bIsTorchOn:Z

    const-string/jumbo v0, "com.nttdocomo.android.mascot"

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDcmAppPkg:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSecondLcdUserRotationMode:I

    iput v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSecondLcdLastRotation:I

    iput v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarPosition:I

    iput v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarHorizontalPosition:I

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNeedTriggerQD:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsQDSetting:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsWakekey:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWatchLaunching:Z

    const-string/jumbo v0, "com.samsung.ssrm.RESOLUTION_CHANGED"

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->ACTION_RESOLUTION_CHANGED:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceStatusBarFromSViewCover:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mShowingSViewCover:Z

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportFlipCover:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportSViewCover:Z

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastCoverAppCovered:Z

    iput-boolean v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastClearCoverState:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsLowBattery:Z

    iput v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavigationBarCustomHeight:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceUserActivityTimeoutWin:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyMsg:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyComponent:Landroid/content/ComponentName;

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsBixbyConsumed:Z

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyToast:Landroid/widget/Toast;

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyEnabledOnDEX:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyTriggered:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyCurTime:J

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDisplayEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsDoublePressedUserKey:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsPackageEnabledForUserKey:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsTorchSetForUserKey:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWallpaperTargetMayChage:Z

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$1;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$2;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBatteryChangeReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsGearVrDocked:Z

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$3;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSweepReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$4;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$5;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$6;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$7;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPackageAddOrRemoveReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$8;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$9;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$9;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerSaveChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$10;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$10;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-boolean v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMenuConsumed:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRecentConsumed:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUserKeyLongPressed:Z

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->MAX_SCREENSHOT_CONNECTION:I

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskReEnableVolumeUpKey:Z

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastRequiredFreezeRotation:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHomeBooster:Lcom/samsung/android/os/SemDvfsManager;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$11;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$11;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$12;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$12;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$13;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$13;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$14;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$14;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$15;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$15;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRotationForQuickAccess:Ljava/lang/Runnable;

    iput v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockTaskModeState:I

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSafeModeReason:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSFinderLaunchPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    iput v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavigationBarKeyOrder:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$16;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$16;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPremiumWatchReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$17;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$17;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCleanWatchLaunchingFlagRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$18;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$18;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iput-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    iput v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakingUpReason:I

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$19;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$19;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicyUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$20;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$20;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$21;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$21;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mReconfigureDebugReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUserRotationAssigned:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mChangedTouchableArea:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mShowForceImmersiveIcon:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsDesktopMode:Z

    iput v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDeskTopUiMode:I

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$22;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$22;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemUIReplacedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$23;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$23;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProximytyChangeReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeAndUnlockTriggered:Z

    new-instance v0, Lcom/android/server/policy/-$Lambda$qrUdjC6ki-0TE2RwrljIK6Pz9yg;

    invoke-direct {v0, p0}, Lcom/android/server/policy/-$Lambda$qrUdjC6ki-0TE2RwrljIK6Pz9yg;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeAndUnlockRunning:Ljava/lang/Runnable;

    return-void
.end method

.method private TorchModeFlashSet(I)V
    .locals 8

    const/4 v7, 0x0

    sget-boolean v4, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "SamsungPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Torch Time Out ==> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const/4 v2, 0x0

    if-lez p1, :cond_2

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightOn:Z

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    int-to-long v6, p1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string/jumbo v1, "1"

    :goto_0
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    const-string/jumbo v4, "/sys/class/camera/flash/rear_flash"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    iput-boolean v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightOn:Z

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string/jumbo v1, "0"

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_2
    :try_start_3
    const-string/jumbo v4, "SamsungPhoneWindowManager"

    const-string/jumbo v5, "exception occurred. /sys/class/camera/flash/rear_flash"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_3
    return-void

    :catch_2
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_5
    throw v4

    :catch_3
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v4

    move-object v2, v3

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v2, v3

    goto :goto_2
.end method

.method private canBeAppliedAllUnrestrictedScreen(Landroid/view/WindowManager$LayoutParams;I)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit16 v0, p2, 0x200

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    return v1

    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8b3 -> :sswitch_0
        0x8b4 -> :sswitch_0
        0x96c -> :sswitch_0
        0x96e -> :sswitch_0
        0x988 -> :sswitch_0
        0x989 -> :sswitch_0
        0x98a -> :sswitch_0
    .end sparse-switch
.end method

.method private canBeAppliedFullStableScreen(Landroid/view/WindowManager$LayoutParams;I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit16 v0, p2, 0x100

    or-int/lit16 v0, v0, 0x400

    const/16 v1, 0x500

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x97e
        :pswitch_0
    .end packed-switch
.end method

.method private canBeAppliedOverscanScreen(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 1

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8b1 -> :sswitch_0
        0x8ca -> :sswitch_0
        0x8ce -> :sswitch_0
        0x8e1 -> :sswitch_0
        0x8e2 -> :sswitch_0
        0x961 -> :sswitch_0
        0x964 -> :sswitch_0
        0x967 -> :sswitch_0
        0x968 -> :sswitch_0
        0x969 -> :sswitch_0
        0x96a -> :sswitch_0
        0x974 -> :sswitch_0
        0x975 -> :sswitch_0
        0x97f -> :sswitch_0
    .end sparse-switch
.end method

.method private canBeAppliedUnrestrictedScreen(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 1

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7d9 -> :sswitch_0
        0x82f -> :sswitch_0
        0x8b2 -> :sswitch_0
        0x8e8 -> :sswitch_0
        0x965 -> :sswitch_0
        0x96b -> :sswitch_0
        0x96f -> :sswitch_0
    .end sparse-switch
.end method

.method private checkBixbyToast()V
    .locals 12

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    const/16 v9, 0x600

    invoke-virtual {v0, v9}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v8

    const/16 v9, 0x10

    invoke-virtual {v0, v9}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v4

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "kids_home_mode"

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarModeNotSupportBixby()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMirrorLinkEnabled()Z

    move-result v7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDesktopDockConnected()Z

    move-result v3

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v9, v9, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    if-eqz v9, :cond_1

    const/4 v6, 0x1

    :goto_1
    if-eqz v8, :cond_2

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040146

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyMsg:Ljava/lang/String;

    :goto_2
    return-void

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040143

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyMsg:Ljava/lang/String;

    goto :goto_2

    :cond_3
    if-eqz v5, :cond_4

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040144

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyMsg:Ljava/lang/String;

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040140

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyMsg:Ljava/lang/String;

    goto :goto_2

    :cond_5
    if-eqz v7, :cond_6

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040145

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyMsg:Ljava/lang/String;

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_7

    iget-boolean v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyEnabledOnDEX:Z

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040141

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyMsg:Ljava/lang/String;

    goto/16 :goto_2

    :cond_7
    if-eqz v3, :cond_8

    iget-boolean v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyEnabledOnDEX:Z

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040142

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyMsg:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    if-eqz v6, :cond_9

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040147

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyMsg:Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyMsg:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private checkTriggerQD(Z)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsQDSetting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNeedTriggerQD:Z

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNeedTriggerQD:Z

    return v0

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNeedTriggerQD:Z

    goto :goto_0
.end method

.method private endCallPress(JZI)V
    .locals 3

    const/4 v1, 0x2

    if-ne p4, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x3

    if-ne p4, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBeganFromNonInteractiveEndCall:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "security.ode.encrypting"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isRingingOrOffhook()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/policy/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    goto :goto_0
.end method

.method private finishEndCallKeyPress()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBeganFromNonInteractiveEndCall:Z

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEndCallKeyPressCounter:I

    return-void
.end method

.method private forceFullScreenDimBounds(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x96b
        :pswitch_0
    .end packed-switch
.end method

.method private getCameraId()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const/4 v9, 0x0

    sget-object v5, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v5}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    array-length v6, v3

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v3, v5

    sget-object v7, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v7, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-object v9
.end method

.method public static getDexSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v1, Landroid/os/Bundle;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v3, "key"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "def"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->DEX_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "getSettings"

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    const-string/jumbo v4, "Failed to get settings"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object p2
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getLidControlsSleep()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMirrorLinkEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SamsungPhoneWindowManager"

    const-string/jumbo v1, "isMirrorLinkEnabled : LidControlsSleep is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "password_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    return-object v0
.end method

.method private getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method private getTimeoutTimeOfKeyCombination(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/CombinationKeyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/CombinationKeyManager;->getTimeoutTimeOfKeyCombination(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private handleTorchKey()V
    .locals 4

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "No Torch light, becuase Factory mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsLowBattery:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->bIsTorchOn:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    if-nez v1, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->initCameraManager()V

    :cond_4
    :try_start_0
    const-string/jumbo v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Torch light bIsTorchOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->bIsTorchOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mCameraId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    sget-object v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->bIsTorchOn:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t initialize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleTorchKeyForUserKey()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    const-string/jumbo v1, "service.camera.running"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->checkLaunchSetting()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->handleTorchKey()V

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsTorchSetForUserKey:Z

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->handleTorchKey()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleUserKey(Z)Z
    .locals 12

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportBCM()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-virtual {v9}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getModeType()I

    move-result v3

    sget-boolean v9, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v9, :cond_0

    const-string/jumbo v9, "SamsungPhoneWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "now mode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v9, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "flag"

    const/16 v10, 0x800

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v9, 0x10000000

    invoke-virtual {v0, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v9, -0x1

    if-ne v3, v9, :cond_2

    const-string/jumbo v9, "enabled"

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v9, v0, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v9, 0x1

    return v9

    :cond_2
    const/4 v9, 0x2

    if-ne v3, v9, :cond_1

    const-string/jumbo v9, "enabled"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "long_press_app"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    iget-boolean v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsDoublePressedUserKey:Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "double_press_app"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_4
    if-eqz v5, :cond_5

    const/16 v9, 0x2f

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_5
    :goto_2
    sget-boolean v9, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v9, :cond_6

    const-string/jumbo v9, "SamsungPhoneWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Found pkg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", cls="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " longPress = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz v7, :cond_d

    const-string/jumbo v9, "torch"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const-string/jumbo v9, "torch"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    :goto_3
    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_7

    const/4 v9, 0x1

    if-ne v4, v9, :cond_c

    :cond_7
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsPackageEnabledForUserKey:Z

    :goto_4
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsTorchSetForUserKey:Z

    :goto_5
    const-string/jumbo v9, "torch"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    const-string/jumbo v9, "torch"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportActiveDouble()Z

    move-result v9

    if-nez v9, :cond_e

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->handleTorchKeyForUserKey()Z

    move-result v8

    :cond_8
    :goto_6
    return v8

    :cond_9
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportBCM()Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-virtual {v9}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getModeType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_a

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "short_press_app_battery_conserve"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :cond_a
    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "short_press_app"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v9, "SamsungPhoneWindowManager"

    const-string/jumbo v10, "Invalid user key app defined"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_b
    const/4 v9, 0x0

    goto :goto_3

    :cond_c
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsPackageEnabledForUserKey:Z

    goto :goto_4

    :cond_d
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsPackageEnabledForUserKey:Z

    goto :goto_5

    :cond_e
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsTorchSetForUserKey:Z

    goto :goto_6

    :cond_f
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportBCM()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportActiveDouble()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_8

    iget-boolean v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyTriggered:Z

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_8

    iget-boolean v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsPackageEnabledForUserKey:Z

    if-eqz v9, :cond_8

    if-eqz v7, :cond_8

    if-eqz v1, :cond_8

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    goto :goto_6
.end method

.method private initCameraManager()V
    .locals 5

    const/4 v4, 0x0

    sget-object v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "camera"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    sput-object v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    :cond_0
    sget-object v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getCameraId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    :goto_0
    sget-object v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "Couldn\'t initialize."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sput-object v4, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v2

    sput-object v4, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    throw v2

    :cond_2
    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "camera service is not availabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private initHomeBoost()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "HOME_BOOSTER"

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHomeBooster:Lcom/samsung/android/os/SemDvfsManager;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHomeBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSupportedCPUFreqTable:[I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSupportedCPUFreqTable:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHomeBooster:Lcom/samsung/android/os/SemDvfsManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHomeBooster:Lcom/samsung/android/os/SemDvfsManager;

    const-wide v2, 0x3fe6666666666666L    # 0.7

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(D)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    :cond_0
    return-void
.end method

.method private injectionKeyEvent(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/policy/SamsungPhoneWindowManager$31;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager$31;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private isAppInstalled(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    return v2
.end method

.method private isBackKeyConsumed()Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private isBixbyFullWindowShowing()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    return v3

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-nez v1, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    return v3
.end method

.method private isBuiltInKeyboardVisible()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDefaultLauncher(Ljava/lang/String;)Z
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.category.HOME"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v3, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    const-string/jumbo v7, "SamsungPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isDefaultLauncher :"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    move v6, v5

    :cond_0
    return v6

    :cond_1
    move v4, v6

    goto :goto_0
.end method

.method private isGearVrHomeKeyBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-virtual {v0}, Lcom/samsung/android/vr/GearVrManagerInternal;->isHomeKeyBlocked()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isGearVrInputDevice(Landroid/view/InputDevice;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-virtual {v0, p1}, Lcom/samsung/android/vr/GearVrManagerInternal;->isGearVrInputDevice(Landroid/view/InputDevice;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isGearVrSupportRecents()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-virtual {v2}, Lcom/samsung/android/vr/GearVrManagerInternal;->getVrRecentsMode()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private isHardwareKeyAllowed(IZ)Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    const-string/jumbo v3, "kioskmode"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1, p2}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isHardwareKeyAllowed(Lcom/samsung/android/knox/ContextInfo;IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    const-string/jumbo v4, "Exception while getting kiosk mode service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isJapanModel()Z
    .locals 3

    const-string/jumbo v1, ""

    :try_start_0
    const-string/jumbo v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    const-string/jumbo v2, "DCM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "KDI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "XJP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "SBM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private isKnoxSetupWizardTopActivity()Z
    .locals 6

    const/4 v2, 0x0

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.sec.knox.knoxsetupwizardclient"

    const-string/jumbo v4, "com.sec.knox.knoxsetupwizardclient.SetupWizardKnoxNameSettingActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.knox.securefolder.setupwizard"

    const-string/jumbo v4, "com.samsung.knox.securefolder.setupwizard.SetupWizardKnoxNameSettingActivity"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v3}, Lcom/android/server/policy/SystemKeyManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v3}, Lcom/android/server/policy/SystemKeyManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    sget-boolean v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCurrentTopActivity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v5}, Lcom/android/server/policy/SystemKeyManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isKnoxSetupWizardTopActivity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2
.end method

.method private isOpenThemeApplied(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    return v2
.end method

.method private isPreloadInstallComplete()Z
    .locals 4

    const-string/jumbo v1, "persist.sys.storage_preload"

    const-string/jumbo v2, "2"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPreloadInstallComplete = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isScreenCaptureEnabled()Z
    .locals 17

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v5, 0x0

    const-string/jumbo v14, "restriction_policy"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v7

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v14

    const/4 v15, 0x1

    invoke-interface {v7, v14, v15}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isScreenCaptureEnabledEx(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v5

    :goto_0
    return v5

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v4

    const-string/jumbo v14, "persona"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/PersonaManagerService;

    const/4 v6, 0x0

    if-eqz v11, :cond_8

    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_8

    const-string/jumbo v14, "restriction_policy"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v7

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    if-ge v3, v14, :cond_8

    :try_start_1
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v14, 0x0

    const/4 v15, -0x1

    invoke-virtual {v11, v12, v14, v15}, Lcom/android/server/pm/PersonaManagerService;->isKnoxWindowExist(III)Z

    move-result v6

    const-string/jumbo v14, "SamsungPhoneWindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "isKnoxWindowExist: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " for user "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_2

    const/4 v13, 0x0

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_2

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v12, :cond_1

    const/4 v14, 0x0

    const/4 v15, -0x1

    invoke-virtual {v11, v9, v14, v15}, Lcom/android/server/pm/PersonaManagerService;->isKnoxWindowExist(III)Z

    move-result v8

    const-string/jumbo v14, "SamsungPhoneWindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "otherKnoxWindowExist: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " for user "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_1

    const v14, 0x104090a

    invoke-static {v14}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    const/4 v14, 0x0

    return v14

    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_2
    invoke-static {v12}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v14

    if-nez v14, :cond_3

    invoke-static {v12}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v14

    if-nez v14, :cond_3

    invoke-static {v12}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v14

    if-eqz v14, :cond_4

    :cond_3
    const/4 v14, 0x1

    invoke-interface {v7, v12, v14}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isScreenCaptureEnabledEx(IZ)Z

    move-result v14

    if-nez v14, :cond_7

    const-string/jumbo v14, "SamsungPhoneWindowManager"

    const-string/jumbo v15, "KnoxMultiwindowExist. Legacy isScreenCaptureEnabled() returns false"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    return v14

    :cond_4
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v11, v14, v15, v0}, Lcom/android/server/pm/PersonaManagerService;->isUserWindowExist(III)Z

    move-result v10

    if-nez v10, :cond_5

    const/4 v14, 0x1

    invoke-interface {v7, v12, v14}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isScreenCaptureEnabledEx(IZ)Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_7

    :cond_5
    const-string/jumbo v14, "SamsungPhoneWindowManager"

    const-string/jumbo v15, "KnoxMultiwindowExist. PO knox container - isScreenCaptureEnabled() returns false"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_6

    const v14, 0x104090a

    invoke-static {v14}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    const/4 v14, 0x0

    return v14

    :catch_0
    move-exception v2

    const-string/jumbo v14, "SamsungPhoneWindowManager"

    const-string/jumbo v15, "getting informations for Knox : failed"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    return v14

    :catch_1
    move-exception v1

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v14

    if-eqz v14, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_9

    const-string/jumbo v14, "SamsungPhoneWindowManager"

    const-string/jumbo v15, "mEDM.getRestrictionPolicy().isScreenCaptureEnabled() return false"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v14, 0x0

    return v14

    :cond_9
    return v5

    :catch_2
    move-exception v1

    goto/16 :goto_0
.end method

.method private isSpenInboxModel()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v3, "com.sec.feature.spen_usp"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    rem-int/lit8 v3, v0, 0xa

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    const-string/jumbo v4, "spen inbox model"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2
.end method

.method private isStubPTTApp()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.kodiak.intent.action.PTT_BUTTON"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.bell.ptt"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isSupportAndAttachedSViewCover()Z
    .locals 3

    const/4 v1, 0x3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportSViewCover:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->model:I

    if-eq v0, v1, :cond_1

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isUserKeyLongPressed()Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUserKeyLongPressed:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUserKeyLongPressed:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private isUsingSound()Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->semIsFmRadioActive()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->semIsVoiceCallActive()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isWatchRunning()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isWatchRunning "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "com.sec.android.app.premiumwatch"

    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v7

    :cond_0
    return v6
.end method

.method private needWhiteNavigationIcon(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private playPenSound(I)V
    .locals 7

    const/4 v5, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const-string/jumbo v0, "SamsungPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "playPenSound, soundId : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenSounds:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenSoundStreamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenSounds:Landroid/media/SoundPool;

    const/4 v4, 0x1

    move v1, p1

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenSoundStreamId:I

    return-void
.end method

.method private playSound(Ljava/lang/String;)V
    .locals 5

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fail to start media exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private playSoundEffect()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "trigger_restart_min_framework"

    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/16 v2, 0x66

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->playSoundEffect(II)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "keyguard - disable key sound"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Couldn\'t get audio manager"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerGearVrStateListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    new-instance v1, Lcom/android/server/policy/SamsungPhoneWindowManager$24;

    invoke-direct {v1, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$24;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/vr/GearVrManagerInternal;->registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "SamsungPhoneWindowManager"

    const-string/jumbo v1, "registerGearVrStateListener failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private rotationForSecondLcdOrientationLw(II)I
    .locals 10

    const/16 v9, 0xd

    const/16 v8, 0xa

    const/4 v7, 0x2

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v4, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "2nd LCD, rotationForSecondLcdOrientationLw(orient="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ", last="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "); user="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSecondLcdUserRotationMode:I

    if-ne v2, v6, :cond_0

    const-string/jumbo v2, "USER_ROTATION_LOCKED"

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " sensorRotation="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSecondLcdLastRotation:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v1

    const/16 v2, 0xe

    if-ne p1, v2, :cond_1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSecondLcdLastRotation:I

    :goto_1
    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSecondLcdLastRotation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return v0

    :cond_0
    :try_start_1
    const-string/jumbo v2, ""

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSecondLcdUserRotationMode:I

    if-nez v2, :cond_5

    if-eq p1, v7, :cond_2

    const/4 v2, -0x1

    if-ne p1, v2, :cond_4

    :cond_2
    if-ne v1, v7, :cond_3

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    if-ne v2, v6, :cond_6

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    const/16 v2, 0xb

    if-eq p1, v2, :cond_2

    const/16 v2, 0xc

    if-eq p1, v2, :cond_2

    if-eq p1, v9, :cond_2

    :cond_5
    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    if-eq p1, v8, :cond_2

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    const/4 v2, 0x7

    if-eq p1, v2, :cond_2

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSecondLcdUserRotationMode:I

    if-ne v2, v6, :cond_7

    const/4 v2, 0x5

    if-eq p1, v2, :cond_7

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v2, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    goto :goto_1

    :cond_6
    if-eq p1, v8, :cond_3

    if-eq p1, v9, :cond_3

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSecondLcdLastRotation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_7
    const/4 v0, -0x1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private setLeftButton(I)V
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    if-le v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v4, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v4, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    :goto_0
    int-to-double v4, v1

    const-wide v6, 0x3fcc710cc0000000L    # 0.22220000624656677

    mul-double/2addr v4, v6

    double-to-int v2, v4

    int-to-double v4, v1

    const-wide v6, 0x3fbc28f5c0000000L    # 0.10999999940395355

    mul-double/2addr v4, v6

    double-to-int v3, v4

    packed-switch p1, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v4, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v4, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    goto :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyRect:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyRect:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavigationBarHeight:I

    sub-int v5, v0, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyRect:Landroid/graphics/Rect;

    add-int v5, v3, v2

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyRect:Landroid/graphics/Rect;

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyRect:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavigationBarHeight:I

    sub-int v5, v0, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyRect:Landroid/graphics/Rect;

    add-int v5, v3, v2

    sub-int v5, v1, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyRect:Landroid/graphics/Rect;

    iput v0, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyRect:Landroid/graphics/Rect;

    sub-int v5, v1, v3

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :pswitch_2
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyRect:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyRect:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavigationBarHeight:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyRect:Landroid/graphics/Rect;

    add-int v5, v3, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setPowerSave(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerSave:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerSave:Z

    return-void
.end method

.method private setRightButton(I)V
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    if-le v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v4, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v4, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    :goto_0
    int-to-double v4, v1

    const-wide v6, 0x3fcc710cc0000000L    # 0.22220000624656677

    mul-double/2addr v4, v6

    double-to-int v2, v4

    int-to-double v4, v1

    const-wide v6, 0x3fbc28f5c0000000L    # 0.10999999940395355

    mul-double/2addr v4, v6

    double-to-int v3, v4

    packed-switch p1, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v4, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v4, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    goto :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyRect:Landroid/graphics/Rect;

    add-int v5, v3, v2

    sub-int v5, v1, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyRect:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavigationBarHeight:I

    sub-int v5, v0, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyRect:Landroid/graphics/Rect;

    sub-int v5, v1, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyRect:Landroid/graphics/Rect;

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyRect:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavigationBarHeight:I

    sub-int v5, v0, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyRect:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyRect:Landroid/graphics/Rect;

    iput v0, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyRect:Landroid/graphics/Rect;

    add-int v5, v3, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :pswitch_2
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyRect:Landroid/graphics/Rect;

    add-int v5, v3, v2

    sub-int v5, v1, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyRect:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavigationBarHeight:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyRect:Landroid/graphics/Rect;

    sub-int v5, v1, v3

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setShowScreenshotHelpGuide()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_screenshot_help_guide"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private shouldPassEventForPTT(Landroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SamsungPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldPassEventForPTT Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "com.bell.ptt"

    invoke-direct {p0, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isAppInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isStubPTTApp()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private shouldShowScreenshotHelpGuide()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "show_screenshot_help_guide"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private startCustomApp()Z
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    :try_start_0
    iget-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    if-nez v8, :cond_0

    const-string/jumbo v8, "SamsungPhoneWindowManager"

    const-string/jumbo v9, "mKnoxCustomSystemManager null"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_0
    iget-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {v8}, Lcom/samsung/android/knox/custom/SystemManager;->getRecentLongPressMode()I

    move-result v3

    if-nez v3, :cond_1

    return v11

    :cond_1
    iget-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    if-ne v3, v12, :cond_2

    invoke-direct {p0, v7}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDefaultLauncher(Ljava/lang/String;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    const-string/jumbo v8, "SamsungPhoneWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Foreground taskName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_2
    iget-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {v8}, Lcom/samsung/android/knox/custom/SystemManager;->getRecentLongPressActivity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    const-string/jumbo v8, "SamsungPhoneWindowManager"

    const-string/jumbo v9, "appToStart null"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_4
    const-string/jumbo v8, "/"

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v8, -0x1

    if-ne v5, v8, :cond_6

    iget-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    :goto_0
    const-string/jumbo v8, "SamsungPhoneWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "starting custom app : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_5

    const-string/jumbo v8, "android.intent.action.MAIN"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8, v4, v9}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_5
    return v12

    :cond_6
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v8, "SamsungPhoneWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startCustomApp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11
.end method

.method private startGearVrRecents()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-virtual {v0}, Lcom/samsung/android/vr/GearVrManagerInternal;->startVrRecents()V

    :cond_0
    return-void
.end method

.method private startSGA(Ljava/lang/String;)V
    .locals 5

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    const-string/jumbo v4, "SGA is not installed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-boolean v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    const-string/jumbo v4, "no Launch intent of SGA"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateBackRect(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavigationBarKeyOrder:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->setRightButton(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->setLeftButton(I)V

    goto :goto_0
.end method

.method private updateGestureNavBar()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWindowPinned:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mShowNavBarWhileGesture:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/server/policy/PolicyControl;->isGestureNavBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWasGesture:Z

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "navigation_bar_gesture_while_hidden"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWasGesture:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWasGesture:Z

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "navigation_bar_gesture_while_hidden"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private updatePowerSave()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->setPowerSave(Z)V

    return-void
.end method

.method private updateWakeupPreventionPackages(Ljava/lang/String;)V
    .locals 6

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeupPreventionPackages:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    if-eqz p1, :cond_0

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateWakeupPreventionPackages = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "|"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    array-length v0, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeupPreventionPackages:Ljava/util/HashSet;

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addHiddenWindow(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHiddenWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHiddenWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public adjustAspectRatioFrame(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;Landroid/view/DisplayInfo;)V
    .locals 11

    const v10, 0x461c4000    # 10000.0f

    const/4 v9, 0x0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget v6, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v7, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ge v6, v7, :cond_1

    iget v6, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v3, v6, 0x2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v1, v9, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/view/IWindowStateBridge;->getMainWindowFlags()I

    move-result v5

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/view/IWindowStateBridge;->getMainWindowSystemUiVisibility()I

    move-result v4

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v6

    const/16 v7, 0x7d0

    if-ge v6, v7, :cond_0

    and-int/lit16 v6, v4, 0x1800

    if-eqz v6, :cond_2

    :cond_0
    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :cond_1
    iget v6, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v3, v6, 0x2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v1, v3, v9, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    div-float v0, v6, v7

    mul-float v6, v0, v10

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    div-float v0, v6, v10

    iget v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDefaultMaxAspect:F

    sub-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3a83126f    # 0.001f

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_4

    const/4 v2, 0x1

    :goto_1
    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    packed-switch v6, :pswitch_data_0

    :cond_3
    :goto_2
    return-void

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :pswitch_0
    if-eqz v2, :cond_5

    invoke-virtual {v1, v9, v9}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_5
    and-int/lit16 v6, v5, 0x400

    if-nez v6, :cond_6

    and-int/lit8 v6, v4, 0x4

    if-nez v6, :cond_6

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    div-int/lit8 v6, v6, 0x2

    neg-int v6, v6

    invoke-virtual {p2, v9, v6}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    :cond_6
    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mConventionalModeMarginForGameApp:I

    invoke-virtual {p2, v9, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_2

    :pswitch_1
    if-eqz v2, :cond_7

    invoke-virtual {v1, v9, v9}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mConventionalModeMarginForGameApp:I

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_2

    :pswitch_2
    if-eqz v2, :cond_8

    iget v6, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v1, v6, v9}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mConventionalModeMarginForGameApp:I

    sub-int/2addr v6, v7

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_button_background"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->showButtonBackground:I

    return-void
.end method

.method public adjustSystemUiVisibilityLw(I)I
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceEnabledSystemUiFlags:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceEnabledSystemUiFlags:I

    or-int/2addr p1, v0

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUnsettingSystemUiFlags:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUnsettingSystemUiFlags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    const v2, -0x20000001

    and-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    :cond_2
    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUnsettingSystemUiFlags:I

    not-int v0, v0

    and-int/2addr p1, v0

    iput v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUnsettingSystemUiFlags:I

    goto :goto_0
.end method

.method public adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;II)V
    .locals 0

    return-void
.end method

.method public allowChangeRatioWindow()Z
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_GESTURE_NAVIGATION_BAR:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/policy/PolicyControl;->isGestureNavBarEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v0}, Lcom/android/server/policy/BarController;->isTransientShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_1
    return v0

    :cond_2
    return v0
.end method

.method public applyForceUserActivityTimeoutWin(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 6

    const-wide/16 v4, 0x0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakingUpReason:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const-wide/16 v2, 0x146a

    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v4, v0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    :cond_0
    return-void
.end method

.method public applyFrameInLayoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v3, :sswitch_data_0

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/view/WindowManagerInternal;->isStackVisible(I)Z

    move-result v3

    if-eqz v3, :cond_0

    and-int/lit16 v2, v2, -0x201

    :cond_0
    :sswitch_0
    and-int/lit16 v3, v1, 0x100

    if-nez v3, :cond_1

    and-int/lit16 v3, v2, 0x600

    if-eqz v3, :cond_2

    :cond_1
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e4

    if-ne v3, v4, :cond_6

    if-eqz p2, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    :goto_0
    iput v3, p6, Landroid/graphics/Rect;->left:I

    iput v3, p5, Landroid/graphics/Rect;->left:I

    iput v3, p4, Landroid/graphics/Rect;->left:I

    iput v3, p3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v3, p6, Landroid/graphics/Rect;->top:I

    iput v3, p5, Landroid/graphics/Rect;->top:I

    iput v3, p4, Landroid/graphics/Rect;->top:I

    iput v3, p3, Landroid/graphics/Rect;->top:I

    if-eqz p2, :cond_4

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v3, v4

    :goto_1
    iput v3, p6, Landroid/graphics/Rect;->right:I

    iput v3, p5, Landroid/graphics/Rect;->right:I

    iput v3, p4, Landroid/graphics/Rect;->right:I

    iput v3, p3, Landroid/graphics/Rect;->right:I

    if-eqz p2, :cond_5

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v3, v4

    :goto_2
    iput v3, p6, Landroid/graphics/Rect;->bottom:I

    iput v3, p5, Landroid/graphics/Rect;->bottom:I

    iput v3, p4, Landroid/graphics/Rect;->bottom:I

    iput v3, p3, Landroid/graphics/Rect;->bottom:I

    :cond_2
    :goto_3
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v3, v4

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    goto :goto_2

    :cond_6
    invoke-direct {p0, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->canBeAppliedUnrestrictedScreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v3, p5, Landroid/graphics/Rect;->left:I

    iput v3, p4, Landroid/graphics/Rect;->left:I

    iput v3, p3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v3, p5, Landroid/graphics/Rect;->top:I

    iput v3, p4, Landroid/graphics/Rect;->top:I

    iput v3, p3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v3, v4

    iput v3, p5, Landroid/graphics/Rect;->right:I

    iput v3, p4, Landroid/graphics/Rect;->right:I

    iput v3, p3, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    iput v3, p5, Landroid/graphics/Rect;->bottom:I

    iput v3, p4, Landroid/graphics/Rect;->bottom:I

    iput v3, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :cond_7
    invoke-direct {p0, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->canBeAppliedOverscanScreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v3, p6, Landroid/graphics/Rect;->left:I

    iput v3, p5, Landroid/graphics/Rect;->left:I

    iput v3, p4, Landroid/graphics/Rect;->left:I

    iput v3, p3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v3, p6, Landroid/graphics/Rect;->top:I

    iput v3, p5, Landroid/graphics/Rect;->top:I

    iput v3, p4, Landroid/graphics/Rect;->top:I

    iput v3, p3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v3, v4

    iput v3, p6, Landroid/graphics/Rect;->right:I

    iput v3, p5, Landroid/graphics/Rect;->right:I

    iput v3, p4, Landroid/graphics/Rect;->right:I

    iput v3, p3, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v3, v4

    iput v3, p6, Landroid/graphics/Rect;->bottom:I

    iput v3, p5, Landroid/graphics/Rect;->bottom:I

    iput v3, p4, Landroid/graphics/Rect;->bottom:I

    iput v3, p3, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    :cond_8
    invoke-direct {p0, v0, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->canBeAppliedAllUnrestrictedScreen(Landroid/view/WindowManager$LayoutParams;I)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v3, p6, Landroid/graphics/Rect;->left:I

    iput v3, p5, Landroid/graphics/Rect;->left:I

    iput v3, p4, Landroid/graphics/Rect;->left:I

    iput v3, p3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v3, p6, Landroid/graphics/Rect;->top:I

    iput v3, p5, Landroid/graphics/Rect;->top:I

    iput v3, p4, Landroid/graphics/Rect;->top:I

    iput v3, p3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v3, v4

    iput v3, p6, Landroid/graphics/Rect;->right:I

    iput v3, p5, Landroid/graphics/Rect;->right:I

    iput v3, p4, Landroid/graphics/Rect;->right:I

    iput v3, p3, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    iput v3, p6, Landroid/graphics/Rect;->bottom:I

    iput v3, p5, Landroid/graphics/Rect;->bottom:I

    iput v3, p4, Landroid/graphics/Rect;->bottom:I

    iput v3, p3, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    :cond_9
    invoke-direct {p0, v0, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->canBeAppliedFullStableScreen(Landroid/view/WindowManager$LayoutParams;I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    iput v3, p6, Landroid/graphics/Rect;->left:I

    iput v3, p5, Landroid/graphics/Rect;->left:I

    iput v3, p4, Landroid/graphics/Rect;->left:I

    iput v3, p3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    iput v3, p6, Landroid/graphics/Rect;->top:I

    iput v3, p5, Landroid/graphics/Rect;->top:I

    iput v3, p4, Landroid/graphics/Rect;->top:I

    iput v3, p3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    iput v3, p6, Landroid/graphics/Rect;->right:I

    iput v3, p5, Landroid/graphics/Rect;->right:I

    iput v3, p4, Landroid/graphics/Rect;->right:I

    iput v3, p3, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    iput v3, p6, Landroid/graphics/Rect;->bottom:I

    iput v3, p5, Landroid/graphics/Rect;->bottom:I

    iput v3, p4, Landroid/graphics/Rect;->bottom:I

    iput v3, p3, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    :sswitch_data_0
    .sparse-switch
        0x8b3 -> :sswitch_0
        0x8b4 -> :sswitch_0
        0x96c -> :sswitch_0
        0x96e -> :sswitch_0
        0x97f -> :sswitch_0
    .end sparse-switch
.end method

.method public applyLidSwitchState()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isBuiltInKeyboardVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setKeyboardVisibility(Z)V

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SamsungPhoneWindowManager"

    const-string/jumbo v1, "applyLidSwitchState isRunningFactoryApp() = true. ignore it."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getLidControlsSleep()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isPreloadInstallComplete()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    :cond_1
    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;Z)V
    .locals 10

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportAndAttachedSViewCover()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v7, v7, Lcom/samsung/android/cover/CoverState;->switchState:Z

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->canAffectSystemUiFlags()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v7, :cond_1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v7

    invoke-interface {v7}, Lcom/samsung/android/view/IWindowStateBridge;->getCoverMode()I

    move-result v3

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x1

    if-lt v7, v8, :cond_9

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x63

    if-gt v7, v8, :cond_9

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x80000

    and-int/2addr v7, v8

    if-eqz v7, :cond_9

    const/4 v2, 0x1

    :goto_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v1

    if-eqz v2, :cond_1

    const/4 v7, 0x1

    if-ne v3, v7, :cond_b

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {v7, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iget-boolean v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mShowingSViewCover:Z

    iput-boolean v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceStatusBarFromSViewCover:Z

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    sget-boolean v7, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v7, :cond_1

    const-string/jumbo v7, "SamsungPhoneWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Hide sview cover :  SViewCoverWindow = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_4

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isInMultiWindowMode()Z

    move-result v7

    xor-int/lit8 v4, v7, 0x1

    if-nez v4, :cond_3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-eqz v7, :cond_2

    if-eqz v0, :cond_e

    :cond_2
    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    if-le v7, v8, :cond_d

    const/4 v4, 0x1

    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/MultiPhoneWindowManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/server/policy/MultiPhoneWindowManager;->setOverlappedFreeformWithNaviBar(Z)V

    :cond_4
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    packed-switch v7, :pswitch_data_0

    :cond_5
    :goto_3
    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFakeFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v7, :cond_6

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v8, 0x10000

    and-int/2addr v7, v8

    if-eqz v7, :cond_6

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFakeFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_6
    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mChangeRatioWindowTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v7, :cond_8

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_7

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_8

    :cond_7
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v7

    invoke-interface {v7}, Lcom/samsung/android/view/IWindowStateBridge;->needToShowChangeRatioButton()Z

    move-result v7

    if-eqz v7, :cond_8

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mChangeRatioWindowTarget:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_8
    return-void

    :cond_9
    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_a

    if-eqz v3, :cond_a

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v7, 0x2

    if-ne v3, v7, :cond_c

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v7

    invoke-interface {v7}, Lcom/samsung/android/view/IWindowStateBridge;->willBeHideSViewCoverOnce()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {v7, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_c
    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {v7, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_d
    const/4 v4, 0x0

    goto :goto_2

    :cond_e
    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_10

    iget v7, v6, Landroid/graphics/Rect;->right:I

    iget v8, v5, Landroid/graphics/Rect;->left:I

    if-le v7, v8, :cond_f

    const/4 v4, 0x1

    goto :goto_2

    :cond_f
    const/4 v4, 0x0

    goto :goto_2

    :cond_10
    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v8, v5, Landroid/graphics/Rect;->right:I

    if-ge v7, v8, :cond_11

    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_2

    :pswitch_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/policy/PhoneWindowManager;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->canAffectSystemUiFlags()Z

    move-result v7

    if-eqz v7, :cond_5

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCanAffectSystemUiWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x8b2
        :pswitch_0
    .end packed-switch
.end method

.method public applyWindowPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 12

    const/4 v11, 0x0

    const/high16 v10, 0x100000

    const/high16 v9, 0x80000

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->applyForceUserActivityTimeoutWin(Landroid/view/WindowManagerPolicy$WindowState;)V

    sget-boolean v4, Lcom/samsung/android/config/SamsungCoreConfig;->FEATURE_AOD:Z

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getAODWindowPolicy()Lcom/android/server/policy/AODWindowPolicy;

    move-result-object v4

    invoke-interface {v4, v8}, Lcom/android/server/policy/AODWindowPolicy;->isAODWindowVisible(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getAODWindowPolicy()Lcom/android/server/policy/AODWindowPolicy;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/android/server/policy/AODWindowPolicy;->applyAODPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v4

    return v4

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isForceHideBySViewCover()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {p0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->canBeForceHiddenBySViewCover(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x200000

    and-int/2addr v4, v5

    if-eqz v4, :cond_9

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v4, v9

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerFromTypeLw(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const/16 v6, 0x7d0

    invoke-virtual {v5, v6}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerFromTypeLw(I)I

    move-result v5

    if-lt v4, v5, :cond_8

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/view/IWindowStateBridge;->isSurfaceShowing()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_1
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v4

    invoke-interface {v4, v8}, Lcom/samsung/android/view/IWindowStateBridge;->setHideBySViewCover(Z)V

    invoke-interface {p1, v7}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-boolean v4, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "SamsungPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Policy hide by cover win="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4, p1}, Lcom/android/server/policy/PhoneWindowManager;->canBeHiddenByKeyguardLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHiddenWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHiddenWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v4, v10

    if-nez v4, :cond_4

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v4, v9

    if-eqz v4, :cond_6

    :cond_4
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHiddenWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHiddenWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iput-boolean v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWallpaperTargetMayChage:Z

    :cond_6
    :goto_1
    return v8

    :cond_7
    const/4 v1, 0x1

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    goto :goto_0

    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isNeedLayoutCoverApplication(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1, v7}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v4

    if-eqz v4, :cond_b

    sget-boolean v4, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_b

    const-string/jumbo v4, "SamsungPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Policy show by cover win="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x833

    if-ne v4, v5, :cond_6

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverWindow:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_1

    :cond_c
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v7}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-boolean v4, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_d

    const-string/jumbo v4, "SamsungPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Policy hide by cover win="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iput-object v11, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverWindow:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_e
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHiddenWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_14

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHiddenWindows:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4, v2}, Lcom/android/server/policy/PhoneWindowManager;->canBeHiddenByKeyguardLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4, v2, p2}, Lcom/android/server/policy/PhoneWindowManager;->shouldBeHiddenByKeyguard(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v4, v10

    if-nez v4, :cond_10

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v4, v9

    if-eqz v4, :cond_f

    :cond_10
    iput-boolean v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWallpaperTargetMayChage:Z

    goto :goto_2

    :cond_11
    invoke-interface {v2, v7}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v4, v10

    if-nez v4, :cond_12

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v4, v9

    if-eqz v4, :cond_f

    :cond_12
    iput-boolean v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWallpaperTargetMayChage:Z

    goto :goto_2

    :cond_13
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHiddenWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_14
    return v7
.end method

.method public beginCoverLayoutLw(III)V
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v11, v1, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v12, v1, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v1, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v1, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    move/from16 v26, v0

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v1 .. v26}, Lcom/android/server/policy/SamsungPhoneWindowManager;->prepareSViewCoverLayout(IIIIIIIIIIIIIIIIIIIIIIIII)V

    return-void
.end method

.method public beginLayoutLw(IIII)V
    .locals 9

    const/4 v8, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    invoke-virtual {v0, p3, v1}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarHeight(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavigationBarHeight:I

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v0

    if-ne v0, p4, :cond_2

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarPosition:I

    sget-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpCarModeFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    invoke-virtual {v0, v4, v1, p1, v2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarModeBarVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarPosition:I

    packed-switch v0, :pswitch_data_1

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Landroid/view/WindowManagerPolicy$WindowState;

    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpCarModeFrame:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpCarModeFrame:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpCarModeFrame:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpCarModeFrame:Landroid/graphics/Rect;

    sget-object v5, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpCarModeFrame:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    sget-object v7, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpCarModeFrame:Landroid/graphics/Rect;

    invoke-interface/range {v0 .. v8}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_2
    return-void

    :pswitch_1
    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarHorizontalPosition:I

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpCarModeFrame:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    invoke-virtual {v0, v4, v4, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarHorizontalPosition:I

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarPosition:I

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpCarModeFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    invoke-virtual {v0, v1, v4, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    :pswitch_2
    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarHorizontalPosition:I

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpCarModeFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iget v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v4, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_3
    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarHorizontalPosition:I

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarPosition:I

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTmpCarModeFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v4, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public beginPostLayoutPolicyLw(II)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceStatusBarFromSViewCover:Z

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mShowingSViewCover:Z

    iput-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastCoverAppCovered:Z

    :cond_0
    iput-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCanAffectSystemUiWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFakeFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWallpaperTargetMayChage:Z

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/MultiPhoneWindowManager;->setOverlappedFreeformWithNaviBar(Z)V

    iput-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mChangeRatioWindowTarget:Landroid/view/WindowManagerPolicy$WindowState;

    return-void
.end method

.method public broadcastHardKeyIntent(Landroid/view/KeyEvent;)V
    .locals 4

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/SystemManager;->getHardKeyIntentState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.action.HARD_KEY_PRESS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.KEY_CODE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x52 -> :sswitch_0
        0xbb -> :sswitch_0
    .end sparse-switch
.end method

.method public callAccessibilityScreenCurtain()V
    .locals 4

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "callAccessibilityScreenCurtain() is called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "ADPD"

    const-string/jumbo v3, "PowerKey DoubleClick"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->semToggleDarkScreenMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public callAccessibilityTalkbackMode()V
    .locals 4

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "callAccessibilityTalkbackMode() is called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->setTalkbackMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public callOneTouchReport()V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isOneTouchReportEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.CALL_PRIVILEGED"

    const-string/jumbo v4, "tel"

    const-string/jumbo v5, "114"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v1, v2

    :goto_0
    const-string/jumbo v3, "startFlag"

    const-string/jumbo v4, "002"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    const-string/jumbo v4, "OneTouchReport started"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const v3, 0xc36a

    const/4 v4, 0x1

    invoke-virtual {p0, v7, v3, v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    :goto_2
    return-void

    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.CALL_PRIVILEGED"

    const-string/jumbo v4, "tel"

    const-string/jumbo v5, "112"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "SamsungPhoneWindowManager"

    const-string/jumbo v4, "OneTouchReport was disable"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public canAffectSystemUiFlags()Z
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUnsettingSystemUiFlags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public canBeForceHiddenBySViewCover(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/view/IWindowStateBridge;->getCoverMode()I

    move-result v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-nez v1, :cond_1

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v4, :sswitch_data_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :cond_0
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4, p1}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerLw(Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const/16 v6, 0x7d0

    invoke-virtual {v5, v6}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerFromTypeLw(I)I

    move-result v5

    if-ge v4, v5, :cond_4

    :goto_0
    return v2

    :sswitch_0
    return v3

    :sswitch_1
    return v2

    :cond_1
    const/16 v4, 0xa

    if-ne v1, v4, :cond_2

    return v3

    :cond_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/view/IWindowStateBridge;->willBeHideSViewCoverOnce()Z

    move-result v4

    if-eqz v4, :cond_0

    return v3

    :cond_3
    if-ne v1, v2, :cond_0

    return v3

    :cond_4
    move v2, v3

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7d4 -> :sswitch_0
        0x7d5 -> :sswitch_0
        0x7dd -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7e4 -> :sswitch_0
        0x833 -> :sswitch_0
        0x8ac -> :sswitch_0
        0x8ad -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x7d9 -> :sswitch_1
        0x8b2 -> :sswitch_1
    .end sparse-switch
.end method

.method public canCandidateSystemUiVisibilityLw(Landroid/view/WindowManagerPolicy$WindowState;)Landroid/view/WindowManagerPolicy$WindowState;
    .locals 2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x965

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastFocus:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastFocus:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastFocus:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_1
    return-object p1
.end method

.method cancelWakeAndUnlockPendingAction()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeAndUnlockRunning:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public changeAppOpsMode(IILjava/lang/String;)I
    .locals 7

    const/4 v1, 0x3

    const-string/jumbo v4, "com.nttdocomo.android.mascot"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, p2, p3, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    const-string/jumbo v4, "SamsungPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mode change : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v4, "SamsungPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception occured for AppOpsManager "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public changeNavigationBarHeight(I)V
    .locals 0

    return-void
.end method

.method public checkLaunchSetting()I
    .locals 4

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "active_key_on_lockscreen"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkLaunchSetting state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public checkShowNavBarWhileGesture()V
    .locals 5

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/server/policy/PolicyControl;->isGestureNavBarEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWasGesture:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mShowNavBarWhileGesture:Z

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.samsung.android.showNavBarWhileGesture"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mShowNavBarWhileGesture:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->updateGestureNavBar()V

    return-void

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "cannot check metadata"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public configureNavBarOpacity(ILandroid/view/WindowManagerPolicy$WindowState;)I
    .locals 1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/view/IWindowStateBridge;->hasAppTokenBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7fff7fff

    and-int/2addr p1, v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGameToolOverlayWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGameToolOverlayWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x8000

    or-int/2addr p1, v0

    :cond_1
    return p1
.end method

.method public downloadForSGA(Ljava/lang/String;)V
    .locals 4

    sget-boolean v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "try download SGA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v2, 0x30000020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "Samsung apps is not installed. so you are moving to Samsung apps download page."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->downloadForSamsungApps()V

    goto :goto_0
.end method

.method public downloadForSamsungApps()V
    .locals 5

    sget-boolean v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    const-string/jumbo v4, "try download SamsungApps"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v2, "http://apps.samsung.com/mw/apk_en.as"

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x30000020

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    const-string/jumbo v4, "There is not browsable apps for samsungapps download"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "--- Samsung Window Policy ---"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSafeModeReason="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSafeModeReason:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCanAffectSystemUiWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCanAffectSystemUiWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCanAffectSystemUiWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFakeFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFakeFocusedWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFakeFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGameToolWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mGameToolWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGameToolWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mInputMethod:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_3

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mInputMethod="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mInputMethod:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mForceEnabledSystemUiFlags="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceEnabledSystemUiFlags:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUnsettingSystemUiFlags="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUnsettingSystemUiFlags:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPenState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPerformEditAfterScreenCapture="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mHasFlashAnnotateComponent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsSafetyAssuranceEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mIsUseAccessControl="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mIsEnabledAccessControl="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, " mIsEasyModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mIsDockHomeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDoubleTapLaunchBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDoubleTapEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mAvailableDoublTapLaunchCommand="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAvailableDoublTapLaunchCommand:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "mDoubleTapLaunchUser="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchUser:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mComponentNameOfDoubleTapLaunchCommandIntent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapLaunchCommandIntent:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDirectAccessBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDirectAccessBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mAvailableVoiceCommand="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mAvailableOneTouchReport="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAvailableOneTouchReport:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHasFakeMenuKeyRecent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasFakeMenuKeyRecent:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mHasFakeMenuKeyBack="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasFakeMenuKeyBack:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSideSyncSourcePresentationActived="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsGearVrDocked="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsGearVrDocked:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWakingUpReason="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakingUpReason:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsWakeupPrevention="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsWakeupPrevention:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWakeupPreventionPackages="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeupPreventionPackages:Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastRequiredFreezeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastRequiredFreezeRotation:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNavigationBarKeyOrder="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavigationBarKeyOrder:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mBixbyComponent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mBixbyEnabledOnDEX="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyEnabledOnDEX:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/CombinationKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/CombinationKeyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/SystemKeyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v0}, Lcom/android/server/policy/SamsungPolicyProperties;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCoverCloseRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverCloseRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsSupportFlipCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportFlipCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsSupportSViewCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportSViewCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHideSViewCoverWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "OriginalmUnrestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalUnrestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalUnrestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalUnrestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalUnrestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mOriginalStableFullscreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableFullscreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableFullscreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableFullscreenRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableFullscreenBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mOriginalStable=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mOriginalSystem=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalSystemLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalSystemTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalSystemRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalSystemBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mOriginalDock=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalDockLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalDockTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalDockRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalDockBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSViewCoverUnrestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverUnrestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverUnrestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverUnrestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverUnrestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSViewCoverStableFullscreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableFullscreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableFullscreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableFullscreenRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableFullscreenBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSViewCoverStable=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSViewCoverSystem=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverSystemLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverSystemTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverSystemRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverSystemBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSViewCoverDock=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverDockLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverDockTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverDockRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverDockBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDefaultMaxAspect="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDefaultMaxAspect:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCurrentAspect="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCurrentAspect:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "isCarModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarModeEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCarModeSize="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public endCallByGamekey()Z
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v3

    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isVoIPRinging()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Landroid/os/IVoIPInterface;->hangupVoIPCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    or-int/2addr v1, v4

    :cond_1
    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-boolean v4, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "SamsungPhoneWindowManager"

    const-string/jumbo v5, "ITelephony2 threw RemoteException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public finishPostLayoutPolicyLw(I)I
    .locals 9

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportAndAttachedSViewCover()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    sget-boolean v5, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "SamsungPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "finishPostLayoutPolicyLw: mHideSViewCoverWindowState ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v5, v5, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v5, v5, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v6, 0xff

    if-eq v5, v6, :cond_8

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isRingingOrOffhook()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isTphoneRelaxMode()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_8

    :cond_1
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastCoverAppCovered:Z

    if-nez v5, :cond_2

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Lcom/samsung/android/cover/ICoverManager;->onCoverAppCovered(Z)I

    move-result v3

    and-int/lit8 v5, v3, 0x10

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastCoverAppCovered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->processSViewCoverSetHiddenResultLw(I)Z

    move-result v5

    if-eqz v5, :cond_3

    or-int/lit8 p1, p1, 0x1

    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mChangeRatioWindowTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_b

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->allowChangeRatioWindow()Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_4

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mChangeRatioWindowTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/samsung/android/view/IWindowStateBridge;->getCustomAspectRatioFrame(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    packed-switch v5, :pswitch_data_0

    :cond_4
    :goto_2
    iput v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mChangeRatioBarSize:I

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mChangeRatioBarSize:I

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v5}, Lcom/android/server/wm/IWindowManagerServiceBridge;->hideChangeRatioButton()V

    :goto_3
    sget-boolean v5, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_IMMERSIVE_FORCE_TOUCH:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNaviBarForceTouchManager:Lcom/android/server/policy/NaviBarForceTouchManager;

    invoke-virtual {v5}, Lcom/android/server/policy/NaviBarForceTouchManager;->dismissKeyguardByPendingRequest()V

    :cond_5
    sget-boolean v5, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_GESTURE_NAVIGATION_BAR:Z

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->checkShowNavBarWhileGesture()V

    :cond_6
    iget-boolean v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWallpaperTargetMayChage:Z

    if-eqz v5, :cond_7

    or-int/lit8 p1, p1, 0x4

    :cond_7
    return p1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_8
    :try_start_1
    iget-boolean v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastCoverAppCovered:Z

    if-eqz v5, :cond_9

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Lcom/samsung/android/cover/ICoverManager;->onCoverAppCovered(Z)I

    move-result v3

    and-int/lit8 v5, v3, 0x20

    if-eqz v5, :cond_9

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastCoverAppCovered:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_9
    :goto_4
    invoke-virtual {p0, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->processSViewCoverSetHiddenResultLw(I)Z

    move-result v5

    if-eqz v5, :cond_3

    or-int/lit8 p1, p1, 0x1

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    :pswitch_0
    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v5, v6

    goto :goto_2

    :pswitch_1
    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    sub-int v4, v5, v6

    goto :goto_2

    :pswitch_2
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v4, v5, v6

    goto :goto_2

    :cond_a
    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mChangeRatioWindowTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mChangeRatioWindowTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v8

    invoke-interface {v5, v6, v4, v7, v8}, Lcom/android/server/wm/IWindowManagerServiceBridge;->showChangeRatioButton(IILjava/lang/String;I)V

    goto/16 :goto_3

    :cond_b
    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v5}, Lcom/android/server/wm/IWindowManagerServiceBridge;->hideChangeRatioButton()V

    iput v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mChangeRatioBarSize:I

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public finishScreenTurningOn()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v1, Lcom/android/server/policy/TspStateManagerPolicy;->FEATURE_ENABLED:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getTspStateManagerPolicy()Lcom/android/server/policy/TspStateManagerPolicy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1, v2, v3}, Lcom/android/server/policy/TspStateManagerPolicy;->updateWindowPolicy(Landroid/view/WindowManagerPolicy$WindowState;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ADAPTIVE_BRIGHTNESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsAdaptiveBrightnessValue:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOutdoorModeSetting:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/SamsungPhoneWindowManager$35;

    invoke-direct {v2, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$35;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public finishedGoingToSleep(I)V
    .locals 3

    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportAppLock()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->clearAppLockedUnLockedApp()V

    :cond_0
    return-void
.end method

.method public focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastFocus:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/SystemKeyManager;->updateFocusedWindow(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/policy/TspStateManagerPolicy;->FEATURE_ENABLED:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getTspStateManagerPolicy()Lcom/android/server/policy/TspStateManagerPolicy;

    move-result-object v1

    invoke-interface {v1, p2, v2}, Lcom/android/server/policy/TspStateManagerPolicy;->updateWindowPolicy(Landroid/view/WindowManagerPolicy$WindowState;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public freezeRotation(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rotation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastRequiredFreezeRotation:Ljava/lang/String;

    return-void
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 3

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getChangeRatioBarSize()I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mChangeRatioBarSize:I

    return v0
.end method

.method public declared-synchronized getCoverManager()Lcom/samsung/android/cover/ICoverManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SamsungPhoneWindowManager"

    const-string/jumbo v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getCoverStateSwitch()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getCurrentAspectRatio()F
    .locals 1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCurrentAspect:F

    return v0
.end method

.method public getDefaultMaxAspectRatio()F
    .locals 1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDefaultMaxAspect:F

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getHideSViewCoverWindowState()Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method public getKeycodeOnNavigationBar(II)I
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-lt p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ge p2, v1, :cond_0

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "getKeycodeOnNavigationBar() get back key"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    :cond_0
    const-string/jumbo v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getKeycodeOnNavigationBar() x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", left="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",  top="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", right="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", bottom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getNavigationBarCustomHeight()I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavigationBarCustomHeight:I

    return v0
.end method

.method public getNavigationBarHeight()I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavigationBarHeight:I

    return v0
.end method

.method public getNavigationBarHideSetting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNaviBarHideSetting:Z

    return v0
.end method

.method public getNonDecorDisplayHeight(III)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarModeBarVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ge p1, p2, :cond_0

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr p2, v0

    :cond_0
    return p2
.end method

.method public getNonDecorDisplayWidth(III)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarModeBarVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-le p1, p2, :cond_0

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method public getRotationLockOrientation()I
    .locals 5

    iget-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUserRotationAssigned:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_rotation"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_1
.end method

.method public getSBikeModeState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSBikeModeOn:Z

    return v0
.end method

.method public getSViewCoverHeight(Landroid/view/DisplayInfo;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    return v0

    :cond_0
    iget v0, p1, Landroid/view/DisplayInfo;->appHeight:I

    return v0
.end method

.method public getSViewCoverWidth(Landroid/view/DisplayInfo;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    return v0

    :cond_0
    iget v0, p1, Landroid/view/DisplayInfo;->appWidth:I

    return v0
.end method

.method public getSurfaceLayerCarModeBar()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    return v0
.end method

.method public getTaskBarHeightInDesktopMode()I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTaskBarHeightInDesktopMode:I

    return v0
.end method

.method getTelecommService()Landroid/telecom/TelecomManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public getVoIPInterfaceService()Landroid/os/IVoIPInterface;
    .locals 3

    const-string/jumbo v1, "voip"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Unable to find IVoIPInterface interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public handleLongPressOnHome()Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isScreenOffOnLongPressHome()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Home longpress block in KNOX"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v3

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Home longpress block in ProKiosk Mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v3

    :cond_3
    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isVzwSetupRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Home longpress block when Verizon Setup Wizard Running"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Home longpress block in Ringing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v3

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isVoIPRinging()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-boolean v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_7

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Home longpress block in VoIPRinging"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v3

    :cond_8
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Home longpress block in emergency & upsm mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_9
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isEnableAccessControl(I)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Home longpress blocked by Interaction control"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_a
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-nez v1, :cond_b

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Home longpress block in UserSetup not complete"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method public handleLongPressOnMenu()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMenuConsumed:Z

    invoke-virtual {p0, v2, v1, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    return-void
.end method

.method public handleLongPressOnRecent()V
    .locals 9

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isRecentAppStart()Z

    move-result v6

    if-eqz v6, :cond_0

    iput-boolean v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRecentConsumed:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isTouchExplorationEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    :try_start_0
    sget-boolean v6, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "SamsungPhoneWindowManager"

    const-string/jumbo v7, "Recent longpress used in Lock task mode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v6, "SamsungPhoneWindowManager"

    const-string/jumbo v7, "Unable to reach activity manager"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    iput-boolean v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRecentConsumed:Z

    iget-boolean v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasFakeMenuKeyRecent:Z

    if-eqz v6, :cond_3

    const/16 v6, 0x52

    invoke-direct {p0, v6}, Lcom/android/server/policy/SamsungPhoneWindowManager;->injectionKeyEvent(I)V

    return-void

    :cond_3
    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v5

    if-eqz v5, :cond_4

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_1
    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "db_split_screen_view_shortcut"

    const/4 v8, -0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_7

    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "db_snap_window_shortcut"

    const/4 v8, -0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-eqz v6, :cond_6

    const/4 v3, 0x1

    :goto_2
    if-nez v4, :cond_8

    xor-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    :cond_4
    :goto_3
    return-void

    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    invoke-interface {v5}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleSplitScreen()V

    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public handleLongPressOnStar()V
    .locals 5

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const-string/jumbo v3, "reason"

    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.android.applicationshortcut"

    const-string/jumbo v3, "com.sec.android.applicationshortcut.MainviewActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v1, :cond_0

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "launch applicationshortcut "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "No activity to launch applicationshortcut."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public hasCustomDoubleTapLaunchCommand()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapLaunchCommandIntent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLockscreenWallpaper()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ignorePowerKeyInEncrypting()Z
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v3, "vold.encrypt_progress"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-lez v1, :cond_0

    const/16 v3, 0x64

    if-ge v1, v3, :cond_0

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    const-string/jumbo v4, "Ignore Power Off Key!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error parsing progress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return v6
.end method

.method public inVSMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v0}, Lcom/android/server/wm/IWindowManagerServiceBridge;->inVSMode()Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput-object p3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    iput-object p4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    sget-object v0, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_SAMSUNG_WINDOW_MANAGER_SERVICE:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-static {v0}, Lcom/android/server/SamsungCoreServices;->getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IWindowManagerServiceBridge;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    new-instance v0, Lcom/android/server/policy/CombinationKeyManager;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/policy/CombinationKeyManager;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/CombinationKeyManager;

    new-instance v0, Lcom/android/server/policy/SystemKeyManager;

    invoke-direct {v0, p2, p0}, Lcom/android/server/policy/SystemKeyManager;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "PhoneWindowManager.mTorchlightWakeLock"

    invoke-virtual {v0, v8, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    sget-boolean v0, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_IMMERSIVE_FORCE_TOUCH:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/policy/NaviBarForceTouchManager;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/policy/NaviBarForceTouchManager;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNaviBarForceTouchManager:Lcom/android/server/policy/NaviBarForceTouchManager;

    :cond_0
    new-instance v0, Lcom/android/server/policy/ReduceScreenManager;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/policy/ReduceScreenManager;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mReduceScreenManager:Lcom/android/server/policy/ReduceScreenManager;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "com.samsung.action.DEBUG_RECONFIGURE"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mReconfigureDebugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "com.samsung.android.motion.SWEEP_LEFT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.samsung.android.motion.SWEEP_RIGHT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.samsung.android.motion.SWEEP_DOWN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.samsung.android.motion.SWEEP_FULL_SCREEN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSweepReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v4, "com.samsung.permission.PALM_MOTION"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "com.samsung.android.capture.QuickPanelCapture"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.samsung.android.capture.DesktopCapture"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v4, "com.samsung.permission.CAPTURE"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPackageAddOrRemoveReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerSaveChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBatteryChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->ACTION_RESOLUTION_CHANGED:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicyUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p2, Lcom/android/server/policy/PhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/MultiPhoneWindowManager;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getMultiWindowInternalFunc()Lcom/samsung/android/multiwindow/MultiWindowManagerInternalFuncs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMultiWindowInternalFuncs:Lcom/samsung/android/multiwindow/MultiWindowManagerInternalFuncs;

    new-instance v6, Landroid/content/IntentFilter;

    sget-object v0, Lcom/samsung/android/knox/kiosk/KioskMode;->ACTION_REFRESH_HWKEY_INTERNAL:Ljava/lang/String;

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-static {}, Lcom/samsung/android/knox/custom/SystemManager;->getInstance()Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchCommandIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchCommandIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchCommandIntent:Landroid/content/Intent;

    const-string/jumbo v1, "isThisComeFromHomeKeyDoubleClickConcept"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchCommandIntent:Landroid/content/Intent;

    const-string/jumbo v1, "CHECK_SCHEDULE_ENABLED"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchCommandIntent:Landroid/content/Intent;

    const-string/jumbo v1, "isQuickLaunchMode"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFifthTapLaunchCommandIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFifthTapLaunchCommandIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v7, Landroid/content/ComponentName;

    const-string/jumbo v0, "go.police.report"

    const-string/jumbo v1, "go.police.report.Report"

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFifthTapLaunchCommandIntent:Landroid/content/Intent;

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFifthTapLaunchCommandIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isActivitiesAvailable(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAvailableOneTouchReport:Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.action.SVOICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string/jumbo v1, "isThisComeFromHomeKeyDoubleClickConcept"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string/jumbo v1, "CHECK_SCHEDULE_ENABLED"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isActivitiesAvailable(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.pen.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.pen.INSERT.USER_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntentUserSwitch:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.flipfolder.OPEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFlipFolderOpenedIntent:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.secretmode.action.REQ_SHOW_VISUAL_CUE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.secretmode.service"

    const-string/jumbo v4, "com.samsung.android.secretmode.service.SecretModeService"

    invoke-direct {v1, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v0, "com.sec.android.daynote"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasDaynotePackage:Z

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "PhoneWindowManager.mVoiceWakeUpWakeLock"

    invoke-virtual {v0, v8, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$25;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$25;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_2
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "com.samsung.android.intent.action.PAUSE_WATCH"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.samsung.android.intent.action.STOP_WATCH"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPremiumWatchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sec.feature.findo"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    invoke-direct {v0, p0, v5}, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;)V

    move-object v5, v0

    :cond_3
    iput-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSFinderLaunchPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/SamsungPhoneWindowManager$SettingsObserver;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/SamsungPhoneWindowManager$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager$SettingsObserver;->observe()V

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$WakeupPreventionObserver;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager$WakeupPreventionObserver;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeupPreventionObserver:Lcom/android/server/policy/SamsungPhoneWindowManager$WakeupPreventionObserver;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeupPreventionObserver:Lcom/android/server/policy/SamsungPhoneWindowManager$WakeupPreventionObserver;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager$WakeupPreventionObserver;->observe()V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->initHomeBoost()V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$ForceImmersiveModeObserver;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager$ForceImmersiveModeObserver;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceImmersiveModeObserver:Lcom/android/server/policy/SamsungPhoneWindowManager$ForceImmersiveModeObserver;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceImmersiveModeObserver:Lcom/android/server/policy/SamsungPhoneWindowManager$ForceImmersiveModeObserver;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager$ForceImmersiveModeObserver;->observe()V

    :cond_4
    iput v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverCloseRotation:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sec.feature.cover.flip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportFlipCover:Z

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sec.feature.cover.sview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportSViewCover:Z

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportFlipCover:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportSViewCover:Z

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    :cond_6
    const-string/jumbo v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, ""

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyComponent:Landroid/content/ComponentName;

    :cond_7
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "ro.debuggable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemUIReplacedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_8
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProximytyChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public insertLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/policy/SamsungPhoneWindowManager$34;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/policy/SamsungPhoneWindowManager$34;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public interceptEndCallKey(Landroid/view/KeyEvent;ZZ)I
    .locals 12

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCombinationKeyTriggered()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    const/4 v7, 0x0

    return v7

    :cond_1
    iget v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEndCallKeyPressCounter:I

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    if-eqz p3, :cond_5

    if-eqz p2, :cond_4

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCombinationKeyTriggered()Z

    move-result v8

    iput-boolean v8, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    iget-object v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v10

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    const/4 v7, 0x0

    return v7

    :cond_4
    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/policy/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result v4

    const/4 v7, 0x1

    if-le v4, v7, :cond_3

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBeganFromNonInteractiveEndCall:Z

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    if-nez v7, :cond_3

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/telecom/TelecomManager;->endCall()Z

    :cond_6
    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/policy/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v7

    if-eqz v7, :cond_9

    iget v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEndCallKeyPressCounter:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEndCallKeyPressCounter:I

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    iget v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEndCallKeyPressCounter:I

    if-ge v7, v4, :cond_8

    iget-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_7

    const/4 v7, 0x1

    :goto_1
    iget v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEndCallKeyPressCounter:I

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v8, v11, v7, v9, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v7, 0x0

    return v7

    :cond_7
    const/4 v7, 0x0

    goto :goto_1

    :cond_8
    iget v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEndCallKeyPressCounter:I

    invoke-direct {p0, v2, v3, p2, v7}, Lcom/android/server/policy/SamsungPhoneWindowManager;->endCallPress(JZI)V

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->finishEndCallKeyPress()V

    goto/16 :goto_0

    :cond_9
    if-nez v0, :cond_3

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->goHome()Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x0

    return v7

    :cond_a
    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    if-nez v7, :cond_3

    xor-int/lit8 v7, v0, 0x1

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v8

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/os/PowerManager;->goToSleep(JII)V

    const/4 v7, 0x1

    return v7
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v32

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v31

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v39

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v49

    if-nez v49, :cond_0

    const/4 v14, 0x1

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v8

    const/high16 v49, 0x20000000

    and-int v49, v49, p3

    if-eqz v49, :cond_1

    const/16 v25, 0x1

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v36

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getTimeoutTimeOfKeyCombination(I)J

    move-result-wide v46

    cmp-long v49, v36, v46

    if-gez v49, :cond_2

    sub-long v50, v46, v36

    return-wide v50

    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    :cond_1
    const/16 v25, 0x0

    goto :goto_1

    :cond_2
    const/16 v49, 0x19

    move/from16 v0, v31

    move/from16 v1, v49

    if-eq v0, v1, :cond_3

    const/16 v49, 0x18

    move/from16 v0, v31

    move/from16 v1, v49

    if-ne v0, v1, :cond_5

    :cond_3
    if-eqz v39, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    move-object/from16 v49, v0

    if-eqz v49, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v49

    if-eqz v49, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/samsung/android/knox/custom/ProKioskManager;->getVolumeKeyAppState()Z

    move-result v49

    if-eqz v49, :cond_5

    sget-boolean v49, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v49, :cond_4

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "knox: volume key is blocked"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-wide/16 v50, -0x1

    return-wide v50

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v49

    const/16 v50, -0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    move-object/from16 v49, v0

    if-eqz v49, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Ljava/util/Map;->isEmpty()Z

    move-result v49

    xor-int/lit8 v49, v49, 0x1

    if-eqz v49, :cond_a

    const/16 v26, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v49

    if-nez v49, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v49

    if-nez v49, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    move-object/from16 v49, v0

    if-eqz v49, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v49

    if-eqz v49, :cond_8

    const/16 v49, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v26

    const/16 v49, 0x18

    move/from16 v0, v31

    move/from16 v1, v49

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskReEnableVolumeUpKey:Z

    move/from16 v49, v0

    if-eqz v49, :cond_6

    const/16 v26, 0x1

    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskReEnableVolumeUpKey:Z

    :cond_6
    :goto_2
    if-nez v26, :cond_a

    sget-boolean v49, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v49, :cond_7

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "MDM: key is blocked"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-wide/16 v50, -0x1

    return-wide v50

    :cond_8
    const/16 v49, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v26

    goto :goto_2

    :cond_9
    const/16 v49, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v26

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/CombinationKeyManager;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/policy/CombinationKeyManager;->isConsumedKeyCombination(Landroid/view/KeyEvent;)Z

    move-result v49

    if-eqz v49, :cond_b

    const-wide/16 v50, -0x1

    return-wide v50

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z

    move-result v49

    if-eqz v49, :cond_d

    sget-boolean v49, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v49, :cond_c

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "interceptKeyTi : Key was blocked by sidesync."

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const-wide/16 v50, -0x1

    return-wide v50

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWatchLaunching:Z

    move/from16 v49, v0

    if-eqz v49, :cond_e

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "Home key is blocked during watch is displayed"

    invoke-static/range {v49 .. v50}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v50, -0x1

    return-wide v50

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMultiWindowInternalFuncs:Lcom/samsung/android/multiwindow/MultiWindowManagerInternalFuncs;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/samsung/android/multiwindow/MultiWindowManagerInternalFuncs;->isUsingTaskPositioner()Z

    move-result v49

    if-eqz v49, :cond_f

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "TaskPositioner is used by moving or resizing a task."

    invoke-static/range {v49 .. v50}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v50, -0x1

    return-wide v50

    :cond_f
    sparse-switch v31, :sswitch_data_0

    :cond_10
    :goto_3
    :sswitch_0
    const/16 v29, 0x0

    if-nez v39, :cond_12

    if-eqz v25, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultitapKeyManager:Lcom/android/server/policy/IMultitapKeyManagerBridge;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/android/server/policy/IMultitapKeyManagerBridge;->dispatchMultitapKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v49

    if-eqz v49, :cond_12

    const/16 v49, 0x3

    move/from16 v0, v31

    move/from16 v1, v49

    if-ne v0, v1, :cond_12

    xor-int/lit8 v49, v14, 0x1

    if-eqz v49, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "mHomePressed = "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, " mHomeConsumed = "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    move/from16 v0, v50

    move-object/from16 v1, v49

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    move/from16 v49, v0

    if-eqz v49, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    move/from16 v0, v50

    move-object/from16 v1, v49

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    :cond_11
    const/16 v29, 0x1

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v49

    if-eqz v49, :cond_69

    if-eqz p1, :cond_67

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    :goto_4
    if-eqz v5, :cond_68

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v49, v0

    const/16 v50, 0x7d0

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_68

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v49, v0

    move/from16 v0, v49

    and-int/lit16 v0, v0, 0x400

    move/from16 v49, v0

    if-nez v49, :cond_68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v49, v0

    const-string/jumbo v50, "reason"

    invoke-virtual/range {v49 .. v50}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    const-wide/16 v50, -0x1

    return-wide v50

    :sswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNeedTriggerQD:Z

    move/from16 v49, v0

    if-eqz v49, :cond_14

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v49

    move/from16 v0, v49

    and-int/lit16 v0, v0, 0x80

    move/from16 v49, v0

    if-eqz v49, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultitapKeyManager:Lcom/android/server/policy/IMultitapKeyManagerBridge;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/android/server/policy/IMultitapKeyManagerBridge;->isHomeConsumed()Z

    move-result v49

    if-nez v49, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v49, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v50

    invoke-virtual/range {v49 .. v50}, Lcom/android/server/policy/PhoneWindowManager;->handleLongPressOnHome(I)V

    :cond_13
    const-wide/16 v50, -0x1

    return-wide v50

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsWakekey:Z

    move/from16 v49, v0

    if-eqz v49, :cond_15

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "Homekey is used as a wake key on quick dial status"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultitapKeyManager:Lcom/android/server/policy/IMultitapKeyManagerBridge;

    move-object/from16 v49, v0

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move-object/from16 v1, p2

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Lcom/android/server/policy/IMultitapKeyManagerBridge;->dispatchMultitapKeyEvent(Landroid/view/KeyEvent;Z)Z

    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsWakekey:Z

    const-wide/16 v50, -0x1

    return-wide v50

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v44

    if-eqz v44, :cond_17

    invoke-virtual/range {v44 .. v44}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v49

    if-eqz v49, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isTphoneRelaxMode()Z

    move-result v49

    xor-int/lit8 v49, v49, 0x1

    if-eqz v49, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isAnyKeyMode()Z

    move-result v49

    if-eqz v49, :cond_17

    if-eqz v14, :cond_16

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "ringing: Accept the call!"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v44 .. v44}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    const-string/jumbo v49, "VCHA"

    const/16 v50, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "Ignoring HOME; there\'s a ringing incoming call and set anykey mode"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v50, -0x1

    return-wide v50

    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v49

    if-eqz v49, :cond_1b

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v34

    if-eqz v34, :cond_19

    const/16 v26, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v49

    if-nez v49, :cond_18

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v49

    if-nez v49, :cond_18

    const/16 v49, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isHomeKeyEnabled(Z)Z

    move-result v26

    :goto_5
    if-nez v26, :cond_19

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "home key disabled by edm"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v50, -0x1

    return-wide v50

    :cond_18
    const/16 v49, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isHomeKeyEnabled(Z)Z

    move-result v26

    goto :goto_5

    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isChangeRequested()I

    move-result v49

    if-gtz v49, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getBootBanner()Lcom/samsung/android/knox/lockscreen/BootBanner;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/samsung/android/knox/lockscreen/BootBanner;->isDodBannerVisible()Z

    move-result v49

    if-eqz v49, :cond_1b

    :cond_1a
    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "home key disabled by either pwd policy OR DoD Banner"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v50, -0x1

    return-wide v50

    :cond_1b
    const-string/jumbo v49, "persona"

    invoke-static/range {v49 .. v49}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v35

    check-cast v35, Lcom/android/server/pm/PersonaManagerService;

    if-eqz v35, :cond_1e

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/pm/PersonaManagerService;->getShownKeyguardOwner()I

    move-result v33

    const/16 v49, -0x515

    move/from16 v0, v33

    move/from16 v1, v49

    if-eq v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsRinging:Z

    move/from16 v49, v0

    xor-int/lit8 v49, v49, 0x1

    if-eqz v49, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v49

    if-eqz v49, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v49

    xor-int/lit8 v49, v49, 0x1

    if-eqz v49, :cond_1e

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v49

    const/16 v50, 0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_1c

    :try_start_0
    const-string/jumbo v49, "SamsungPhoneWindowManager"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "current send personaId : "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v24, Landroid/content/Intent;

    invoke-direct/range {v24 .. v24}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v49, "KnoxKeyguardEventFlag"

    const/16 v50, 0x8

    move-object/from16 v0, v24

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v49

    if-eqz v49, :cond_1d

    new-instance v49, Landroid/content/ComponentName;

    const-string/jumbo v50, "com.samsung.knox.securefolder"

    const-string/jumbo v51, "com.samsung.knox.securefolder.keyguard.KnoxKeyguardService"

    invoke-direct/range {v49 .. v51}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    new-instance v50, Landroid/os/UserHandle;

    move-object/from16 v0, v50

    move/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v49

    move-object/from16 v1, v24

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    :cond_1c
    :goto_6
    const-wide/16 v50, -0x1

    return-wide v50

    :cond_1d
    new-instance v49, Landroid/content/ComponentName;

    const-string/jumbo v50, "com.samsung.android.knox.containeragent"

    const-string/jumbo v51, "com.samsung.android.knox.containeragent.knoxkeyguard.KeyguardService"

    invoke-direct/range {v49 .. v51}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v18

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "start: threw an exception: "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v38

    if-eqz v38, :cond_1f

    invoke-virtual/range {v38 .. v38}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v10

    const/16 v49, -0x1

    move/from16 v0, v49

    if-eq v10, v0, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    const-string/jumbo v50, "user"

    invoke-virtual/range {v49 .. v50}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/os/UserManager;

    move-object/from16 v0, v45

    invoke-virtual {v0, v10}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    if-eqz v9, :cond_1f

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isAdminLocked()Z

    move-result v49

    if-eqz v49, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v49

    if-eqz v49, :cond_1f

    const-wide/16 v50, -0x1

    return-wide v50

    :cond_1f
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v49

    if-eqz v49, :cond_20

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v49

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v50

    invoke-interface/range {v49 .. v50}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v49

    if-lez v49, :cond_20

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "home key disabled by pwd policy in COM case"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v50, -0x1

    return-wide v50

    :catch_1
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isGearVrDocked()Z

    move-result v49

    if-eqz v49, :cond_22

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isGearVrHomeKeyBlocked()Z

    move-result v49

    if-eqz v49, :cond_22

    sget-boolean v49, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v49, :cond_21

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "Home Key is blocked by VR"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    const-wide/16 v50, -0x1

    return-wide v50

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v49

    if-eqz v49, :cond_23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z

    move-result v49

    if-eqz v49, :cond_23

    const-wide/16 v50, -0x1

    return-wide v50

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMirrorLinkEnabled()Z

    move-result v49

    if-eqz v49, :cond_24

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "isMirrorLinkEnabled() true"

    invoke-static/range {v49 .. v50}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v50, -0x1

    return-wide v50

    :cond_24
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockKeyForDrivingMode:Z

    move/from16 v49, v0

    if-eqz v49, :cond_25

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "carmode true"

    invoke-static/range {v49 .. v50}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v50, -0x1

    return-wide v50

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/server/policy/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v49

    if-eqz v49, :cond_26

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "Home key is blocked by policy"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v50, -0x1

    return-wide v50

    :cond_26
    if-nez v14, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isVoIPRinging()Z

    move-result v49

    if-eqz v49, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isAnyKeyMode()Z

    move-result v49

    if-eqz v49, :cond_10

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v48

    if-eqz v48, :cond_27

    invoke-interface/range {v48 .. v48}, Landroid/os/IVoIPInterface;->answerVoIPCall()Z

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "HOME; while ringing: Answer the VoIPcall!"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v50, -0x1

    return-wide v50

    :cond_27
    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "Unable to find IVoIPInterface interface"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v20

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "RemoteException from getVoIPInterfaceService()"

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    move-object/from16 v49, v0

    if-eqz v49, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v49

    if-eqz v49, :cond_29

    sget-boolean v49, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v49, :cond_28

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "Recent key is blocked in ProKiosk mode"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const-wide/16 v50, -0x1

    return-wide v50

    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v49

    if-eqz v49, :cond_2b

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isChangeRequested()I

    move-result v49

    if-gtz v49, :cond_2a

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getBootBanner()Lcom/samsung/android/knox/lockscreen/BootBanner;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/samsung/android/knox/lockscreen/BootBanner;->isDodBannerVisible()Z

    move-result v49

    if-eqz v49, :cond_2b

    :cond_2a
    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "recent apps key disabled by either pwd policy OR DoD Banner"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v50, -0x1

    return-wide v50

    :cond_2b
    const-string/jumbo v49, "persona"

    invoke-static/range {v49 .. v49}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v35

    check-cast v35, Lcom/android/server/pm/PersonaManagerService;

    if-eqz v35, :cond_30

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/pm/PersonaManagerService;->getShownKeyguardOwner()I

    move-result v33

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDesktopModeTi()Z

    move-result v49

    if-eqz v49, :cond_2e

    const/16 v49, -0x515

    move/from16 v0, v33

    move/from16 v1, v49

    if-eq v0, v1, :cond_2e

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v49

    const/16 v50, 0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_2d

    :try_start_3
    const-string/jumbo v49, "SamsungPhoneWindowManager"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "current send personaId : "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v24, Landroid/content/Intent;

    invoke-direct/range {v24 .. v24}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v49, "KnoxKeyguardEventFlag"

    const/16 v50, 0x8

    move-object/from16 v0, v24

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static/range {v33 .. v33}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v49

    if-eqz v49, :cond_2c

    new-instance v49, Landroid/content/ComponentName;

    const-string/jumbo v50, "com.samsung.knox.securefolder"

    const-string/jumbo v51, "com.samsung.knox.securefolder.keyguard.KnoxKeyguardService"

    invoke-direct/range {v49 .. v51}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    new-instance v50, Landroid/os/UserHandle;

    move-object/from16 v0, v50

    move/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v49

    move-object/from16 v1, v24

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    :goto_7
    const-wide/16 v50, -0x2

    return-wide v50

    :cond_2c
    new-instance v49, Landroid/content/ComponentName;

    const-string/jumbo v50, "com.samsung.android.knox.containeragent"

    const-string/jumbo v51, "com.samsung.android.knox.containeragent.knoxkeyguard.KeyguardService"

    invoke-direct/range {v49 .. v51}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    move-exception v18

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "start: threw an exception: "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :cond_2d
    const-wide/16 v50, -0x1

    return-wide v50

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    const-string/jumbo v50, "persona"

    invoke-virtual/range {v49 .. v50}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual/range {v38 .. v38}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    const-string/jumbo v50, "user"

    invoke-virtual/range {v49 .. v50}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/os/UserManager;

    move-object/from16 v0, v45

    invoke-virtual {v0, v10}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    const/16 v49, -0x515

    move/from16 v0, v33

    move/from16 v1, v49

    if-ne v0, v1, :cond_2f

    if-eqz v9, :cond_30

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isAdminLocked()Z

    move-result v49

    if-eqz v49, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v49

    if-eqz v49, :cond_30

    :cond_2f
    const-wide/16 v50, -0x1

    return-wide v50

    :cond_30
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v49

    if-eqz v49, :cond_31

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v49

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v50

    invoke-interface/range {v49 .. v50}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v49

    if-lez v49, :cond_31

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "recent apps key disabled by pwd policy in COM case"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    const-wide/16 v50, -0x1

    return-wide v50

    :catch_4
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMirrorLinkEnabled()Z

    move-result v49

    if-eqz v49, :cond_32

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "isMirrorLinkEnabled() true"

    invoke-static/range {v49 .. v50}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v50, -0x1

    return-wide v50

    :cond_32
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockKeyForDrivingMode:Z

    move/from16 v49, v0

    if-eqz v49, :cond_33

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "carmode true"

    invoke-static/range {v49 .. v50}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v50, -0x1

    return-wide v50

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/server/policy/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v49

    if-eqz v49, :cond_35

    sget-boolean v49, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v49, :cond_34

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "Recent key is blocked by policy"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    const-wide/16 v50, -0x1

    return-wide v50

    :cond_35
    if-eqz v14, :cond_10

    goto/16 :goto_3

    :sswitch_3
    const/16 v49, 0x6f

    move/from16 v0, v31

    move/from16 v1, v49

    if-ne v0, v1, :cond_37

    xor-int/lit8 v49, v14, 0x1

    if-eqz v49, :cond_37

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v49

    xor-int/lit8 v49, v49, 0x1

    if-eqz v49, :cond_37

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v49

    if-eqz v49, :cond_37

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v49

    if-eqz v49, :cond_36

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "Open Task Manager"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v24, Landroid/content/Intent;

    const-string/jumbo v49, "android.intent.action.MAIN"

    move-object/from16 v0, v24

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v49, "android.intent.category.HOME"

    move-object/from16 v0, v24

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v49, 0x10000000

    move-object/from16 v0, v24

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v49, "ZeroPageSetting"

    const/16 v50, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v49, v0

    sget-object v50, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v49

    move-object/from16 v1, v24

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_8
    const-wide/16 v50, -0x1

    return-wide v50

    :cond_36
    const/16 v49, 0x52

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->injectionKeyEvent(I)V

    goto :goto_8

    :cond_37
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasFakeMenuKeyBack:Z

    move/from16 v49, v0

    if-eqz v49, :cond_10

    if-nez v14, :cond_38

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isBackKeyConsumed()Z

    move-result v49

    if-eqz v49, :cond_10

    const-wide/16 v50, -0x1

    return-wide v50

    :cond_38
    if-nez v39, :cond_39

    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    :cond_39
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    move/from16 v49, v0

    if-nez v49, :cond_10

    const/16 v49, 0xa

    move/from16 v0, v39

    move/from16 v1, v49

    if-ne v0, v1, :cond_10

    const/16 v49, 0x1

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    const/16 v49, 0x52

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->injectionKeyEvent(I)V

    goto/16 :goto_3

    :sswitch_4
    if-eqz v14, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 v49, 0x1

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v50, v0

    const-wide/16 v52, 0x3e8

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    move-wide/from16 v2, v52

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3a
    const-wide/16 v50, -0x1

    return-wide v50

    :sswitch_5
    if-nez v14, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    move/from16 v49, v0

    if-eqz v49, :cond_3b

    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->launchFingerPrint()V

    :cond_3b
    const-wide/16 v50, -0x1

    return-wide v50

    :sswitch_6
    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isSupportDMBAntennaDetach()Z

    move-result v49

    if-eqz v49, :cond_43

    const-string/jumbo v49, "service.media.dmb"

    invoke-static/range {v49 .. v49}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v49

    const-string/jumbo v50, "dmb_antenna_auto_start"

    const/16 v51, 0x0

    const/16 v52, -0x2

    invoke-static/range {v49 .. v52}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v49

    const/16 v50, 0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_40

    const/16 v27, 0x1

    :goto_9
    const/4 v6, 0x0

    const/16 v30, 0x0

    if-eqz v11, :cond_3c

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v49

    if-lez v49, :cond_3c

    const-string/jumbo v49, "1"

    move-object/from16 v0, v49

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_41

    const/4 v6, 0x1

    :cond_3c
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v49

    if-eqz v49, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure(I)Z

    move-result v30

    :cond_3d
    const-string/jumbo v49, "SamsungPhoneWindowManager"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "KEYCODE_DMB_ANT_OPEN dmb_running="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, ", isSecureKeyguard="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, ", isDmbAutoStarton="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v14, :cond_3f

    if-nez v39, :cond_3f

    :try_start_5
    const-string/jumbo v4, "/efs/FactoryApp/tdmb_det_count"

    new-instance v49, Ljava/io/File;

    move-object/from16 v0, v49

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v50, 0x0

    const/16 v51, 0x0

    invoke-static/range {v49 .. v51}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v43

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "TDMB_DET_COUNT : "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v43, :cond_42

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v49

    if-lez v49, :cond_42

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v50

    const-wide/16 v52, 0x1

    add-long v12, v50, v52

    const-wide/32 v50, 0xf423f

    cmp-long v49, v12, v50

    if-lez v49, :cond_3e

    const-wide/16 v12, 0x1

    :cond_3e
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-static {v4, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_3f
    :goto_b
    if-nez v14, :cond_10

    if-nez v39, :cond_10

    xor-int/lit8 v49, v6, 0x1

    if-eqz v49, :cond_10

    xor-int/lit8 v49, v30, 0x1

    if-eqz v49, :cond_10

    if-eqz v27, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v50, v0

    invoke-static/range {v49 .. v50}, Landroid/os/FactoryTest;->isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result v49

    if-nez v49, :cond_10

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "KEYCODE_DMB_ANT_OPEN"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v49, Landroid/content/ComponentName;

    const-string/jumbo v50, "com.sec.android.app.dmb"

    const-string/jumbo v51, "com.sec.android.app.dmb.activity.DMBFullScreenView"

    invoke-direct/range {v49 .. v51}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v49 .. v49}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v24

    const-string/jumbo v49, "com.sec.android.action.DMB_ANT_OPEN"

    move-object/from16 v0, v24

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v49, 0x10000000

    move-object/from16 v0, v24

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v49, v0

    sget-object v50, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v49

    move-object/from16 v1, v24

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_7

    :goto_c
    const-wide/16 v50, -0x1

    return-wide v50

    :cond_40
    const/16 v27, 0x0

    goto/16 :goto_9

    :cond_41
    const-string/jumbo v49, "0"

    move-object/from16 v0, v49

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_3c

    const/4 v6, 0x0

    goto/16 :goto_a

    :cond_42
    :try_start_7
    const-string/jumbo v49, "0"

    move-object/from16 v0, v49

    invoke-static {v4, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_b

    :catch_5
    move-exception v17

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "IOException : "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :catch_6
    move-exception v19

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "NumberFormatException : "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :catch_7
    move-exception v15

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "No activity to launch DMB."

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-static {v0, v1, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    :cond_43
    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isSupportDTVAntennaDetach()Z

    move-result v49

    if-eqz v49, :cond_10

    const/16 v30, 0x0

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "SISO DTV  APPLICATION KEYCODE_DTV_ANTENNA_OPEN"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v49

    if-eqz v49, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure(I)Z

    move-result v30

    :cond_44
    if-nez v14, :cond_10

    if-nez v39, :cond_10

    xor-int/lit8 v49, v30, 0x1

    if-eqz v49, :cond_10

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "SISO DTV  APPLICATION KEYCODE_DTV_ANTENNA_OPEN TO SEND BROADCAST"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v24, Landroid/content/Intent;

    invoke-direct/range {v24 .. v24}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v49, "com.samsung.sec.mtv.DTV_ANTENNA_OPEN"

    move-object/from16 v0, v24

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    sget-object v50, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v49

    move-object/from16 v1, v24

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-wide/16 v50, -0x1

    return-wide v50

    :sswitch_7
    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isSupportDMBAntennaDetach()Z

    move-result v49

    if-eqz v49, :cond_45

    if-nez v14, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v50, v0

    invoke-static/range {v49 .. v50}, Landroid/os/FactoryTest;->isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result v49

    if-nez v49, :cond_10

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "KEYCODE_DMB_ANT_CLOSE"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v24, Landroid/content/Intent;

    invoke-direct/range {v24 .. v24}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v49, "com.sec.android.action.DMB_ANT_CLOSE"

    move-object/from16 v0, v24

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    sget-object v50, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v49

    move-object/from16 v1, v24

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-wide/16 v50, -0x1

    return-wide v50

    :cond_45
    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isSupportDTVAntennaDetach()Z

    move-result v49

    if-eqz v49, :cond_10

    if-nez v14, :cond_10

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "KEYCODE_DTV_ANT_CLOSE"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v24, Landroid/content/Intent;

    invoke-direct/range {v24 .. v24}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v49, "com.samsung.sec.mtv.DTV_ANTENNA_CLOSE"

    move-object/from16 v0, v24

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    sget-object v50, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v49

    move-object/from16 v1, v24

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-wide/16 v50, -0x1

    return-wide v50

    :sswitch_8
    if-eqz v14, :cond_10

    xor-int/lit8 v49, v32, 0x1

    if-eqz v49, :cond_10

    if-nez v39, :cond_10

    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v41

    if-eqz v41, :cond_46

    invoke-interface/range {v41 .. v41}, Lcom/android/internal/statusbar/IStatusBarService;->toggleNotificationPanel()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_b

    :cond_46
    :goto_d
    const-wide/16 v50, -0x1

    return-wide v50

    :sswitch_9
    if-nez v14, :cond_47

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->launchSFinderIfPossible()Z

    :cond_47
    const-wide/16 v50, -0x1

    return-wide v50

    :sswitch_a
    if-nez v14, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v49

    if-eqz v49, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v49

    if-eqz v49, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isScreenCaptureEnabled()Z

    move-result v49

    if-eqz v49, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    new-instance v50, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;

    const/16 v51, 0x1

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    move/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;I)V

    invoke-virtual/range {v49 .. v50}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    :sswitch_b
    if-nez v14, :cond_48

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v49

    if-eqz v49, :cond_48

    xor-int/lit8 v49, v32, 0x1

    if-eqz v49, :cond_48

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "KEYCODE_MULTI_WINDOW key input"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v42

    if-eqz v42, :cond_48

    invoke-interface/range {v42 .. v42}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleSplitScreen()V

    :cond_48
    const-wide/16 v50, -0x1

    return-wide v50

    :sswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v49

    if-eqz v49, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z

    move-result v49

    if-eqz v49, :cond_10

    const-wide/16 v50, -0x1

    return-wide v50

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v49

    if-eqz v49, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v50, v0

    const v51, 0x1040493

    invoke-virtual/range {v50 .. v51}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v50

    invoke-interface/range {v50 .. v50}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v50

    const/16 v51, 0x0

    invoke-static/range {v49 .. v51}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/widget/Toast;->show()V

    const-wide/16 v50, -0x1

    return-wide v50

    :cond_49
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->shouldPassEventForPTT(Landroid/view/KeyEvent;)Z

    move-result v49

    if-nez v49, :cond_10

    if-eqz v14, :cond_4c

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v49

    if-nez v49, :cond_4a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUserKeyLongPressed:Z

    move/from16 v49, v0

    if-eqz v49, :cond_4a

    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUserKeyLongPressed:Z

    :cond_4a
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v49

    if-eqz v49, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v49, v0

    sget-boolean v49, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v49, :cond_4b

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "User key longpress"

    invoke-static/range {v49 .. v50}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    const/16 v49, 0x1

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUserKeyLongPressed:Z

    const/16 v49, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->handleUserKey(Z)Z

    move-result v49

    if-eqz v49, :cond_10

    const-wide/16 v50, -0x1

    return-wide v50

    :cond_4c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isUserKeyLongPressed()Z

    move-result v49

    if-nez v49, :cond_10

    const/16 v49, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->handleUserKey(Z)Z

    move-result v49

    if-eqz v49, :cond_10

    const-wide/16 v50, -0x1

    return-wide v50

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v49

    if-eqz v49, :cond_4d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarrierLocked()Z

    move-result v49

    if-nez v49, :cond_4d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSimLocked()Z

    move-result v49

    if-nez v49, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/server/policy/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v49

    if-eqz v49, :cond_4e

    :cond_4d
    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "no action about wink"

    invoke-static/range {v49 .. v50}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v50, -0x1

    return-wide v50

    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v49

    if-nez v49, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v49

    if-nez v49, :cond_4f

    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsBixbyConsumed:Z

    if-eqz v14, :cond_4f

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->checkBixbyToast()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyMsg:Ljava/lang/String;

    move-object/from16 v49, v0

    if-eqz v49, :cond_4f

    if-eqz v25, :cond_4f

    new-instance v23, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v49

    move-object/from16 v0, v23

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v49, Lcom/android/server/policy/SamsungPhoneWindowManager$28;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager$28;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    const-wide/16 v50, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v49

    move-wide/from16 v2, v50

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4f
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyMsg:Ljava/lang/String;

    move-object/from16 v49, v0

    if-nez v49, :cond_52

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v49

    if-eqz v49, :cond_50

    if-eqz v28, :cond_52

    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyComponent:Landroid/content/ComponentName;

    move-object/from16 v49, v0

    if-eqz v49, :cond_52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/os/PowerManager$WakeLock;->acquire()V

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v49, v0

    sget-boolean v49, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v49, :cond_51

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "mIsBixbyConsumed = "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsBixbyConsumed:Z

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, " event = "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyComponent:Landroid/content/ComponentName;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v49, "KEYEVENT"

    invoke-static/range {p2 .. p2}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v50

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v49, "BIXBY_KEY_FW_VERSION"

    const/16 v50, 0x2

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    sget-object v50, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_52
    const-wide/16 v50, -0x1

    return-wide v50

    :sswitch_f
    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "KeyEvent.KEYCODE_NETWORK_SEL"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v49

    if-nez v49, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v49

    if-eqz v49, :cond_54

    :cond_53
    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "Network selection key - no action in factory mode"

    invoke-static/range {v49 .. v50}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_54
    if-nez v32, :cond_55

    if-eqz v14, :cond_56

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x80

    move/from16 v49, v0

    if-eqz v49, :cond_56

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "Network selection long press action"

    invoke-static/range {v49 .. v50}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v24, Landroid/content/Intent;

    invoke-direct/range {v24 .. v24}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v49, "ACTION_NETWORK_LONGPRESS_KEY"

    move-object/from16 v0, v24

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    sget-object v50, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v49

    move-object/from16 v1, v24

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/16 v49, 0x1

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNetworkSelectionLongPress:Z

    :cond_55
    :goto_e
    const-wide/16 v50, -0x1

    return-wide v50

    :cond_56
    if-nez v14, :cond_55

    if-nez v39, :cond_55

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNetworkSelectionLongPress:Z

    move/from16 v49, v0

    if-nez v49, :cond_57

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "Network selection short press action"

    invoke-static/range {v49 .. v50}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v24, Landroid/content/Intent;

    invoke-direct/range {v24 .. v24}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v49, "ACTION_NETWORK_KEY"

    move-object/from16 v0, v24

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    sget-object v50, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v49

    move-object/from16 v1, v24

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_e

    :cond_57
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNetworkSelectionLongPress:Z

    goto :goto_e

    :sswitch_10
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v49

    if-nez v49, :cond_58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v49

    if-eqz v49, :cond_59

    :cond_58
    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "Data key - no action in factory mode"

    invoke-static/range {v49 .. v50}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_59
    if-nez v14, :cond_10

    if-nez v39, :cond_10

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "3G key action"

    invoke-static/range {v49 .. v50}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v24, Landroid/content/Intent;

    const-string/jumbo v49, "android.settings.DATA_NETWORK_KEY_PRESSED"

    move-object/from16 v0, v24

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    sget-object v50, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v49

    move-object/from16 v1, v24

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_3

    :sswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSimLocked()Z

    move-result v49

    if-nez v49, :cond_5a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarrierLocked()Z

    move-result v49

    if-nez v49, :cond_5a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/server/policy/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v49

    if-eqz v49, :cond_10

    :cond_5a
    sget-boolean v49, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v49, :cond_5b

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "Key was blocked by sim or carrier status"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    const-wide/16 v50, -0x1

    return-wide v50

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/server/policy/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v49

    if-eqz v49, :cond_10

    sget-boolean v49, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v49, :cond_5c

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "Key was blocked by carrier status"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    const-wide/16 v50, -0x1

    return-wide v50

    :sswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v49

    if-nez v49, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v49

    if-eqz v49, :cond_10

    if-nez v14, :cond_5d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/android/server/wm/IWindowManagerServiceBridge;->getFocusedTaskId()I

    move-result v49

    const/16 v50, -0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-eq v0, v1, :cond_5e

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "window screenshot"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    new-instance v50, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;

    const/16 v51, 0x64

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    move/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;I)V

    invoke-virtual/range {v49 .. v50}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5d
    :goto_f
    const-wide/16 v50, -0x1

    return-wide v50

    :cond_5e
    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "full screenshot"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    new-instance v50, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;

    const/16 v51, 0x1

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    move/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;I)V

    invoke-virtual/range {v49 .. v50}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f

    :sswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v49

    if-nez v49, :cond_10

    xor-int/lit8 v49, v14, 0x1

    if-eqz v49, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v49

    if-eqz v49, :cond_10

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "goto home by combination key"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    const-wide/16 v50, -0x1

    return-wide v50

    :sswitch_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v49

    if-nez v49, :cond_10

    xor-int/lit8 v49, v14, 0x1

    if-eqz v49, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v49

    if-eqz v49, :cond_10

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "launch SFinder"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->launchSFinderIfPossible()Z

    const-wide/16 v50, -0x1

    return-wide v50

    :sswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v49

    if-nez v49, :cond_63

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v49

    if-eqz v49, :cond_63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v49

    if-eqz v49, :cond_5f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarrierLocked()Z

    move-result v49

    if-nez v49, :cond_5f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSimLocked()Z

    move-result v49

    if-nez v49, :cond_5f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/server/policy/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v49

    if-eqz v49, :cond_60

    :cond_5f
    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "no action about wink"

    invoke-static/range {v49 .. v50}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v50, -0x1

    return-wide v50

    :cond_60
    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "bixby is triggered(combination)"

    invoke-static/range {v49 .. v50}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v49

    if-nez v49, :cond_61

    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsBixbyConsumed:Z

    if-eqz v14, :cond_61

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->checkBixbyToast()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyMsg:Ljava/lang/String;

    move-object/from16 v49, v0

    if-eqz v49, :cond_61

    if-eqz v25, :cond_61

    new-instance v23, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v49

    move-object/from16 v0, v23

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v49, Lcom/android/server/policy/SamsungPhoneWindowManager$29;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager$29;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    const-wide/16 v50, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v49

    move-wide/from16 v2, v50

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_61
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyMsg:Ljava/lang/String;

    move-object/from16 v49, v0

    if-nez v49, :cond_63

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v49

    if-eqz v49, :cond_62

    if-eqz v28, :cond_63

    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyComponent:Landroid/content/ComponentName;

    move-object/from16 v49, v0

    if-eqz v49, :cond_63

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyComponent:Landroid/content/ComponentName;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v49, "KEYEVENT"

    invoke-static/range {p2 .. p2}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v50

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v49, "BIXBY_KEY_FW_VERSION"

    const/16 v50, 0x2

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    sget-object v50, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    :cond_63
    if-nez v14, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v49

    if-eqz v49, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_3

    :sswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v49

    if-nez v49, :cond_10

    xor-int/lit8 v49, v14, 0x1

    if-eqz v49, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v49

    if-eqz v49, :cond_10

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "launch Quick Setting"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v40

    if-eqz v40, :cond_64

    const/16 v49, 0x0

    :try_start_9
    move-object/from16 v0, v40

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanel(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_8

    :cond_64
    :goto_10
    const-wide/16 v50, -0x1

    return-wide v50

    :catch_8
    move-exception v16

    goto :goto_10

    :sswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v49

    if-nez v49, :cond_10

    xor-int/lit8 v49, v14, 0x1

    if-eqz v49, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v49

    if-eqz v49, :cond_10

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "launch volume panel"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v50, v0

    invoke-static {}, Landroid/media/AudioManager;->semGetActiveStreamType()I

    move-result v50

    const/16 v51, 0x0

    const/16 v52, 0x1

    invoke-virtual/range {v49 .. v52}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    const-wide/16 v50, -0x1

    return-wide v50

    :sswitch_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v49

    if-nez v49, :cond_10

    xor-int/lit8 v49, v14, 0x1

    if-eqz v49, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v49

    if-eqz v49, :cond_10

    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/android/server/wm/IWindowManagerServiceBridge;->getFocusedTaskId()I

    move-result v22

    const/16 v49, -0x1

    move/from16 v0, v22

    move/from16 v1, v49

    if-eq v0, v1, :cond_65

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "finish focused window"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->removeTask(I)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a

    :cond_65
    :goto_11
    const-wide/16 v50, -0x1

    return-wide v50

    :sswitch_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v49

    if-nez v49, :cond_10

    xor-int/lit8 v49, v14, 0x1

    if-eqz v49, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v49

    if-eqz v49, :cond_10

    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Lcom/android/server/wm/IWindowManagerServiceBridge;->getFocusedTaskId()I

    move-result v22

    const/16 v49, -0x1

    move/from16 v0, v22

    move/from16 v1, v49

    if-eq v0, v1, :cond_66

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "finish focused window"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->removeTask(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_9

    :cond_66
    :goto_12
    const-wide/16 v50, -0x1

    return-wide v50

    :sswitch_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v49

    goto/16 :goto_3

    :sswitch_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v49

    if-eqz v49, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z

    move-result v49

    if-eqz v49, :cond_10

    const-wide/16 v50, -0x1

    return-wide v50

    :sswitch_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMetaKeyEventRequested()Z

    move-result v49

    if-nez v49, :cond_10

    xor-int/lit8 v49, v14, 0x1

    if-eqz v49, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v49

    if-eqz v49, :cond_10

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "toggle recentapp"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    const-wide/16 v50, -0x1

    return-wide v50

    :sswitch_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isGearVrSupport()Z

    move-result v49

    if-eqz v49, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isGearVrDocked()Z

    move-result v49

    if-eqz v49, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isGearVrSupportRecents()Z

    move-result v49

    if-eqz v49, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v49

    if-eqz v49, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v49

    move/from16 v0, v49

    and-int/lit16 v0, v0, 0x80

    move/from16 v49, v0

    if-eqz v49, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v49

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isGearVrInputDevice(Landroid/view/InputDevice;)Z

    move-result v49

    if-eqz v49, :cond_10

    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "startGearVrRecents"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->startGearVrRecents()V

    const-wide/16 v50, -0x1

    return-wide v50

    :cond_67
    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_68
    const-string/jumbo v49, "SamsungPhoneWindowManager"

    const-string/jumbo v50, "sec check systemkey before dispatching "

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v50, 0x0

    return-wide v50

    :cond_69
    const/16 v49, 0x6

    move/from16 v0, v31

    move/from16 v1, v49

    if-ne v0, v1, :cond_6c

    if-eqz p1, :cond_6a

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    :goto_13
    if-eqz v5, :cond_6b

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v49, v0

    move/from16 v0, v49

    and-int/lit16 v0, v0, 0x400

    move/from16 v49, v0

    if-eqz v49, :cond_6b

    const-wide/16 v50, 0x0

    return-wide v50

    :cond_6a
    const/4 v5, 0x0

    goto :goto_13

    :cond_6b
    const-wide/16 v50, -0x1

    return-wide v50

    :cond_6c
    if-eqz v29, :cond_6d

    const-wide/16 v50, -0x1

    return-wide v50

    :cond_6d
    const-wide/16 v50, -0x2

    return-wide v50

    :catch_9
    move-exception v16

    goto/16 :goto_12

    :catch_a
    move-exception v16

    goto/16 :goto_11

    :catch_b
    move-exception v20

    goto/16 :goto_d

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_3
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x18 -> :sswitch_1c
        0x19 -> :sswitch_1c
        0x1a -> :sswitch_c
        0x1b -> :sswitch_11
        0x20 -> :sswitch_14
        0x22 -> :sswitch_15
        0x25 -> :sswitch_16
        0x28 -> :sswitch_0
        0x2d -> :sswitch_17
        0x32 -> :sswitch_18
        0x34 -> :sswitch_19
        0x3d -> :sswitch_1d
        0x6f -> :sswitch_3
        0x75 -> :sswitch_1b
        0x76 -> :sswitch_1b
        0x78 -> :sswitch_13
        0x7a -> :sswitch_0
        0x7d -> :sswitch_1e
        0x86 -> :sswitch_1a
        0xbb -> :sswitch_2
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_0
        0x3eb -> :sswitch_8
        0x3ec -> :sswitch_a
        0x3f7 -> :sswitch_d
        0x3f9 -> :sswitch_6
        0x3fa -> :sswitch_7
        0x40c -> :sswitch_10
        0x415 -> :sswitch_4
        0x416 -> :sswitch_5
        0x417 -> :sswitch_f
        0x41a -> :sswitch_c
        0x425 -> :sswitch_b
        0x428 -> :sswitch_9
        0x431 -> :sswitch_12
        0x43a -> :sswitch_e
    .end sparse-switch
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 36

    const/high16 v31, 0x20000000

    and-int v31, v31, p2

    if-eqz v31, :cond_2

    const/16 v20, 0x1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v31

    if-nez v31, :cond_3

    const/4 v13, 0x1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedSystemKey:Z

    move/from16 v31, v0

    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRequestedSystemKey:Z

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockTaskModeState:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_4

    const/16 v31, 0x3

    move/from16 v0, v23

    move/from16 v1, v31

    if-eq v0, v1, :cond_1

    const/16 v31, 0xbb

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_4

    :cond_1
    const-string/jumbo v31, "SamsungPhoneWindowManager"

    const-string/jumbo v32, "Key was blocked by LOCK_TASK_MODE_LOCKED"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v31, 0x2

    return v31

    :cond_2
    const/16 v20, 0x0

    goto :goto_0

    :cond_3
    const/4 v13, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMirrorLinkEnabled()Z

    move-result v31

    if-eqz v31, :cond_5

    sparse-switch v23, :sswitch_data_0

    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->broadcastHardKeyIntent(Landroid/view/KeyEvent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    move-object/from16 v31, v0

    if-eqz v31, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/Map;->isEmpty()Z

    move-result v31

    xor-int/lit8 v31, v31, 0x1

    if-eqz v31, :cond_9

    const/16 v21, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v31

    if-nez v31, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v31

    if-nez v31, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    move-object/from16 v31, v0

    if-eqz v31, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v31

    if-eqz v31, :cond_7

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v21

    const/16 v31, 0x18

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskReEnableVolumeUpKey:Z

    move/from16 v31, v0

    if-eqz v31, :cond_6

    const/16 v21, 0x1

    :cond_6
    :goto_2
    if-nez v21, :cond_9

    const-string/jumbo v31, "SamsungPhoneWindowManager"

    const-string/jumbo v32, "MDM: key is blocked"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v31, 0x2

    return v31

    :sswitch_0
    const-string/jumbo v31, "SamsungPhoneWindowManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Blocked by MirrorLink:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v31, 0x2

    return v31

    :cond_7
    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v21

    goto :goto_2

    :cond_8
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v21

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/CombinationKeyManager;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/CombinationKeyManager;->interceptKeyCombinationBeforeQueueing(Landroid/view/KeyEvent;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/server/policy/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v31

    if-nez v31, :cond_a

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v20

    invoke-virtual {v0, v1, v13, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->processTorchlight(IZZ)V

    :cond_a
    const/16 v31, 0x3

    move/from16 v0, v23

    move/from16 v1, v31

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isEnableAccessControl(I)Z

    move-result v31

    if-eqz v31, :cond_c

    sget-boolean v31, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v31, :cond_b

    const-string/jumbo v31, "SamsungPhoneWindowManager"

    const-string/jumbo v32, "interceptKeyTq : Key was blocked by access control"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/16 v31, 0x2

    return v31

    :cond_c
    sparse-switch v23, :sswitch_data_1

    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    move-object/from16 v31, v0

    if-eqz v31, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v31

    if-eqz v31, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/knox/custom/ProKioskManager;->getVolumeKeyAppState()Z

    move-result v31

    if-eqz v31, :cond_3d

    if-eqz v13, :cond_3d

    const/16 v31, 0x19

    move/from16 v0, v23

    move/from16 v1, v31

    if-eq v0, v1, :cond_e

    const/16 v31, 0x18

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_3d

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/policy/PhoneWindowManager;->isGlobalActionsDialogShowing()Z

    move-result v31

    if-eqz v31, :cond_2e

    const-string/jumbo v31, "SamsungPhoneWindowManager"

    const-string/jumbo v32, "Knox Custom: GlobalActions dialog showing; not doing Volume Key app switching"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v31, 0x18

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/policy/PhoneWindowManager;->isGlobalActionsDialogPowerOptionHidden()Z

    move-result v31

    if-eqz v31, :cond_2d

    const-string/jumbo v31, "SamsungPhoneWindowManager"

    const-string/jumbo v32, "Knox Custom: GlobalActions dialog showing; forward the key for Power option display"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v31, 0x1

    return v31

    :sswitch_1
    const/16 v26, 0x1

    sget-boolean v31, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_IMMERSIVE_FORCE_TOUCH:Z

    if-eqz v31, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v31

    const/high16 v32, 0x100000

    and-int v31, v31, v32

    if-eqz v31, :cond_f

    xor-int/lit8 v31, v20, 0x1

    if-eqz v31, :cond_f

    if-eqz v13, :cond_f

    const-string/jumbo v31, "SamsungPhoneWindowManager"

    const-string/jumbo v32, "call onForcePressedSleep"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNaviBarForceTouchManager:Lcom/android/server/policy/NaviBarForceTouchManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/policy/NaviBarForceTouchManager;->onForcePressedSleep()V

    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/policy/SamsungPhoneWindowManager;->checkTriggerQD(Z)Z

    move-result v31

    if-eqz v31, :cond_10

    if-nez v20, :cond_14

    and-int/lit8 v31, p2, 0x1

    if-nez v31, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isWakeKey()Z

    move-result v31

    :goto_4
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsWakekey:Z

    const/16 v26, 0x5

    :cond_10
    if-nez v20, :cond_11

    if-eqz v13, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->hasCustomDoubleTapLaunchCommand()Z

    move-result v31

    if-eqz v31, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNeedTriggerQD:Z

    move/from16 v31, v0

    xor-int/lit8 v31, v31, 0x1

    if-eqz v31, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultitapKeyManager:Lcom/android/server/policy/IMultitapKeyManagerBridge;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    move/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/android/server/policy/IMultitapKeyManagerBridge;->dispatchMultitapKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result v31

    if-eqz v31, :cond_11

    or-int/lit8 v26, v26, 0x8

    :cond_11
    if-eqz v20, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/PowerManagerInternal;->isProximityPositive()Z

    move-result v31

    if-eqz v31, :cond_12

    if-eqz v13, :cond_12

    const/16 v26, 0x12

    :cond_12
    const-string/jumbo v31, "SamsungPhoneWindowManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "sec interceptKeyTq home s_result="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v26

    :cond_13
    const/16 v31, 0x1

    goto :goto_4

    :cond_14
    const/16 v31, 0x0

    goto :goto_4

    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMirrorLinkEnabled()Z

    move-result v31

    if-eqz v31, :cond_15

    const-string/jumbo v31, "SamsungPhoneWindowManager"

    const-string/jumbo v32, "isMirrorLinkEnabled() true"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v31, 0x2

    return v31

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isGearVrDocked()Z

    move-result v31

    if-eqz v31, :cond_16

    const/16 v31, 0x2

    return v31

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v31

    if-nez v31, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v31

    if-eqz v31, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->semGetDisplayId()I

    move-result v31

    if-nez v31, :cond_18

    :cond_17
    const-string/jumbo v31, "SamsungPhoneWindowManager"

    const-string/jumbo v32, "sec check isSystemKeyEventRequested add pass"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v31, 0x4

    return v31

    :cond_18
    const-string/jumbo v31, "SamsungPhoneWindowManager"

    const-string/jumbo v32, "sec check isSystemKeyEventRequested remove pass"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v31, 0x8

    return v31

    :sswitch_3
    if-nez v13, :cond_1a

    const-string/jumbo v31, "SamsungPhoneWindowManager"

    const-string/jumbo v32, "launch voice LPSD"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v31

    if-eqz v31, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v31, v0

    const-wide/16 v32, 0x1388

    invoke-virtual/range {v31 .. v33}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    const-string/jumbo v5, "com.samsung.android.app.sounddetector.VOICE_WAKEUP"

    new-instance v19, Landroid/content/Intent;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    sget-object v32, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1a
    const/16 v31, 0x2

    return v31

    :sswitch_4
    if-nez v13, :cond_1c

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v31

    if-nez v31, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v31

    if-eqz v31, :cond_1d

    :cond_1b
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v31, "com.sec.android.intent.action.VOICE_WAKEUP_KEY"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    sget-object v32, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string/jumbo v33, "com.sec.android.permission.HANDLE_VOICE_WAKEUP_KEY"

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_1c
    :goto_5
    const/16 v31, 0x2

    return v31

    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsCheckDrivingMode:Z

    move/from16 v31, v0

    if-eqz v31, :cond_1e

    const-string/jumbo v31, "SamsungPhoneWindowManager"

    const-string/jumbo v32, "launch drivelink"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v31, "com.sec.android.automotive.drivelink.ACTION_VOICE_WAKEUP"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    sget-object v32, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_5

    :cond_1e
    const-string/jumbo v31, "SamsungPhoneWindowManager"

    const-string/jumbo v32, "launch voice command"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "com.samsung.alwaysmicon.alwaysmiconservice.ACTION_VOICE_WAKEUP"

    new-instance v19, Landroid/content/Intent;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    sget-object v32, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_5

    :sswitch_5
    if-eqz v13, :cond_20

    const-string/jumbo v31, "SamsungPhoneWindowManager"

    const-string/jumbo v32, "Press KEYCODE_DOUBLE_TAP"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string/jumbo v32, "screen_off_memo"

    const/16 v33, 0x0

    const/16 v34, -0x2

    invoke-static/range {v31 .. v34}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v31

    if-eqz v31, :cond_20

    new-instance v27, Landroid/content/Intent;

    invoke-direct/range {v27 .. v27}, Landroid/content/Intent;-><init>()V

    new-instance v31, Landroid/content/ComponentName;

    const-string/jumbo v32, "com.samsung.android.app.notes"

    const-string/jumbo v33, "com.samsung.android.app.notes.screenoffmemo.ScreenOffMemoService"

    invoke-direct/range {v31 .. v33}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v31, "pen_intent_com"

    const-string/jumbo v32, "pen_doubletab"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v31

    if-eqz v31, :cond_1f

    new-instance v12, Landroid/os/UserHandle;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v31

    move/from16 v0, v31

    invoke-direct {v12, v0}, Landroid/os/UserHandle;-><init>(I)V

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v12}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    :cond_20
    const/16 v31, 0x2

    return v31

    :sswitch_6
    and-int/lit8 v31, p2, 0x1

    if-nez v31, :cond_21

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isWakeKey()Z

    move-result v22

    :goto_6
    if-nez v22, :cond_22

    xor-int/lit8 v31, v20, 0x1

    if-eqz v31, :cond_22

    const/16 v31, 0x2

    return v31

    :cond_21
    const/16 v22, 0x1

    goto :goto_6

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportActiveDouble()Z

    move-result v31

    if-eqz v31, :cond_25

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyCurTime:J

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyTriggered:Z

    move/from16 v31, v0

    if-nez v31, :cond_24

    if-nez v13, :cond_23

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyTriggered:Z

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyCurTime:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0xaa

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyCurTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyPress:Ljava/lang/Runnable;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyPress:Ljava/lang/Runnable;

    move-object/from16 v32, v0

    const-wide/16 v34, 0xaa

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_7
    const/16 v31, 0x24

    return v31

    :cond_23
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyCurTime:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x1f4

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyCurTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyPress:Ljava/lang/Runnable;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mActiveKeyPress:Ljava/lang/Runnable;

    move-object/from16 v32, v0

    const-wide/16 v34, 0x1f4

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    :cond_24
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsDoublePressedUserKey:Z

    goto :goto_7

    :cond_25
    const/16 v31, 0x4

    return v31

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/server/policy/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    move/from16 v31, v0

    if-nez v31, :cond_27

    if-eqz v13, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/PowerManager$WakeLock;->acquire()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    move-object/from16 v32, v0

    const-wide/16 v34, 0xbb8

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_26
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/server/policy/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v31

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_d

    const-string/jumbo v31, "SamsungPhoneWindowManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "LidState="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, "; isScreenOn="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, "; mWatchLaunching="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWatchLaunching:Z

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, "; isRingingOrOffhook="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isRingingOrOffhook()Z

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, "; isUsingSound="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isUsingSound()Z

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    move/from16 v31, v0

    if-nez v31, :cond_28

    if-eqz v13, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v31

    xor-int/lit8 v31, v31, 0x1

    if-eqz v31, :cond_28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWatchLaunching:Z

    move/from16 v31, v0

    xor-int/lit8 v31, v31, 0x1

    if-eqz v31, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isRingingOrOffhook()Z

    move-result v31

    xor-int/lit8 v31, v31, 0x1

    if-eqz v31, :cond_28

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isUsingSound()Z

    move-result v31

    xor-int/lit8 v31, v31, 0x1

    if-eqz v31, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v31

    if-eqz v31, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string/jumbo v32, "premium_watch_switch_onoff"

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_d

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWatchLaunching:Z

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->launchPremiumWatch(Z)V

    const/16 v31, 0x2

    return v31

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v31

    if-eqz v31, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_8

    :cond_28
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWatchLaunching:Z

    move/from16 v31, v0

    if-eqz v31, :cond_d

    const/16 v31, 0x2

    return v31

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    move/from16 v31, v0

    if-eqz v31, :cond_d

    if-eqz v13, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isVoIPRinging()Z

    move-result v31

    if-eqz v31, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isVolumeKeyMode()Z

    move-result v31

    if-eqz v31, :cond_d

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v29

    if-eqz v29, :cond_29

    invoke-interface/range {v29 .. v29}, Landroid/os/IVoIPInterface;->answerVoIPCall()Z

    const-string/jumbo v31, "SamsungPhoneWindowManager"

    const-string/jumbo v32, "VU; while ringing: Answer VoIPcall!"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v31, 0x2

    return v31

    :cond_29
    const-string/jumbo v31, "SamsungPhoneWindowManager"

    const-string/jumbo v32, "Unable to find IVoIPInterface interface"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v15

    const-string/jumbo v31, "SamsungPhoneWindowManager"

    const-string/jumbo v32, "RemoteException from getVoIPInterfaceService()"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :sswitch_9
    if-eqz v20, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/PowerManagerInternal;->isProximityPositive()Z

    move-result v31

    if-eqz v31, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v31, v0

    if-nez v31, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string/jumbo v32, "phone"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v31

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2b

    const-string/jumbo v31, "SamsungPhoneWindowManager"

    const-string/jumbo v32, "no wakeup(prox and inCall)"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v31, 0x22

    return v31

    :cond_2b
    const/16 v31, 0x1

    return v31

    :cond_2c
    const/16 v31, 0x4

    return v31

    :cond_2d
    const/16 v31, 0x2

    return v31

    :cond_2e
    const-string/jumbo v31, "SamsungPhoneWindowManager"

    const-string/jumbo v32, "Knox Custom: Volume Key app switching starting"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/knox/custom/ProKioskManager;->getVolumeKeyAppsList()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_2f

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v31

    if-nez v31, :cond_31

    :cond_2f
    const-string/jumbo v31, "SamsungPhoneWindowManager"

    const-string/jumbo v32, "Knox Custom: no apps in list"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    :goto_9
    const-string/jumbo v31, "SamsungPhoneWindowManager"

    const-string/jumbo v32, "Knox Custom: Volume Key app switching done"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v31, 0x2

    return v31

    :cond_31
    const-string/jumbo v31, "SamsungPhoneWindowManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Knox Custom: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " apps in list"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string/jumbo v32, "activity"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_33

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    if-eqz v10, :cond_32

    const-string/jumbo v31, "SamsungPhoneWindowManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Knox Custom: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " available"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_32
    const-string/jumbo v31, "SamsungPhoneWindowManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Knox Custom: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " not available"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_33
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-nez v31, :cond_34

    const-string/jumbo v31, "SamsungPhoneWindowManager"

    const-string/jumbo v32, "Knox Custom: no available apps"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_34
    const v31, 0x7fffffff

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v28

    const/16 v31, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v31, "SamsungPhoneWindowManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Knox Custom: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " in foreground"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, -0x1

    const/16 v18, 0x0

    :goto_b
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v18

    move/from16 v1, v31

    if-ge v0, v1, :cond_36

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_35

    const-string/jumbo v31, "SamsungPhoneWindowManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Knox Custom: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " found at index "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v18

    :cond_35
    add-int/lit8 v18, v18, 0x1

    goto :goto_b

    :cond_36
    const/16 v31, -0x1

    move/from16 v0, v17

    move/from16 v1, v31

    if-ne v0, v1, :cond_37

    const-string/jumbo v31, "SamsungPhoneWindowManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Knox Custom: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " not found in list; use first"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    move-object/from16 v24, v16

    const/16 v31, 0x19

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_3a

    if-lez v17, :cond_39

    add-int/lit8 v31, v17, -0x1

    move/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    :cond_38
    :goto_c
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_3c

    const-string/jumbo v31, "SamsungPhoneWindowManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Knox Custom: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " already in foreground"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_39
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v31

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    goto :goto_c

    :cond_3a
    const/16 v31, 0x18

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_38

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v31

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v17

    move/from16 v1, v31

    if-ge v0, v1, :cond_3b

    add-int/lit8 v31, v17, 0x1

    move/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    goto :goto_c

    :cond_3b
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    goto :goto_c

    :cond_3c
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    const-string/jumbo v31, "SamsungPhoneWindowManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Knox Custom: switching to "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_30

    const/high16 v31, 0x10400000

    move/from16 v0, v31

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v31, v0

    sget-object v32, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v10, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_9

    :catch_1
    move-exception v14

    const-string/jumbo v31, "SamsungPhoneWindowManager"

    const-string/jumbo v32, "No activity to launch Knox Custom switching."

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    :cond_3d
    const/16 v31, 0x1

    return v31

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x3f7 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_1
        0x18 -> :sswitch_8
        0x19 -> :sswitch_7
        0x1a -> :sswitch_2
        0x3f7 -> :sswitch_6
        0x426 -> :sswitch_4
        0x427 -> :sswitch_3
        0x436 -> :sswitch_5
        0x43a -> :sswitch_9
    .end sparse-switch
.end method

.method public interceptPowerKeyDown()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isFlipTypeCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    invoke-interface {v1}, Lcom/samsung/android/cover/ICoverManager;->sendPowerKeyToCover()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "CoverManager threw RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isAccessiblityEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isActivitiesAvailable(Landroid/content/Intent;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const/high16 v2, 0x50000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    return v3
.end method

.method public isAnyKeyMode()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "anykey_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAvailableOneTouchReport()Z
    .locals 3

    const-string/jumbo v0, "SamsungPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAvailableOneTouchReport = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAvailableOneTouchReport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAvailableOneTouchReport:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->semGetDisplayId()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :sswitch_0
    return v1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method public isBlockedPowerKeyByKeyTest()Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v1}, Lcom/android/server/policy/SystemKeyManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {}, Landroid/os/FactoryTest;->needBlockingPowerKey()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.sec.factory.app.ui.UIHardKey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.sec.OneJigBinary.testitem.KeyTest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.sec.android.app.simplefunctiontest.KeypadTest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.sec.factory.app.spcselftest.SpcSelfTestMain"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.sec.android.app.latin.tdfnotifier"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget-boolean v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Skip power key behavior by FactoryTest application"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public isCarModeBarVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCarModeEnabled()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "car_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isCarModeNotSupportBixby()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "car_mode_not_support_bixby"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isCarrierLocked()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isRMMLockEnabled(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isCombinationKeyTriggered()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/CombinationKeyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/CombinationKeyManager;->isCombinationKeyTriggered()Z

    move-result v0

    return v0
.end method

.method public isComponentAvailable(Landroid/content/ComponentName;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    return v3

    :catch_0
    move-exception v0

    return v3
.end method

.method public isCurrentUserSetupComplete()Z
    .locals 1

    sget v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCurrentUser:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDesktopDockConnected()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDesktopModeForPreparing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDesktopModeLoadingScreenShowing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDesktopModeTi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsDesktopMode:Z

    return v0
.end method

.method public isDeviceProvisioned()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isDirectAccessEnabled(Z)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    invoke-static {v1}, Lcom/android/server/policy/SamsungPolicyProperties;->isVzwSetupWizardRunning(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "SamsungPhoneWindowManager"

    const-string/jumbo v1, "block to trigger accessiblity when Verizon Setup Wizard Running"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-eqz p1, :cond_2

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEasyOneHandEnabled:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEasyOneHandTriggerType:I

    if-ne v1, v0, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDirectAccessBehavior:I

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_3
    return v0
.end method

.method public isDockHomeEnabled(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x1

    sget-boolean v1, Landroid/view/WindowManagerPolicy;->IS_TABLET_DEVICE:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsJapanModel:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "SC-04F"

    sget-object v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mModelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SCL23"

    sget-object v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mModelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    const-string/jumbo v2, "android.intent.category.DESK_DOCK"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    :cond_1
    return v0
.end method

.method public isDoubleTapLaunchEnabled(Landroid/view/KeyEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isVzwSetupRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "Home Double Tap block when Verizon Setup Wizard Running"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    iput-boolean v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapEnabled:Z

    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_2

    sget-boolean v2, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_IMMERSIVE_FORCE_TOUCH:Z

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-eqz v2, :cond_5

    iput-boolean v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapEnabled:Z

    :cond_2
    :goto_0
    const-string/jumbo v2, "service.camera.running"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchBehavior:I

    if-eq v2, v4, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapEnabled:Z

    :cond_4
    return v1

    :cond_5
    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapEnabled:Z

    goto :goto_0

    :cond_6
    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapEnabled:Z

    goto :goto_0
.end method

.method public isDoubleTapOnPowerEnabled()Z
    .locals 3

    const-string/jumbo v1, "service.camera.running"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerDoubleBehavior:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDozeDream()Z
    .locals 6

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_0
    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    sget-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "interceptKeyTi dozeMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 v3, 0x1

    return v3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    const-string/jumbo v4, "RemoteException when checking if dreaming"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method public isDualLcdFolderType(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p1}, Lcom/android/server/policy/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEasyModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    return v0
.end method

.method public isEasyOneHandEnabled()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEasyOneHandEnabled:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEasyOneHandRunning()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEasyOneHandRunning:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnableAccessControl(I)Z
    .locals 8

    const/4 v7, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "access_control_power_button"

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "access_control_volume_button"

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "access_control_keyboard_block"

    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/policy/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x7

    if-lt p1, v5, :cond_1

    const/16 v5, 0x12

    if-gt p1, v5, :cond_1

    iget-boolean v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    sparse-switch p1, :sswitch_data_0

    iget-boolean v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    return v3

    :sswitch_0
    iget-boolean v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    return v3

    :sswitch_1
    iget-boolean v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    move v4, v3

    :cond_2
    return v4

    :sswitch_2
    iget-boolean v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    if-eqz v5, :cond_3

    if-eqz v2, :cond_3

    move v4, v3

    :cond_3
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1a -> :sswitch_1
    .end sparse-switch
.end method

.method public isFlipTypeCoverClosed()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportFlipCover:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportSViewCover:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportFlipCover:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportSViewCover:Z

    if-eqz v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    :cond_5
    return v2
.end method

.method public isForceHideBySViewCover()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportAndAttachedSViewCover()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isForceStatusBarFromSViewCover()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceStatusBarFromSViewCover:Z

    return v0
.end method

.method public isGearVrDocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsGearVrDocked:Z

    return v0
.end method

.method public isGearVrSupport()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isKeyguardLocked()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->keyguardOn()Z

    move-result v0

    return v0
.end method

.method public isKeyguardScrimWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isKeyguardShowingAndNotOccluded()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    return v0
.end method

.method public isKnoxDesktopMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLockTaskModeEnabled()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockTaskModeState:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isMenuConsumed()Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMenuConsumed:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMenuConsumed:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public isMetaKeyEventRequested()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SystemKeyManager;->isMetaKeyEventRequested()Z

    move-result v0

    return v0
.end method

.method public isMetaKeyEventRequested(Landroid/content/ComponentName;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/SystemKeyManager;->isMetaKeyEventRequested(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isMirrorLinkEnabled()Z
    .locals 2

    const-string/jumbo v0, "1"

    const-string/jumbo v1, "net.mirrorlink.on"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMobileKeyboardEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMobileKeyboardEnabled:Z

    return v0
.end method

.method public isNaviBarGestureLockedByGameTools()Z
    .locals 7

    iget-boolean v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNaviBarLockedOnGameMode:Z

    if-nez v4, :cond_0

    const/4 v4, 0x0

    return v4

    :cond_0
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-nez v4, :cond_1

    :try_start_0
    const-string/jumbo v4, "gamemanager"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-eqz v4, :cond_2

    :try_start_1
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    invoke-interface {v4}, Lcom/samsung/android/game/IGameManagerService;->identifyForegroundApp()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    const/4 v3, 0x1

    :cond_2
    :goto_1
    return v3

    :catch_0
    move-exception v2

    const-string/jumbo v4, "SamsungPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed to int GameModeService"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v4, "SamsungPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed while identifyForegroundApp()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isNavigationBarDisabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMobileKeyboardEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isMirrorLinkEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNavigationBarVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNavigationColorWin(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    :cond_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    if-lt v1, v2, :cond_2

    return v3

    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    if-ne v1, v2, :cond_3

    invoke-static {p1, v4}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    const/4 v1, 0x1

    return v1

    :cond_3
    return v3
.end method

.method public isNeedLayoutCoverApplication(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportAndAttachedSViewCover()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/view/IWindowStateBridge;->getCoverMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/view/IWindowStateBridge;->willBeHideSViewCoverOnce()Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_0
    if-eq v0, v2, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    :cond_1
    return v2

    :cond_2
    if-nez v0, :cond_3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_0

    :cond_3
    return v3

    :sswitch_0
    return v2

    :sswitch_data_0
    .sparse-switch
        0x7d5 -> :sswitch_0
        0x7e4 -> :sswitch_0
        0x7e5 -> :sswitch_0
        0x833 -> :sswitch_0
    .end sparse-switch
.end method

.method public isOneTouchReportEnabled()Z
    .locals 17

    const-string/jumbo v15, "go.police.report"

    const-string/jumbo v14, "com.android.vending"

    const/4 v13, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/policy/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    :try_start_0
    const-string/jumbo v2, "go.police.report"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v2, "com.android.vending"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v11

    const/4 v2, 0x0

    return v2

    :cond_1
    const-string/jumbo v9, "content://go.police.provider.report"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v2, "content://go.police.provider.report"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "customer_agreement"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const/4 v2, -0x1

    if-eq v8, v2, :cond_2

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    const/4 v2, 0x1

    if-ne v2, v10, :cond_4

    const/4 v12, 0x1

    :cond_2
    :goto_0
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    return v12

    :cond_4
    const/4 v12, 0x0

    goto :goto_0

    :catch_1
    move-exception v11

    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
.end method

.method public isPackageAvailable(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    return v3

    :catch_0
    move-exception v0

    return v3
.end method

.method public isPowerSave()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerSave:Z

    return v0
.end method

.method public isPreferredActivity(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v3

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v0, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public isRecentAppStart()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/SystemManager;->getRecentLongPressMode()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->startCustomApp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public isRecentConsumed()Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRecentConsumed:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRecentConsumed:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public isRecentsTaskShowing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRingingOrOffhook()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    return v0
.end method

.method public isSafetyAssuranceEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    return v0
.end method

.method public isScreenOffOnLongPressHome()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/SystemManager;->getScreenOffOnHomeLongPressState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isShowingSViewCover()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mShowingSViewCover:Z

    return v0
.end method

.method public isSideSyncPresentationRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    return v0
.end method

.method public isSimLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSimLocked()Z

    move-result v0

    return v0
.end method

.method public isStatusBarKeyguard()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isStatusBarKeyguard(I)Z

    move-result v0

    return v0
.end method

.method isStatusBarKeyguard(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isStatusBarSViewCover()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStatusBarVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStatusColorWin(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    invoke-static {p1, v3}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v2
.end method

.method public isSupportActiveDouble()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "double_press_app"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSupportBCM()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isBatteryConversingModeSupported()Z

    move-result v0

    return v0
.end method

.method public isSupportPowerTriplePress()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTphoneRelaxMode()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isSktTphoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "skt_phone20_relax_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    return v3

    :cond_0
    return v2
.end method

.method public isTripleTapOnHomeEnabled()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDirectAccessEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public isUseAccessControl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    return v0
.end method

.method isVoIPRinging()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPRinging()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string/jumbo v3, "SamsungPhoneWindowManager"

    const-string/jumbo v4, "Unable to find IVoIPInterface interface"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    const-string/jumbo v4, "RemoteException from getVoIPInterfaceService()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isVolumeKeyAppsEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getVolumeKeyAppState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVolumeKeyMode()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "volumekey_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isWakeupPreventionPackage(Ljava/lang/String;I)Z
    .locals 4

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Turning screen on : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsWakeupPrevention:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeupPreventionPackages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Turning screen block by WakeupPreventionPackage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public keyguardGoingAwayWithWakeAndUnlock()V
    .locals 4

    const-string/jumbo v0, "SamsungPhoneWindowManager"

    const-string/jumbo v1, "WakeAndUnlock triggered is true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeAndUnlockTriggered:Z

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->cancelWakeAndUnlockPendingAction()V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeAndUnlockRunning:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method keyguardOn()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_policy_SamsungPhoneWindowManager_429506()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeAndUnlockTriggered:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SamsungPhoneWindowManager"

    const-string/jumbo v1, "WakeAndUnlock triggered is false"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeAndUnlockTriggered:Z

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->cancelWakeAndUnlockPendingAction()V

    :cond_0
    return-void
.end method

.method public launchDoubleTapCommand(I)V
    .locals 18

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "launchDoubleTapCommand mDoubleTapLaunchBehavior = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchBehavior:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    move/from16 v0, p1

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchBehavior:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :cond_0
    const-string/jumbo v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDoubleTapLaunchBehavior is false : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/16 v1, 0x1a

    move/from16 v0, p1

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchBehavior:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->hasCustomDoubleTapLaunchCommand()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->launchVoiceCommand()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_11

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAvailableDoublTapLaunchCommand:Z

    if-eqz v1, :cond_10

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "launch double tap command"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure(I)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v16

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    :cond_6
    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_9

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Camera disabled by DPM policy"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    const/16 v16, 0x0

    goto :goto_1

    :cond_8
    const/16 v16, 0x0

    goto :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchCommandIntent:Landroid/content/Intent;

    const-string/jumbo v2, "isSecure"

    move/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchCommandIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapLaunchCommandIntent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchCommandIntent:Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapLaunchCommandIntent:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v2}, Lcom/android/server/policy/SystemKeyManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_e

    :cond_a
    sget-boolean v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_b

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Add cleartask flag by policy: isShowing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isScreenOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " isSecureLock = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchCommandIntent:Landroid/content/Intent;

    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchCommandIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_c

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->requestWaitingForOccluding()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_c
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v17

    if-eqz v16, :cond_d

    const/4 v1, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    :cond_d
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchCommandIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchCommandIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x10000000

    const/4 v10, 0x0

    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const-string/jumbo v2, "reason"

    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v15

    if-eqz v15, :cond_3

    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchCommandIntent:Landroid/content/Intent;

    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    :cond_f
    :try_start_2
    const-string/jumbo v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not starting activity because user setup is in progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchCommandIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_0
    move-exception v13

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "No activity to launch double tap command."

    invoke-static {v1, v2, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_1
    move-exception v14

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Unable to start camera activity"

    invoke-static {v1, v2, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_10
    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Device is not available double tap command"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Device is not provisioned"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_2
    move-exception v14

    goto/16 :goto_3
.end method

.method public launchFingerPrint()V
    .locals 4

    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isSupportFingerPrint()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "launch fingerprint"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "No activity to handle fingerprint."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Device is not supported, not launch fingerprint"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public launchHomeDuringVzwSetup()Z
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isVzwSetupRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "persist.sys.enablehomekey"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " Verizon Setup Wizard Running, launch home key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    return v2
.end method

.method public launchHomeForDesktopMode()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    return-void
.end method

.method public launchPremiumWatch(Z)V
    .locals 6

    :try_start_0
    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "Premium watch on"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.intent.action.START_WATCH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCleanWatchLaunchingFlagRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCleanWatchLaunchingFlagRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "Fail to launch premium watch"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public launchSFinderIfPossible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSFinderLaunchPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSFinderLaunchPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    invoke-static {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->-wrap0(Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchVoiceCommand()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "launch voicecommand"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const-string/jumbo v3, "homekey"

    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure(I)Z

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string/jumbo v3, "isSecure"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string/jumbo v3, "AUTO_LISTEN"

    xor-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "No activity to launch voicecommand."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "Device is not provisioned or not available voice command."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public launchingGamekey(Z)Z
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->endCallByGamekey()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    return v5

    :cond_0
    if-eqz p1, :cond_1

    return v8

    :cond_1
    const-string/jumbo v1, "com.sec.game.sga"

    const-string/jumbo v4, "com.sec.android.app.samsungapps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "samsungapps://ProductDetail/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    invoke-direct {p0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->startSGA(Ljava/lang/String;)V

    :goto_1
    return v8

    :catch_0
    move-exception v0

    sget-boolean v5, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "SamsungPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " not exist. so try to download the SGA apps."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :cond_4
    :goto_2
    if-eqz v2, :cond_6

    sget-boolean v5, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_5

    const-string/jumbo v5, "SamsungPhoneWindowManager"

    const-string/jumbo v6, "SGA is not installed. so you are moving to Samsung apps."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->downloadForSGA(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    sget-boolean v5, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_4

    const-string/jumbo v5, "SamsungPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " not exist. so try to download the SGA apps."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    sget-boolean v5, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_7

    const-string/jumbo v5, "SamsungPhoneWindowManager"

    const-string/jumbo v6, "Samsung apps is not installed. so you are moving to Samsung apps download page."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->downloadForSamsungApps()V

    goto :goto_1
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v5, 0x0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDefaultDisplay()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7db

    if-eq v4, v6, :cond_0

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x960

    if-ne v4, v6, :cond_4

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarModeBarVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    add-int/2addr v4, v6

    iput v4, p6, Landroid/graphics/Rect;->bottom:I

    iput v4, p5, Landroid/graphics/Rect;->bottom:I

    :cond_1
    :goto_0
    const/4 v2, 0x0

    if-nez v2, :cond_2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v4

    if-ne v4, v7, :cond_2

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v4, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    iget v4, p5, Landroid/graphics/Rect;->top:I

    if-ge v4, v3, :cond_2

    iput v3, p5, Landroid/graphics/Rect;->top:I

    :cond_2
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mInputMethod:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mInputMethod:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    :goto_1
    invoke-static {v4}, Lcom/android/server/policy/PolicyControl;->setInputMethodVisible(Z)V

    :cond_3
    return-void

    :cond_4
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x8df

    if-ne v4, v6, :cond_9

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarPosition:I

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarModeBarVisible()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    iget v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    sub-int/2addr v4, v6

    :goto_2
    iput v4, p5, Landroid/graphics/Rect;->left:I

    iput v4, p4, Landroid/graphics/Rect;->left:I

    iput v4, p3, Landroid/graphics/Rect;->left:I

    iput v4, p2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    iput v4, p5, Landroid/graphics/Rect;->top:I

    iput v4, p4, Landroid/graphics/Rect;->top:I

    iput v4, p3, Landroid/graphics/Rect;->top:I

    iput v4, p2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarPosition:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_6

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarModeBarVisible()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    add-int/2addr v4, v6

    iget v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    :goto_3
    add-int/2addr v4, v6

    iput v4, p5, Landroid/graphics/Rect;->right:I

    iput v4, p4, Landroid/graphics/Rect;->right:I

    iput v4, p3, Landroid/graphics/Rect;->right:I

    iput v4, p2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarPosition:I

    if-ne v4, v7, :cond_7

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarModeBarVisible()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    add-int/2addr v4, v6

    iget v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    :goto_4
    add-int/2addr v4, v6

    iput v4, p5, Landroid/graphics/Rect;->bottom:I

    iput v4, p4, Landroid/graphics/Rect;->bottom:I

    iput v4, p3, Landroid/graphics/Rect;->bottom:I

    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    :goto_5
    invoke-virtual {p7, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    goto :goto_3

    :cond_7
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    goto :goto_4

    :cond_8
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v4, p5, Landroid/graphics/Rect;->left:I

    iput v4, p4, Landroid/graphics/Rect;->left:I

    iput v4, p3, Landroid/graphics/Rect;->left:I

    iput v4, p2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v4, p5, Landroid/graphics/Rect;->top:I

    iput v4, p4, Landroid/graphics/Rect;->top:I

    iput v4, p3, Landroid/graphics/Rect;->top:I

    iput v4, p2, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v4, v6

    iput v4, p5, Landroid/graphics/Rect;->right:I

    iput v4, p4, Landroid/graphics/Rect;->right:I

    iput v4, p3, Landroid/graphics/Rect;->right:I

    iput v4, p2, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v4, v6

    iput v4, p5, Landroid/graphics/Rect;->bottom:I

    iput v4, p4, Landroid/graphics/Rect;->bottom:I

    iput v4, p3, Landroid/graphics/Rect;->bottom:I

    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_5

    :cond_9
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7de

    if-ne v4, v6, :cond_a

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarModeBarVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v4, p4, Landroid/graphics/Rect;->left:I

    iput v4, p3, Landroid/graphics/Rect;->left:I

    iput v4, p2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v4, p4, Landroid/graphics/Rect;->top:I

    iput v4, p3, Landroid/graphics/Rect;->top:I

    iput v4, p2, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v4, v6

    iput v4, p4, Landroid/graphics/Rect;->right:I

    iput v4, p3, Landroid/graphics/Rect;->right:I

    iput v4, p2, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v4, v6

    iput v4, p4, Landroid/graphics/Rect;->bottom:I

    iput v4, p3, Landroid/graphics/Rect;->bottom:I

    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    :cond_a
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x8fd

    if-ne v4, v6, :cond_1

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v4, p6, Landroid/graphics/Rect;->left:I

    iput v4, p5, Landroid/graphics/Rect;->left:I

    iput v4, p4, Landroid/graphics/Rect;->left:I

    iput v4, p3, Landroid/graphics/Rect;->left:I

    iput v4, p2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v4, p6, Landroid/graphics/Rect;->top:I

    iput v4, p5, Landroid/graphics/Rect;->top:I

    iput v4, p4, Landroid/graphics/Rect;->top:I

    iput v4, p3, Landroid/graphics/Rect;->top:I

    iput v4, p2, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    add-int/2addr v4, v6

    iput v4, p6, Landroid/graphics/Rect;->right:I

    iput v4, p5, Landroid/graphics/Rect;->right:I

    iput v4, p4, Landroid/graphics/Rect;->right:I

    iput v4, p3, Landroid/graphics/Rect;->right:I

    iput v4, p2, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    add-int/2addr v4, v6

    iput v4, p6, Landroid/graphics/Rect;->bottom:I

    iput v4, p5, Landroid/graphics/Rect;->bottom:I

    iput v4, p4, Landroid/graphics/Rect;->bottom:I

    iput v4, p3, Landroid/graphics/Rect;->bottom:I

    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    :cond_b
    move v4, v5

    goto/16 :goto_1
.end method

.method public needFullScreenDimBounds()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v4, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v4, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->forceFullScreenDimBounds(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v2

    :cond_1
    invoke-static {v1, v6}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    :cond_2
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_4

    :cond_3
    and-int/lit16 v4, v0, 0x1802

    if-eqz v4, :cond_5

    :cond_4
    :goto_0
    return v2

    :cond_5
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_4

    move v2, v3

    goto :goto_0
.end method

.method public needLayoutForNavigationBar(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-static {p1, v1}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    invoke-static {p2, v1}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v2
.end method

.method public needSensorRunningLp()I
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/policy/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-nez v1, :cond_2

    :goto_0
    const/4 v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->isProximityPositive()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Blocked OrientationListener.enable by ScreenOffByProximity, Callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    :cond_1
    monitor-exit v2

    return v0

    :cond_2
    :try_start_1
    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSecondLcdUserRotationMode:I

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, v4, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public needUpdateSystemBarsForCoverLw()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isStatusBarSViewCover()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyBeforeQuickAccess(IFF)Z
    .locals 10

    const/4 v9, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v6, 0x2

    new-array v1, v6, [F

    aput p2, v1, v4

    aput p3, v1, v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    sget-boolean v6, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "SamsungPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notifyBeforeQuickAccess info = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " x = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " y = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-boolean v4, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "SamsungPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyBeforeQuickAccess, ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", sendbroadcast intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", premission="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return v3

    :pswitch_0
    const-string/jumbo v4, "com.samsung.android.spay.quickpay"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v4, "com.samsung.android.spay.permission.SIMPLE_PAY"

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    sget-boolean v4, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_IMMERSIVE_FORCE_TOUCH:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNaviBarForceTouchManager:Lcom/android/server/policy/NaviBarForceTouchManager;

    float-to-int v5, p2

    float-to-int v6, p3

    invoke-virtual {v4, v5, v6}, Lcom/android/server/policy/NaviBarForceTouchManager;->onForcePressed(II)Z

    move-result v3

    :cond_2
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v4, v9}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v4

    or-int/2addr v4, v3

    return v4

    :pswitch_2
    sget-boolean v4, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_IMMERSIVE_FORCE_TOUCH:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNaviBarForceTouchManager:Lcom/android/server/policy/NaviBarForceTouchManager;

    float-to-int v5, p2

    float-to-int v6, p3

    invoke-virtual {v4, v5, v6}, Lcom/android/server/policy/NaviBarForceTouchManager;->onForceReleased(II)Z

    move-result v3

    :cond_3
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v4, v9}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v4

    or-int/2addr v4, v3

    return v4

    :pswitch_3
    sget-boolean v4, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_IMMERSIVE_FORCE_TOUCH:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNaviBarForceTouchManager:Lcom/android/server/policy/NaviBarForceTouchManager;

    invoke-virtual {v4}, Lcom/android/server/policy/NaviBarForceTouchManager;->onForcePressedSleep()V

    :cond_4
    return v3

    :pswitch_4
    sget-boolean v6, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_IMMERSIVE_FORCE_TOUCH:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNaviBarForceTouchManager:Lcom/android/server/policy/NaviBarForceTouchManager;

    const/16 v7, 0xd

    if-ne p1, v7, :cond_5

    move v4, v5

    :cond_5
    invoke-virtual {v6, v4}, Lcom/android/server/policy/NaviBarForceTouchManager;->onForceReleasedSleep(Z)V

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "aod_home_force_pressed"

    const/4 v7, -0x2

    invoke-static {v4, v6, v5, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_6
    return v3

    :pswitch_5
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_8

    sget-boolean v4, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_7

    const-string/jumbo v4, "SamsungPhoneWindowManager"

    const-string/jumbo v5, "main screen wake up"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRotationForQuickAccess:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRotationForQuickAccess:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_8
    sget-boolean v4, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_7

    const-string/jumbo v4, "SamsungPhoneWindowManager"

    const-string/jumbo v5, "sub screen wake up"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_6
    const-string/jumbo v4, "com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "info"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "location"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v4, "com.samsung.android.app.aodservice.permission.BROADCAST_RECEIVER"

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public notifyCoverSwitchStateChanged(JZ)V
    .locals 0

    return-void
.end method

.method public notifyLidSwitchChanged(JZ)Z
    .locals 15

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->performCPUBoost()V

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/server/policy/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    if-eqz p3, :cond_0

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->bIsTorchOn:Z

    if-eqz v10, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->handleTorchKey()V

    :cond_0
    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/server/policy/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->changeLidState(Z)V

    :cond_1
    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFlipFolderOpenedIntent:Landroid/content/Intent;

    const-string/jumbo v11, "flipOpen"

    move/from16 v0, p3

    invoke-virtual {v10, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-boolean v10, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v10, :cond_2

    const-string/jumbo v10, "SamsungPhoneWindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Flip Folder open = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " , broadcasted."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFlipFolderOpenedIntent:Landroid/content/Intent;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-boolean v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderSoundEnable:Z

    if-eqz v10, :cond_4

    if-eqz p3, :cond_f

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderOpenSound:Ljava/lang/String;

    :goto_0
    sget-boolean v10, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v10, :cond_3

    const-string/jumbo v10, "SamsungPhoneWindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Folder open/close soundPath = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v6, :cond_4

    invoke-direct {p0, v6}, Lcom/android/server/policy/SamsungPhoneWindowManager;->playSound(Ljava/lang/String;)V

    :cond_4
    if-nez p3, :cond_5

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v10, v10, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    if-nez v10, :cond_a

    xor-int/lit8 v10, p3, 0x1

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "premium_watch_switch_onoff"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "sub_lcd_auto_lock"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_10

    const/4 v7, 0x1

    :goto_1
    const/4 v4, 0x0

    const-string/jumbo v10, "service.camera.running"

    const-string/jumbo v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "phone"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    iput-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_6
    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isOffhook()Z

    move-result v3

    :cond_7
    if-eqz v7, :cond_11

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v5

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_8

    xor-int/lit8 v10, v2, 0x1

    if-eqz v10, :cond_8

    xor-int/lit8 v10, v3, 0x1

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v10}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v10

    if-eqz v10, :cond_8

    xor-int/lit8 v10, v5, 0x1

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/policy/SamsungPhoneWindowManager;->launchPremiumWatch(Z)V

    const/4 v4, 0x1

    :cond_8
    const-string/jumbo v10, "SamsungPhoneWindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isCameraRunning: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", isOffhook: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v10}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v10

    if-nez v10, :cond_a

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v11, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v11, v11, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v10, v11}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure(I)Z

    move-result v10

    if-nez v10, :cond_9

    if-nez v4, :cond_a

    xor-int/lit8 v10, v3, 0x1

    if-eqz v10, :cond_a

    xor-int/lit8 v10, v2, 0x1

    if-eqz v10, :cond_a

    :cond_9
    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/policy/PhoneWindowManager;->lockNow(Landroid/os/Bundle;)V

    :cond_a
    :goto_2
    const/4 v8, 0x0

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/server/policy/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_b

    if-eqz p3, :cond_12

    const/4 v8, 0x0

    :cond_b
    :goto_3
    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/policy/SamsungPhoneWindowManager$32;

    invoke-direct {v11, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$32;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    int-to-long v12, v8

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/server/policy/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_c

    xor-int/lit8 v10, p3, 0x1

    if-eqz v10, :cond_c

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_c

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_c

    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isDomesticOtaStart()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/server/policy/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_c

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isPreloadInstallComplete()Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v10}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    :cond_c
    if-nez p3, :cond_d

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v10, v10, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_e

    :cond_d
    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iget-object v11, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v11, v11, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    const/4 v14, 0x5

    invoke-virtual {v10, v12, v13, v11, v14}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZI)Z

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const/4 v11, 0x0

    invoke-virtual {v10, v12, v13, v11}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_e
    const/4 v10, 0x1

    return v10

    :cond_f
    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderCloseSound:Ljava/lang/String;

    goto/16 :goto_0

    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_11
    const-string/jumbo v10, "SamsungPhoneWindowManager"

    const-string/jumbo v11, "Auto lock is not enabled."

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_12
    const/16 v8, 0x1f4

    goto :goto_3
.end method

.method public notifyPenSwitchChanged(JZ)V
    .locals 19

    if-eqz p3, :cond_1

    const/4 v5, 0x1

    :goto_0
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v12}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v8

    sget-boolean v12, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v12, :cond_0

    const-string/jumbo v12, "SamsungPhoneWindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "newPenState : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", mPenState : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenState:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenState:I

    if-ne v5, v12, :cond_2

    return-void

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenState:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_3

    const/4 v6, 0x0

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "spen_feedback_sound"

    const/4 v14, 0x0

    const/4 v15, -0x2

    invoke-static {v12, v13, v14, v15}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    if-nez v12, :cond_4

    const/4 v6, 0x0

    :cond_4
    sget-boolean v12, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v12, :cond_5

    const-string/jumbo v12, "SamsungPhoneWindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "playSound : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", screenOn : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenState:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "pen_detachment_notification"

    const/4 v14, -0x2

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d

    const-string/jumbo v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenSounds:Landroid/media/SoundPool;

    if-nez v12, :cond_6

    if-eqz v9, :cond_6

    array-length v12, v10

    const/4 v13, 0x1

    if-le v12, v13, :cond_6

    :try_start_0
    new-instance v12, Landroid/media/SoundPool;

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-direct {v12, v13, v14, v15}, Landroid/media/SoundPool;-><init>(III)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenSounds:Landroid/media/SoundPool;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenSounds:Landroid/media/SoundPool;

    const/4 v13, 0x0

    aget-object v13, v10, v13

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertSoundId:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenSounds:Landroid/media/SoundPool;

    const/4 v13, 0x1

    aget-object v13, v10, v13

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenDetachSoundId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_2
    const/4 v4, 0x0

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "action_memo_on_off_screen"

    const/4 v14, 0x0

    const/4 v15, -0x2

    invoke-static {v12, v13, v14, v15}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    if-eqz v12, :cond_e

    const/4 v4, 0x1

    new-instance v12, Landroid/content/ComponentName;

    const-string/jumbo v13, "com.samsung.android.snote"

    const-string/jumbo v14, "com.samsung.android.snote.control.ui.quickmemo.service.InstantMemo_Service"

    invoke-direct {v12, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_7
    :goto_3
    if-eqz p3, :cond_f

    if-eqz v6, :cond_8

    if-eqz v9, :cond_8

    :try_start_1
    array-length v12, v10

    const/4 v13, 0x1

    if-le v12, v13, :cond_8

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertSoundId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/policy/SamsungPhoneWindowManager;->playPenSound(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v13, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v14, 0xc36d

    const/4 v15, -0x1

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0, v13}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const/high16 v13, 0x1000000

    invoke-virtual {v12, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string/jumbo v13, "penInsert"

    move/from16 v0, p3

    invoke-virtual {v12, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string/jumbo v13, "isScreenOn"

    invoke-virtual {v12, v13, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string/jumbo v13, "isKeyguardLocked"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v14}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string/jumbo v14, "isBoot"

    const-wide/16 v16, 0x0

    cmp-long v12, p1, v16

    if-nez v12, :cond_14

    const/4 v12, 0x1

    :goto_6
    invoke-virtual {v13, v14, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-boolean v12, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v12, :cond_a

    const-string/jumbo v12, "SamsungPhoneWindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "pen = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " , broadcasted."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    if-eqz v4, :cond_c

    const-wide/16 v12, 0x0

    cmp-long v12, p1, v12

    if-eqz v12, :cond_c

    xor-int/lit8 v12, p3, 0x1

    if-eqz v12, :cond_c

    const-string/jumbo v12, "pen_intent_com"

    const-string/jumbo v13, "pen_detach"

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_b

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v12

    invoke-direct {v2, v12}, Landroid/os/UserHandle;-><init>(I)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v7, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "spengestureservice"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->setSpenInsertionState(Z)V

    return-void

    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v3

    const-string/jumbo v12, "SamsungPhoneWindowManager"

    const-string/jumbo v13, "cannot load pen sound"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenSounds:Landroid/media/SoundPool;

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "screen_off_memo"

    const/4 v14, 0x0

    const/4 v15, -0x2

    invoke-static {v12, v13, v14, v15}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    if-eqz v12, :cond_7

    const/4 v4, 0x1

    new-instance v12, Landroid/content/ComponentName;

    const-string/jumbo v13, "com.samsung.android.app.notes"

    const-string/jumbo v14, "com.samsung.android.app.notes.screenoffmemo.ScreenOffMemoService"

    invoke-direct {v12, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v12}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v12

    if-eqz v12, :cond_12

    if-nez v4, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const/4 v13, 0x4

    invoke-virtual {v12, v14, v15, v13}, Landroid/os/PowerManager;->wakeUp(JI)V

    :cond_10
    :goto_7
    if-eqz v6, :cond_11

    if-eqz v9, :cond_11

    :try_start_2
    array-length v12, v10

    const/4 v13, 0x1

    if-le v12, v13, :cond_11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenDetachSoundId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/policy/SamsungPhoneWindowManager;->playPenSound(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_11
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v13, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v14, 0xc369

    const/4 v15, -0x1

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0, v13}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    goto/16 :goto_5

    :cond_12
    if-eqz v8, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const/4 v13, 0x0

    invoke-virtual {v12, v14, v15, v13}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_7

    :cond_13
    if-nez v4, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const/4 v13, 0x4

    invoke-virtual {v12, v14, v15, v13}, Landroid/os/PowerManager;->wakeUp(JI)V

    goto :goto_7

    :cond_14
    const/4 v12, 0x0

    goto/16 :goto_6

    :catch_1
    move-exception v3

    goto :goto_8

    :catch_2
    move-exception v3

    goto/16 :goto_4
.end method

.method public onConfigurationChanged()V
    .locals 0

    return-void
.end method

.method public onLockTaskModeChanged(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockTaskModeState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLockTaskModeState:I

    :cond_0
    return-void
.end method

.method public performCPUBoost()V
    .locals 6

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "DEVICE_WAKEUP"

    const/16 v4, 0x15

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;II)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

    :cond_0
    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "mWakeUpBooster.acquire()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "HINT_DEVICE_WAKEUP.acquire is failed"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 12

    const/4 v7, -0x2

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v5}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    if-nez v5, :cond_0

    return v11

    :cond_0
    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "haptic_feedback_enabled"

    invoke-static {v5, v6, v11, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-nez v5, :cond_4

    const/4 v2, 0x1

    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string/jumbo v6, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string/jumbo v6, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string/jumbo v6, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_1
    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "emergency_mode"

    invoke-static {v5, v6, v11, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v8, :cond_5

    const/4 v1, 0x1

    :goto_1
    if-eqz p1, :cond_7

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v4

    :goto_2
    const-string/jumbo v5, "SamsungPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "f.b. a = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " hd = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " eme = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ksno = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " isDM = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isKnoxDesktopMode()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_2

    if-nez v2, :cond_8

    if-nez v1, :cond_8

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v5

    if-nez v5, :cond_8

    :cond_2
    sget-boolean v5, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_3

    if-eqz p1, :cond_3

    const-string/jumbo v5, "SamsungPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "haptic feedback for : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v5}, Landroid/os/Vibrator;->semIsHapticSupported()Z

    move-result v5

    if-eqz v5, :cond_a

    sparse-switch p2, :sswitch_data_0

    invoke-static {p2}, Landroid/view/HapticFeedbackConstants;->isValidatedVibeIndex(I)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v6, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v5, p2, v10, v9, v6}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    return v8

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_7
    const/4 v4, -0x1

    goto/16 :goto_2

    :cond_8
    const-string/jumbo v5, "SamsungPhoneWindowManager"

    const-string/jumbo v6, "haptic disabled by policy"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :sswitch_0
    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v6, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v7, 0xc369

    invoke-virtual {v5, v7, v10, v9, v6}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    return v8

    :sswitch_1
    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v6, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v7, 0xc36a

    invoke-virtual {v5, v7, v10, v9, v6}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    return v8

    :sswitch_2
    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v6, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v7, 0xc36b

    invoke-virtual {v5, v7, v10, v9, v6}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    return v8

    :sswitch_3
    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v6, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v7, 0xc376

    invoke-virtual {v5, v7, v10, v9, v6}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    return v8

    :sswitch_4
    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v6, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v7, 0xc377

    invoke-virtual {v5, v7, v10, v9, v6}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    return v8

    :sswitch_5
    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v6, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v7, 0xc378

    invoke-virtual {v5, v7, v10, v9, v6}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    return v8

    :cond_9
    return v11

    :cond_a
    const/4 v0, 0x0

    sparse-switch p2, :sswitch_data_1

    return v11

    :sswitch_6
    const/16 v0, 0x32

    :goto_3
    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    return v8

    :sswitch_7
    const/16 v0, 0x32

    goto :goto_3

    :sswitch_8
    const/16 v0, 0x64

    goto :goto_3

    :sswitch_9
    const/16 v0, 0x1f4

    goto :goto_3

    :sswitch_a
    const/16 v0, 0x5dc

    goto :goto_3

    :sswitch_b
    const/16 v0, 0xfa

    goto :goto_3

    :sswitch_c
    const/4 v5, 0x4

    new-array v3, v5, [J

    fill-array-data v3, :array_0

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v5, v3, v10}, Landroid/os/Vibrator;->vibrate([JI)V

    return v8

    :sswitch_d
    const/16 v0, 0x32

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_1
        0xc36a -> :sswitch_1
        0xc36b -> :sswitch_2
        0xc376 -> :sswitch_3
        0xc377 -> :sswitch_4
        0xc378 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_6
        0x3 -> :sswitch_6
        0xc369 -> :sswitch_7
        0xc36a -> :sswitch_d
        0xc36b -> :sswitch_8
        0xc370 -> :sswitch_9
        0xc371 -> :sswitch_b
        0xc372 -> :sswitch_c
        0xc373 -> :sswitch_a
    .end sparse-switch

    :array_0
    .array-data 8
        0x0
        0xfa
        0xfa
        0xfa
    .end array-data
.end method

.method public performHome()V
    .locals 2

    const-string/jumbo v0, "SamsungPhoneWindowManager"

    const-string/jumbo v1, "performHome"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->performHomeBoost()V

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->performHomeBroadcast()V

    return-void
.end method

.method performHomeBoost()V
    .locals 4

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSupportedCPUFreqTable:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHomeBooster:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "mHomeBooster is failed"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method performHomeBroadcast()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/SamsungPhoneWindowManager$33;

    invoke-direct {v1, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$33;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public performSystemKeyFeedback(Landroid/view/KeyEvent;)V
    .locals 5

    const v4, 0xc36a

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "SPC_Remote_Controller"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_2
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "gpio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isGearVrDocked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->semIsHapticSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->playSoundEffect()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/SamsungPolicyProperties;->hasQwertyKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->semIsHapticSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    :cond_4
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->playSoundEffect()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->semIsHapticSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    :cond_5
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->playSoundEffect()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->playSoundEffect()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x1b -> :sswitch_3
        0x52 -> :sswitch_0
        0x54 -> :sswitch_1
        0xbb -> :sswitch_0
        0xcf -> :sswitch_3
        0x3e9 -> :sswitch_0
        0x430 -> :sswitch_3
        0x431 -> :sswitch_3
    .end sparse-switch
.end method

.method public powerMultiPressAction(I)Z
    .locals 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Launch camera power double"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDoubleTapOnPowerEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mMultitapKeyManager:Lcom/android/server/policy/IMultitapKeyManagerBridge;

    const/16 v2, 0x1a

    invoke-interface {v1, v2}, Lcom/android/server/policy/IMultitapKeyManagerBridge;->handleDoubleTapLaunch(I)V

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Screen Curtain mode toggle."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDoubleTapOnPowerEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->callAccessibilityScreenCurtain()V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->callOneTouchReport()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->triggerPanicCall()V

    :pswitch_4
    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "SOS Message mode toggle."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSafetyAssuranceEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->sendBroadcastForSafetyAssurance()V

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public powerPress(Landroid/view/KeyEvent;Z)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/CombinationKeyManager;

    invoke-virtual {v5, p1}, Lcom/android/server/policy/CombinationKeyManager;->isConsumedKeyCombination(Landroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v3

    const/4 v1, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "SamsungPhoneWindowManager"

    const-string/jumbo v6, "silenceRinger"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->silenceRinger()V

    const-string/jumbo v5, "VCPS"

    invoke-virtual {p0, v5, v7}, Lcom/android/server/policy/SamsungPhoneWindowManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Landroid/os/IVoIPInterface;->isVoIPIdle()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    if-eqz p2, :cond_1

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isFlipTypeCoverClosed()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const-string/jumbo v5, "SamsungPhoneWindowManager"

    const-string/jumbo v6, "hangupVoIPCall"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Landroid/os/IVoIPInterface;->hangupVoIPCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    :goto_1
    sget-boolean v5, Lcom/samsung/android/config/SamsungCoreConfig;->FEATURE_SIDE_TOUCH_FINGERPRINT:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeAndUnlockTriggered:Z

    if-eqz v5, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2

    :cond_5
    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p2, :cond_6

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isFlipTypeCoverClosed()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_7
    const-string/jumbo v5, "SamsungPhoneWindowManager"

    const-string/jumbo v6, "hangupCall"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v1

    const-string/jumbo v5, "VCPE"

    invoke-virtual {p0, v5, v7}, Lcom/android/server/policy/SamsungPhoneWindowManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "SamsungPhoneWindowManager"

    const-string/jumbo v6, "RemoteException from getVoIPInterfaceService()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 4

    const/4 v3, 0x0

    const/4 v1, -0x1

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceUserActivityTimeoutWin:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceUserActivityTimeoutWin:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mReduceScreenManager:Lcom/android/server/policy/ReduceScreenManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/ReduceScreenManager;->prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    return v3

    :sswitch_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x7

    return v0

    :cond_2
    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :sswitch_1
    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mInputMethod:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGameToolWindow:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :sswitch_3
    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGameToolOverlayWindow:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyWindow:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7db -> :sswitch_1
        0x8de -> :sswitch_0
        0x96e -> :sswitch_4
        0x97e -> :sswitch_2
        0x97f -> :sswitch_3
    .end sparse-switch
.end method

.method public prepareDesktopTaskBar(Z)V
    .locals 10

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v6

    return-void

    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1120096

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, v7, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v4, v1, :cond_2

    move v2, v4

    :goto_1
    mul-int/lit16 v7, v2, 0xa0

    iget v8, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int v3, v7, v8

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    if-eq v4, v1, :cond_1

    const/16 v8, 0x258

    if-ge v3, v8, :cond_1

    sget-boolean v5, Landroid/view/WindowManagerPolicy;->IS_TABLET_DEVICE:Z

    xor-int/lit8 v5, v5, 0x1

    :cond_1
    iput-boolean v5, v7, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method public prepareSViewCoverLayout(IIIIIIIIIIIIIIIIIIIIIIIII)V
    .locals 6

    iput p4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalSystemLeft:I

    iput p4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverSystemLeft:I

    iput p5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalSystemTop:I

    iput p5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverSystemTop:I

    iput p6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalSystemRight:I

    iput p6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverSystemRight:I

    iput p7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalSystemBottom:I

    iput p7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverSystemBottom:I

    iput p8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalUnrestrictedScreenLeft:I

    iput p8, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverUnrestrictedScreenLeft:I

    iput p9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalUnrestrictedScreenTop:I

    iput p9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverUnrestrictedScreenTop:I

    move/from16 v0, p10

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalUnrestrictedScreenWidth:I

    move/from16 v0, p10

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverUnrestrictedScreenWidth:I

    move/from16 v0, p11

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalUnrestrictedScreenHeight:I

    move/from16 v0, p11

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverUnrestrictedScreenHeight:I

    move/from16 v0, p12

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableFullscreenLeft:I

    move/from16 v0, p12

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableFullscreenLeft:I

    move/from16 v0, p13

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableFullscreenTop:I

    move/from16 v0, p13

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableFullscreenTop:I

    move/from16 v0, p14

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableFullscreenRight:I

    move/from16 v0, p14

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableFullscreenRight:I

    move/from16 v0, p15

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableFullscreenBottom:I

    move/from16 v0, p15

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableFullscreenBottom:I

    move/from16 v0, p16

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableLeft:I

    move/from16 v0, p16

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableLeft:I

    move/from16 v0, p17

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableTop:I

    move/from16 v0, p17

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableTop:I

    move/from16 v0, p18

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableRight:I

    move/from16 v0, p18

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableRight:I

    move/from16 v0, p19

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableBottom:I

    move/from16 v0, p19

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableBottom:I

    move/from16 v0, p20

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverDockLeft:I

    move/from16 v0, p20

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalDockLeft:I

    move/from16 v0, p21

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverDockTop:I

    move/from16 v0, p21

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalDockTop:I

    move/from16 v0, p22

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverDockRight:I

    move/from16 v0, p22

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalDockRight:I

    move/from16 v0, p23

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverDockBottom:I

    move/from16 v0, p23

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalDockBottom:I

    if-eqz p24, :cond_0

    if-eqz p25, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    sub-int v1, p3, p24

    :goto_0
    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalSystemLeft:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverSystemLeft:I

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalSystemTop:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverSystemTop:I

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalSystemRight:I

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverSystemRight:I

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalSystemBottom:I

    sub-int/2addr v5, v1

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverSystemBottom:I

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalUnrestrictedScreenLeft:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverUnrestrictedScreenLeft:I

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalUnrestrictedScreenTop:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverUnrestrictedScreenTop:I

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalUnrestrictedScreenWidth:I

    sub-int/2addr v5, v2

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverUnrestrictedScreenWidth:I

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalUnrestrictedScreenHeight:I

    sub-int/2addr v5, v4

    sub-int/2addr v5, v1

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverUnrestrictedScreenHeight:I

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableFullscreenRight:I

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableFullscreenRight:I

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableFullscreenBottom:I

    sub-int/2addr v5, v1

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableFullscreenBottom:I

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableRight:I

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableRight:I

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableBottom:I

    sub-int/2addr v5, v1

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableBottom:I

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalDockRight:I

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverDockRight:I

    iget v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalDockBottom:I

    sub-int/2addr v5, v1

    iput v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverDockBottom:I

    :cond_0
    return-void

    :pswitch_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    sub-int v3, p2, p24

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x0

    const/4 v2, 0x0

    sub-int v4, p3, p24

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_2
    sub-int v2, p2, p24

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public processSViewCoverSetHiddenResultLw(I)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public processTorchlight(IZZ)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    if-eqz v0, :cond_0

    xor-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightOn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->TorchModeFlashSet(I)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method regitsterDesktopModeManager(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "desktopmode"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$26;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$26;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    invoke-static {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    :cond_0
    return-void
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    iput-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mInputMethod:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_1

    iput-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mInputMethod:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGameToolWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_2

    iput-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGameToolWindow:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGameToolOverlayWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_3

    iput-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGameToolOverlayWindow:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_4

    iput-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBixbyWindow:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mReduceScreenManager:Lcom/android/server/policy/ReduceScreenManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/ReduceScreenManager;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    return-void
.end method

.method public requestMetaKeyEvent(Landroid/content/ComponentName;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/SystemKeyManager;->requestMetaKeyEvent(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/policy/SystemKeyManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public requestTransientBars(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V

    :cond_1
    return-void
.end method

.method public requestTraversalForCoverView()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastCoverAppCovered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public restoreForceUserActivityTimeout(ZLandroid/view/WindowManagerPolicy$WindowState;)V
    .locals 8

    const-wide/16 v6, -0x1

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-nez p1, :cond_0

    iget-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v4, 0x146a

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iput-wide v6, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v6, v0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    :cond_0
    return-void
.end method

.method public rotationForOrientationLw(II)I
    .locals 2

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportAndAttachedSViewCover()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverCloseRotation:I

    if-ltz v0, :cond_0

    const-string/jumbo v0, "SamsungPhoneWindowManager"

    const-string/jumbo v1, "prefer rotation is set by cover"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverCloseRotation:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->rotationForSecondLcdOrientationLw(II)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public screenTurnedOff()V
    .locals 3

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceUserActivityTimeoutWin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mReduceScreenManager:Lcom/android/server/policy/ReduceScreenManager;

    invoke-virtual {v2}, Lcom/android/server/policy/ReduceScreenManager;->screenTurnedOff()V

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    const-string/jumbo v2, "com.sec.feature.cover.nfc_authentication"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-class v2, Lcom/android/server/friends/FrsServiceLocal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/friends/FrsServiceLocal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/friends/FrsServiceLocal;->screenTurnedOff()V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, -0x1

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    if-nez v2, :cond_0

    return v4

    :cond_0
    const/4 v2, 0x5

    if-ne p2, v2, :cond_1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/view/IWindowStateBridge;->needDelayedExitAnimation()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x10a0018

    return v2

    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v2, :cond_2

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarPosition:I

    packed-switch v2, :pswitch_data_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v2, :cond_10

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_d

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isForceHideBySViewCover()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v2, :cond_e

    const/4 v1, 0x1

    :goto_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_12

    :cond_3
    return v4

    :pswitch_0
    if-eq p2, v5, :cond_4

    if-ne p2, v7, :cond_5

    :cond_4
    const v2, 0x10a002b

    return v2

    :cond_5
    if-eq p2, v3, :cond_6

    if-ne p2, v6, :cond_2

    :cond_6
    const v2, 0x10a002a

    return v2

    :pswitch_1
    if-eq p2, v5, :cond_7

    if-ne p2, v7, :cond_8

    :cond_7
    const v2, 0x10a002e

    return v2

    :cond_8
    if-eq p2, v3, :cond_9

    if-ne p2, v6, :cond_2

    :cond_9
    const v2, 0x10a002d

    return v2

    :pswitch_2
    if-eq p2, v5, :cond_a

    if-ne p2, v7, :cond_b

    :cond_a
    const v2, 0x10a0030

    return v2

    :cond_b
    if-eq p2, v3, :cond_c

    if-ne p2, v6, :cond_2

    :cond_c
    const v2, 0x10a002f

    return v2

    :cond_d
    const/4 v0, 0x0

    goto :goto_0

    :cond_e
    const/4 v1, 0x0

    goto :goto_1

    :cond_f
    const/4 v1, 0x0

    goto :goto_1

    :cond_10
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v2, :cond_12

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v2, v2, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_12

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastClearCoverState:Z

    if-nez v2, :cond_12

    :cond_11
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLastClearCoverState:Z

    return v4

    :cond_12
    const/4 v2, 0x0

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public selectRotationAnimationLw([I)V
    .locals 7

    const v6, 0x10a0085

    const v5, 0x10a0084

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7e5

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isForceHideBySViewCover()Z

    move-result v1

    if-eqz v1, :cond_1

    aput v6, p1, v3

    aput v5, p1, v4

    :cond_1
    return-void

    :pswitch_0
    const v1, 0x10a0086

    aput v1, p1, v3

    aput v5, p1, v4

    goto :goto_0

    :pswitch_1
    aput v6, p1, v3

    aput v5, p1, v4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendBroadcastForAccessibility()V
    .locals 4

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "sendBroadcastForAccessibility() is called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.action.HOME_TRIPLE_CLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.SettingsReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string/jumbo v3, "com.samsung.permission.HOME_TRIPLE_CLICK"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public sendBroadcastForSafetyAssurance()V
    .locals 3

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "sendBroadcastForSafetyAssurance() is called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSafetyAssuranceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.app.safetyassurance.action.SAFETY_MESSAGE_TRIGGER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.android.app.safetyassurance"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Safety mesage broadcasted"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public sendDoubleClickBR(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send DoubleClickBR keyCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.action.DOUBLE_CLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "KEYCODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v3, "com.samsung.android.permisson.DOUBLE_CLICK"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->semGetDisplayId()I

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "System key send to sidesync.source keycode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.sec.android.sidesync30"

    const-string/jumbo v2, "com.sec.android.sidesync.source.WimpService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.intent.action.SYSTEM_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "KEYCODE"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "ACTION"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    const/4 v1, 0x1

    return v1

    :cond_2
    return v3
.end method

.method setAppOpsPermissionIfNeeded(I)V
    .locals 6

    const/16 v4, 0x3e8

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v4, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAppOpsPermissionIfNeeded code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " p_name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    invoke-virtual {v2, p1, v4, v3, v5}, Landroid/app/AppOpsManager;->semSetMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception occured for AppOpsManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public setCoverSwitchState(Lcom/samsung/android/cover/CoverState;)Z
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportFlipCover:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSupportSViewCover:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v1, v1, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    if-eq v0, v1, :cond_4

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cover/CoverState;->copyFrom(Lcom/samsung/android/cover/CoverState;)V

    const-string/jumbo v0, "SamsungPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCoverSwitchState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v2, v2, Lcom/samsung/android/cover/CoverState;->switchState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v2, v2, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v2, v2, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isStatusBarSViewCover()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportAndAttachedSViewCover()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/samsung/android/view/IWindowStateBridge;->disableHideSViewCoverOnce(Z)V

    :cond_3
    return v3

    :cond_4
    iget v0, p1, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v1, v1, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    if-eq v0, v1, :cond_2

    goto :goto_0
.end method

.method public setDesktopTaskBar(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->updateTaskBarHeightInDesktopMode()V

    :cond_0
    invoke-static {p1}, Lcom/android/server/policy/PolicyControl;->setDesktopTaskBar(Z)V

    return-void
.end method

.method public setFingerPrintPending()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    return-void
.end method

.method public setForceStatusBarFromSViewCover(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceStatusBarFromSViewCover:Z

    return-void
.end method

.method public setHideSViewCoverWindowState(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    return-void
.end method

.method public setHomeConsumed()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNaviBarForceTouchManager:Lcom/android/server/policy/NaviBarForceTouchManager;

    invoke-virtual {v0}, Lcom/android/server/policy/NaviBarForceTouchManager;->setHomeConsumed()V

    return-void
.end method

.method public setInitialDisplaySize(IIIIII)V
    .locals 8

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setInitialDisplaySize() width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", density="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", initWidth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", initHeight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", initDensity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    :goto_0
    int-to-float v0, v3

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const v4, 0x10502bc

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/2addr v4, p3

    int-to-float v4, v4

    div-float/2addr v4, v0

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    const v3, 0x105003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/2addr v3, p3

    int-to-float v3, v3

    div-float/2addr v3, v0

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeSize:I

    const/4 v1, 0x0

    const v3, 0x105015a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/2addr v3, p3

    int-to-float v3, v3

    div-float/2addr v3, v0

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v1, v3

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    aput v1, v5, v6

    aput v1, v3, v4

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    const v5, 0x105015c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/2addr v5, p3

    int-to-float v5, v5

    div-float/2addr v5, v0

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    aput v5, v6, v7

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    const v5, 0x1050160

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/2addr v5, p3

    int-to-float v5, v5

    div-float/2addr v5, v0

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    aput v5, v6, v7

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    aput v5, v6, v7

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    aput v5, v6, v7

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationInCarMode:[I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    const v5, 0x105015b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/2addr v5, p3

    int-to-float v5, v5

    div-float/2addr v5, v0

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationInCarMode:[I

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    aput v5, v6, v7

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationInCarMode:[I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    const v5, 0x105015d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/2addr v5, p3

    int-to-float v5, v5

    div-float/2addr v5, v0

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationInCarMode:[I

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    aput v5, v6, v7

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationInCarMode:[I

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    const v5, 0x1050161

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/2addr v5, p3

    int-to-float v5, v5

    div-float/2addr v5, v0

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationInCarMode:[I

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    aput v5, v6, v7

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationInCarMode:[I

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    aput v5, v6, v7

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationInCarMode:[I

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    aput v5, v6, v7

    aput v5, v3, v4

    sget-boolean v3, Lcom/android/server/policy/TspStateManagerPolicy;->FEATURE_ENABLED:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getTspStateManagerPolicy()Lcom/android/server/policy/TspStateManagerPolicy;

    move-result-object v3

    invoke-interface {v3, p4, p5, p1, p2}, Lcom/android/server/policy/TspStateManagerPolicy;->setInitialDisplaySize(IIII)V

    :cond_0
    sget-boolean v3, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_IMMERSIVE_FORCE_TOUCH:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNaviBarForceTouchManager:Lcom/android/server/policy/NaviBarForceTouchManager;

    invoke-virtual {v3, p4, p5, p1, p2}, Lcom/android/server/policy/NaviBarForceTouchManager;->setInitialDisplaySize(IIII)V

    :cond_1
    const v3, 0x3fee147b    # 1.86f

    iput v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDefaultMaxAspect:F

    iget v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDefaultMaxAspect:F

    const v4, 0x461c4000    # 10000.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x461c4000    # 10000.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDefaultMaxAspect:F

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCurrentAspect:F

    iget v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCurrentAspect:F

    const v4, 0x461c4000    # 10000.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x461c4000    # 10000.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCurrentAspect:F

    const v3, 0x1050031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/2addr v3, p3

    int-to-float v3, v3

    div-float/2addr v3, v0

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mConventionalModeMargin:I

    const v3, 0x1050032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mConventionalModeMarginForGameApp:I

    if-eqz p5, :cond_2

    const/16 v3, 0xb90

    if-eq p2, v3, :cond_2

    iget v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mConventionalModeMarginForGameApp:I

    mul-int/2addr v3, p2

    div-int/lit16 v3, v3, 0xb90

    iput v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mConventionalModeMarginForGameApp:I

    :cond_2
    sget-boolean v3, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_NAVIGATION_BAR:Z

    if-eqz v3, :cond_3

    iput v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavigationBarHeight:I

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    :goto_1
    invoke-direct {p0, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->updateBackRect(I)V

    :cond_3
    return-void

    :cond_4
    const/16 v3, 0xa0

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setLockTaskModeState(I)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWindowPinned:Z

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->updateGestureNavBar()V

    return-void
.end method

.method public setProKioskReEnableVolumeUpKey(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mProKioskReEnableVolumeUpKey:Z

    return-void
.end method

.method public setRotationLw(I)V
    .locals 6

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRotationLw() : rotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "PWM_ROTATION"

    const/16 v4, 0x15

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;II)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    :cond_0
    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRotationBooster:Lcom/samsung/android/os/SemDvfsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "semDvfsWakeupBooster.acquire()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v2

    sget-boolean v1, Lcom/android/server/policy/TspStateManagerPolicy;->FEATURE_ENABLED:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getTspStateManagerPolicy()Lcom/android/server/policy/TspStateManagerPolicy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2, p1}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/server/policy/TspStateManagerPolicy;->setPortrait(Z)V

    :cond_2
    sget-boolean v1, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_NAVIGATION_BAR:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->updateBackRect(I)V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "HINT_DEVICE_WAKEUP.acquire is failed"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setSafeModeReason(IIIIILjava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSafeModeReason:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    if-eqz v0, :cond_0

    if-lez p1, :cond_1

    const-string/jumbo v0, "KEYCODE_MENU"

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSafeModeReason:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez p2, :cond_2

    const-string/jumbo v0, "KEYCODE_S"

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSafeModeReason:Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-lez p3, :cond_3

    const-string/jumbo v0, "KEYCODE_DPAD_CENTER"

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSafeModeReason:Ljava/lang/String;

    goto :goto_0

    :cond_3
    if-lez p4, :cond_4

    const-string/jumbo v0, "TRACKBALL_BTN_MOUSE"

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSafeModeReason:Ljava/lang/String;

    goto :goto_0

    :cond_4
    if-lez p5, :cond_5

    const-string/jumbo v0, "KEYCODE_VOLUME_DOWN"

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSafeModeReason:Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PROPERTY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSafeModeReason:Ljava/lang/String;

    goto :goto_0
.end method

.method public setShowingSViewCover(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mShowingSViewCover:Z

    return-void
.end method

.method public setUserRotationAssigned(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUserRotationAssigned:Z

    return-void
.end method

.method public setUserRotationMode(II)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-ne v0, v2, :cond_1

    if-ne p1, v2, :cond_0

    const-string/jumbo v0, "SamsungPhoneWindowManager"

    const-string/jumbo v1, "SPWM setUserRotationMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_rotation"

    invoke-static {v0, v1, p2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accelerometer_rotation_second"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accelerometer_rotation_second"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_1
    return v4
.end method

.method public shouldBeHiddenIfNeeded(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMultiWindowInternalFuncs:Lcom/samsung/android/multiwindow/MultiWindowManagerInternalFuncs;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowManagerInternalFuncs;->shouldBeHiddenIfNeeded(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    if-eqz v1, :cond_1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x962

    if-eq v1, v2, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x963

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/SamsungPhoneWindowManager$30;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager$30;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startedWakingUp(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakingUpReason:I

    return-void
.end method

.method public subWindowTypeToLayerLw(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public systemBooted()V
    .locals 4

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    if-nez v2, :cond_0

    :try_start_0
    const-string/jumbo v2, "kioskmode"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->getBlockedHwKeysCache()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "Blocked hw keys cache is being refreshed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/policy/SamsungPhoneWindowManager$27;

    invoke-direct {v3, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$27;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "Exception while getting kiosk mode service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public systemReady(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewConfiguration;->hasFakeMenuKey(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasFakeMenuKeyRecent:Z

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewConfiguration;->hasFakeMenuKey(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasFakeMenuKeyBack:Z

    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    return-void
.end method

.method public takeScreenshot(I)V
    .locals 14

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isScreenCaptureEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    sget-boolean v10, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v10, :cond_0

    const-string/jumbo v10, "SamsungPhoneWindowManager"

    const-string/jumbo v11, "can not takescreenshot"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v11, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    sget-boolean v10, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v10, :cond_2

    const-string/jumbo v10, "SamsungPhoneWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "takeScreenshot : event = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", mPerformEditAfterScreenCapture = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", mServiceConnectionMap.size() = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "2.0"

    const-string/jumbo v12, "version"

    invoke-virtual {v9, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "persona"

    invoke-virtual {v10, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v6}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedKnoxId()I

    move-result v4

    const-string/jumbo v10, "SamsungPhoneWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "screenshot: current active user is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "user"

    invoke-virtual {v10, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    invoke-virtual {v8, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v10

    if-nez v10, :cond_4

    :cond_3
    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_4
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v4}, Landroid/os/UserHandle;-><init>(I)V

    :cond_5
    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_6

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v10

    invoke-direct {v2, v10}, Landroid/os/UserHandle;-><init>(I)V

    :cond_6
    iget-boolean v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    if-eqz v10, :cond_8

    iget-boolean v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    if-eqz v10, :cond_8

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const/high16 v10, 0x10000000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v5, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    :goto_0
    monitor-exit v11

    return-void

    :cond_8
    :try_start_1
    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    const/4 v12, 0x3

    if-lt v10, v12, :cond_9

    const-string/jumbo v10, "SamsungPhoneWindowManager"

    const-string/jumbo v12, "ConnectedScreenshotService is over 3, so do not take screenshot."

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v11

    return-void

    :cond_9
    :try_start_2
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v10, "com.android.systemui"

    const-string/jumbo v12, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v0, v10, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v1, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;I)V

    const-string/jumbo v10, "SamsungPhoneWindowManager"

    const-string/jumbo v12, "[Daimler] Allow screenshot capture for BBC Container"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "SamsungPhoneWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, " screenshot is taken for user "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v12, 0x1

    invoke-virtual {v10, v5, v1, v12, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v10

    if-eqz v10, :cond_7

    new-instance v7, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;

    invoke-direct {v7, p0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotRunnable;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Landroid/content/ServiceConnection;)V

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v10, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v12, 0x2710

    invoke-virtual {v10, v7, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10
.end method

.method public takeScreenshot(IZ)V
    .locals 5

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "takeScreenshot homeKeyTriggered : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->shouldShowScreenshotHelpGuide()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.systemui"

    const-string/jumbo v3, "com.android.systemui.screenshot.ScreenshotHelpGuideActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10010000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->setShowScreenshotHelpGuide()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "Do not excute screenshot because key concept is changed."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "No activity to show screenshot help dialog."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->takeScreenshot(I)V

    return-void
.end method

.method public toggleEasyOneHand()Z
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "SamsungPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toggleEasyOneHand() enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEasyOneHandEnabled:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEasyOneHandEnabled:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mReduceScreenManager:Lcom/android/server/policy/ReduceScreenManager;

    invoke-virtual {v0, v3}, Lcom/android/server/policy/ReduceScreenManager;->startService(I)V

    return v3

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public triggerPanicCall()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.action.PANIC_CALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "panic_call"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v3, "com.samsung.android.permission.PANIC_CALL"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string/jumbo v1, "SamsungPhoneWindowManager"

    const-string/jumbo v2, "Panic Call triggered."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateDeskTopUiMode()V
    .locals 1

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeService;->getCurrentUiMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDeskTopUiMode:I

    return-void
.end method

.method public updateForceImmersiveIcon(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNaviBarHideSetting:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/policy/PolicyControl;->needForceImmersiveMode(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method updateForceImmersiveMode()V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "navigationbar_hide_bar"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_2

    const/4 v1, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "navigationbar_hide_bar_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_3

    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v4, "SamsungPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "upateForceImmersiveMode() hideSetting="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNaviBarHideSetting:Z

    if-eqz v1, :cond_4

    :goto_2
    invoke-static {v0}, Lcom/android/server/policy/PolicyControl;->setForceImmersiveMode(Z)V

    sget-boolean v4, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_GESTURE_NAVIGATION_BAR:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "navigation_bar_gesture_while_hidden"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v2}, Lcom/android/server/policy/PolicyControl;->setGestureNavBarEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public updateLightNaviBarLw(ILandroid/view/WindowManagerPolicy$WindowState;)I
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_LIGHT_NAVIGATION_BAR:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCanAffectSystemUiWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCanAffectSystemUiWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCanAffectSystemUiWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isNavigationColorWin(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 p1, p1, -0x11

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCanAffectSystemUiWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-static {v0, v1}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/MultiPhoneWindowManager;->isMinimizedDockAndHomeStackResizable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    and-int/lit8 p1, p1, -0x11

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/view/IWindowStateBridge;->hasAppTokenBounds()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mChangeRatioBarSize:I

    if-eqz v0, :cond_3

    or-int/lit8 p1, p1, 0x10

    :cond_2
    :goto_0
    return p1

    :cond_3
    and-int/lit8 p1, p1, -0x11

    goto :goto_0
.end method

.method public updateLightStatusBarLw(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 2

    const/high16 v1, -0x80000000

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/view/IWindowStateBridge;->hasAppTokenBounds()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mChangeRatioBarSize:I

    if-nez v0, :cond_0

    or-int/2addr p1, v1

    :cond_0
    :goto_0
    return p1

    :cond_1
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastFullscreenStackSysUiFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    or-int/2addr p1, v1

    goto :goto_0
.end method

.method public updateSViewCoverLayout(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverSystemLeft:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverSystemTop:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverSystemRight:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverSystemBottom:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverUnrestrictedScreenLeft:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverUnrestrictedScreenTop:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverUnrestrictedScreenWidth:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverUnrestrictedScreenHeight:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableFullscreenLeft:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableFullscreenTop:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableFullscreenRight:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableFullscreenBottom:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableLeft:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableTop:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableRight:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverStableBottom:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverDockLeft:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverDockTop:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverDockRight:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSViewCoverDockBottom:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalSystemLeft:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalSystemTop:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalSystemRight:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalSystemBottom:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalUnrestrictedScreenLeft:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalUnrestrictedScreenTop:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalUnrestrictedScreenWidth:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalUnrestrictedScreenHeight:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableFullscreenLeft:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableFullscreenTop:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableFullscreenRight:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableFullscreenBottom:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableLeft:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableTop:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableRight:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalStableBottom:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalDockLeft:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalDockTop:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalDockRight:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOriginalDockBottom:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    goto/16 :goto_0
.end method

.method public updateSettings()V
    .locals 37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    move-object/from16 v33, v0

    monitor-enter v33

    :try_start_0
    const-string/jumbo v32, "double_tab_launch_component"

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1e

    const-string/jumbo v32, "/"

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v32, v0

    const/16 v34, 0x2

    move/from16 v0, v32

    move/from16 v1, v34

    if-lt v0, v1, :cond_0

    new-instance v24, Landroid/content/ComponentName;

    const/16 v32, 0x0

    aget-object v32, v29, v32

    const/16 v34, 0x1

    aget-object v34, v29, v34

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapLaunchCommandIntent:Landroid/content/ComponentName;

    move-object/from16 v32, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapLaunchCommandIntent:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchCommandIntent:Landroid/content/Intent;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchCommandIntent:Landroid/content/Intent;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isActivitiesAvailable(Landroid/content/Intent;)Z

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mAvailableDoublTapLaunchCommand:Z

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchUser:I

    const-string/jumbo v32, "double_tab_launch"

    const/16 v34, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const-string/jumbo v32, "SamsungPhoneWindowManager"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "updateSettings(). settings changed. doubleTapLaunchBehavior : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, ". mDoubleTapLaunchBehavior : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchBehavior:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, ". mDoubleTapLaunchUser "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchUser:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchBehavior:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-eq v0, v10, :cond_1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchBehavior:I

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v34, "direct_access"

    const/16 v35, 0x0

    const/16 v36, -0x2

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDirectAccessBehavior:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-eq v0, v9, :cond_2

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDirectAccessBehavior:I

    :cond_2
    const-string/jumbo v32, "lcd_curtain"

    const/16 v34, 0x0

    const/16 v35, -0x2

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v32

    const/16 v34, 0x1

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_20

    const-string/jumbo v32, "accessibility_enabled"

    const/16 v34, 0x0

    const/16 v35, -0x2

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v32

    const/16 v34, 0x1

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_1f

    const/16 v22, 0x1

    :goto_1
    if-eqz v22, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v32, v0

    const/16 v34, 0x65

    move/from16 v0, v34

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    :cond_3
    :goto_2
    if-nez v22, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mDoubleTapLaunchBehavior:I

    move/from16 v32, v0

    const/16 v34, 0x3

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_22

    :cond_4
    const/16 v32, 0x1

    :goto_3
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPowerDoubleBehavior:Z

    const-string/jumbo v32, "edit_after_screen_capture"

    const/16 v34, 0x0

    const/16 v35, -0x2

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v32

    if-eqz v32, :cond_23

    const/16 v25, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v25

    if-eq v0, v1, :cond_5

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    :cond_5
    const-string/jumbo v32, "send_emergency_message"

    const/16 v34, 0x0

    const/16 v35, -0x2

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v32

    if-eqz v32, :cond_24

    const/16 v18, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    :cond_6
    const-string/jumbo v32, "access_control_use"

    const/16 v34, 0x0

    const/16 v35, -0x2

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v32

    if-eqz v32, :cond_25

    const/16 v21, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    :cond_7
    const-string/jumbo v32, "access_control_enabled"

    const/16 v34, 0x0

    const/16 v35, -0x2

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v32

    if-eqz v32, :cond_26

    const/16 v16, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v16

    if-eq v0, v1, :cond_8

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    :cond_8
    const-string/jumbo v32, "easy_mode_switch"

    const/16 v34, 0x1

    const/16 v35, -0x2

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v32

    if-nez v32, :cond_27

    const/4 v14, 0x1

    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    move/from16 v32, v0

    move/from16 v0, v32

    if-eq v0, v14, :cond_9

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    :cond_9
    const-string/jumbo v32, "desk_home_screen_display"

    const/16 v34, 0x1

    const/16 v35, -0x2

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v32

    if-eqz v32, :cond_28

    const/4 v13, 0x1

    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    move/from16 v32, v0

    move/from16 v0, v32

    if-eq v0, v13, :cond_a

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    :cond_a
    const-string/jumbo v32, "torchlight_enable"

    const/16 v34, 0x0

    const/16 v35, -0x2

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v32

    if-eqz v32, :cond_29

    const/16 v20, 0x1

    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v20

    if-eq v0, v1, :cond_b

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    :cond_b
    const-string/jumbo v32, "car_mode_on"

    const/16 v34, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    if-eqz v32, :cond_2a

    const/4 v11, 0x1

    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsCheckDrivingMode:Z

    move/from16 v32, v0

    move/from16 v0, v32

    if-eq v0, v11, :cond_c

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsCheckDrivingMode:Z

    :cond_c
    const-string/jumbo v32, "car_mode_blocking_system_key"

    const/16 v34, 0x0

    const/16 v35, -0x3

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v32

    if-eqz v32, :cond_2b

    const/4 v6, 0x1

    :goto_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockKeyForDrivingMode:Z

    move/from16 v32, v0

    move/from16 v0, v32

    if-eq v0, v6, :cond_d

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBlockKeyForDrivingMode:Z

    :cond_d
    const-string/jumbo v32, "sidesync_source_presentation"

    const/16 v34, 0x0

    const/16 v35, -0x2

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v32

    if-eqz v32, :cond_2c

    const/16 v19, 0x1

    :goto_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    :cond_e
    const-string/jumbo v32, "pen_attach_detach_vibration"

    const/16 v34, 0x1

    const/16 v35, -0x2

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v32

    if-eqz v32, :cond_2d

    const/16 v17, 0x1

    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v17

    if-eq v0, v1, :cond_f

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHasDaynotePackage:Z

    move/from16 v32, v0

    if-eqz v32, :cond_10

    const-string/jumbo v32, "cover_note"

    const/16 v34, 0x0

    const/16 v35, -0x2

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v32

    if-eqz v32, :cond_2e

    const/4 v12, 0x1

    :goto_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverNoteEnabled:Z

    move/from16 v32, v0

    move/from16 v0, v32

    if-eq v0, v12, :cond_10

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCoverNoteEnabled:Z

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/policy/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v32

    if-eqz v32, :cond_12

    const-string/jumbo v32, "folder_sounds_enabled"

    const/16 v34, 0x0

    const/16 v35, -0x2

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v32

    if-eqz v32, :cond_2f

    const/16 v23, 0x1

    :goto_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderSoundEnable:Z

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v23

    if-eq v0, v1, :cond_11

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderSoundEnable:Z

    :cond_11
    const-string/jumbo v32, "folder_open_sound"

    const/16 v34, -0x2

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderOpenSound:Ljava/lang/String;

    const-string/jumbo v32, "folder_close_sound"

    const/16 v34, -0x2

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFolderCloseSound:Ljava/lang/String;

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/policy/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v32

    const/16 v34, 0x2

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_13

    const-string/jumbo v32, "accelerometer_rotation_second"

    const/16 v34, 0x0

    const/16 v35, -0x2

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v32

    if-eqz v32, :cond_30

    const/16 v28, 0x0

    :goto_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSecondLcdUserRotationMode:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v28

    if-eq v0, v1, :cond_13

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSecondLcdUserRotationMode:I

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    :cond_13
    const-string/jumbo v32, "assistant"

    const/16 v34, -0x2

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_15

    const-string/jumbo v32, "/"

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/16 v32, 0x0

    aget-object v32, v4, v32

    if-eqz v32, :cond_31

    const/16 v32, 0x0

    aget-object v32, v4, v32

    const-string/jumbo v34, "com.samsung.voiceserviceplatform"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_14

    const/16 v32, 0x0

    aget-object v32, v4, v32

    const-string/jumbo v34, "com.samsung.android.quickassist"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_31

    :cond_14
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsQDSetting:Z

    :cond_15
    :goto_12
    const-string/jumbo v32, "any_screen_enabled"

    const/16 v34, 0x0

    const/16 v35, -0x2

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEasyOneHandEnabled:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-eq v0, v15, :cond_16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEasyOneHandEnabled:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBootCompleted:Z

    move/from16 v32, v0

    if-eqz v32, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEasyOneHandEnabled:I

    move/from16 v32, v0

    const/16 v34, 0x1

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mReduceScreenManager:Lcom/android/server/policy/ReduceScreenManager;

    move-object/from16 v32, v0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/policy/ReduceScreenManager;->startService(I)V

    :cond_16
    :goto_13
    const-string/jumbo v32, "any_screen_running"

    const/16 v34, 0x0

    const/16 v35, -0x2

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEasyOneHandRunning:I

    const-string/jumbo v32, "one_handed_op_wakeup_type"

    const/16 v34, 0x1

    const/16 v35, -0x2

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEasyOneHandTriggerType:I

    sget-boolean v32, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v32, :cond_17

    const-string/jumbo v32, "SamsungPhoneWindowManager"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "mEasyOneHandEnabled="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEasyOneHandEnabled:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, ", mEasyOneHandRunning="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEasyOneHandRunning:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, ", mEasyOneHandTriggerType="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mEasyOneHandTriggerType:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, ", mBootCompleted="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBootCompleted:Z

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    sget-boolean v32, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_NAVIGATION_BAR:Z

    if-eqz v32, :cond_18

    const-string/jumbo v32, "navigationbar_key_order"

    const/16 v34, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavigationBarKeyOrder:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    move-object/from16 v32, v0

    if-eqz v32, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/Display;->getRotation()I

    move-result v32

    :goto_14
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->updateBackRect(I)V

    const-string/jumbo v32, "game_navigationbar_swipe_up_lock"

    const/16 v34, 0x0

    const/16 v35, -0x2

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v32

    const/16 v34, 0x1

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_34

    const/16 v32, 0x1

    :goto_15
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNaviBarLockedOnGameMode:Z

    :cond_18
    const-string/jumbo v32, "display_outdoor_mode"

    const/16 v34, 0x0

    const/16 v35, -0x2

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v32

    const/16 v34, 0x1

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_35

    const/16 v26, 0x1

    :goto_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOutdoorModeSetting:Z

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v26

    if-eq v0, v1, :cond_19

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mOutdoorModeSetting:Z

    :cond_19
    const-string/jumbo v32, "spen_screen_on"

    const/16 v34, 0x0

    const/16 v35, -0x2

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v32

    const/16 v34, 0x1

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_36

    const/16 v31, 0x1

    :goto_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeSPenSetting:Z

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v31

    if-eq v0, v1, :cond_1a

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWakeSPenSetting:Z

    :cond_1a
    const-string/jumbo v32, "car_mode_global_navi_bar_position"

    const/16 v34, 0x0

    const/16 v35, -0x2

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarHorizontalPosition:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-eq v7, v0, :cond_1b

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mCarModeBarHorizontalPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v32, v0

    const/16 v34, 0x2

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1b
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v32

    const-string/jumbo v34, "CscFeature_Common_ConfigBikeMode"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v34, "bikemode"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string/jumbo v34, "isBikeMode"

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    const/16 v34, 0x1

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_37

    const/16 v32, 0x1

    :goto_18
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSBikeModeOn:Z

    :cond_1c
    const-string/jumbo v32, "adaptive_brightness"

    const/16 v34, 0x1

    const/16 v35, -0x2

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v32

    if-eqz v32, :cond_38

    const/16 v32, 0x1

    :goto_19
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsAdaptiveBrightnessValue:Z

    if-eqz v30, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v32, v0

    const/16 v34, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1d
    monitor-exit v33

    return-void

    :cond_1e
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v32, v0

    const/16 v34, 0x65

    move/from16 v0, v34

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v32

    monitor-exit v33

    throw v32

    :cond_1f
    const/16 v22, 0x0

    goto/16 :goto_1

    :cond_20
    const/16 v22, 0x0

    goto/16 :goto_1

    :cond_21
    if-eqz v8, :cond_3

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v32, v0

    const/16 v34, 0x67

    move/from16 v0, v34

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    goto/16 :goto_2

    :cond_22
    const/16 v32, 0x0

    goto/16 :goto_3

    :cond_23
    const/16 v25, 0x0

    goto/16 :goto_4

    :cond_24
    const/16 v18, 0x0

    goto/16 :goto_5

    :cond_25
    const/16 v21, 0x0

    goto/16 :goto_6

    :cond_26
    const/16 v16, 0x0

    goto/16 :goto_7

    :cond_27
    const/4 v14, 0x0

    goto/16 :goto_8

    :cond_28
    const/4 v13, 0x0

    goto/16 :goto_9

    :cond_29
    const/16 v20, 0x0

    goto/16 :goto_a

    :cond_2a
    const/4 v11, 0x0

    goto/16 :goto_b

    :cond_2b
    const/4 v6, 0x0

    goto/16 :goto_c

    :cond_2c
    const/16 v19, 0x0

    goto/16 :goto_d

    :cond_2d
    const/16 v17, 0x0

    goto/16 :goto_e

    :cond_2e
    const/4 v12, 0x0

    goto/16 :goto_f

    :cond_2f
    const/16 v23, 0x0

    goto/16 :goto_10

    :cond_30
    const/16 v28, 0x1

    goto/16 :goto_11

    :cond_31
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsQDSetting:Z

    goto/16 :goto_12

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mReduceScreenManager:Lcom/android/server/policy/ReduceScreenManager;

    move-object/from16 v32, v0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/policy/ReduceScreenManager;->stopService(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_13

    :cond_33
    const/16 v32, 0x0

    goto/16 :goto_14

    :cond_34
    const/16 v32, 0x0

    goto/16 :goto_15

    :cond_35
    const/16 v26, 0x0

    goto/16 :goto_16

    :cond_36
    const/16 v31, 0x0

    goto/16 :goto_17

    :cond_37
    const/16 v32, 0x0

    goto/16 :goto_18

    :cond_38
    const/16 v32, 0x0

    goto/16 :goto_19
.end method

.method public updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;II)I
    .locals 5

    const/high16 v4, 0x8000000

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    and-int/lit16 v1, p3, 0x1802

    or-int/2addr p4, v1

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGameToolWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mGameToolWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_1

    and-int v1, p4, v4

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    and-int v1, p4, v4

    iput v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceEnabledSystemUiFlags:I

    :cond_1
    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceEnabledSystemUiFlags:I

    if-eqz v1, :cond_3

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceEnabledSystemUiFlags:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_2

    const/high16 v1, 0x20000000

    or-int/2addr p4, v1

    :cond_2
    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceEnabledSystemUiFlags:I

    iput v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mUnsettingSystemUiFlags:I

    iput v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mForceEnabledSystemUiFlags:I

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    and-int/lit8 p4, p4, -0x11

    :cond_4
    return p4
.end method

.method public updateSystemUiVisibilityLw()V
    .locals 5

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v3, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v3, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mShowForceImmersiveIcon:Z

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->updateForceImmersiveIcon(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v1

    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mShowForceImmersiveIcon:Z

    if-eq v3, v1, :cond_1

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mShowForceImmersiveIcon:Z

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/policy/SamsungPhoneWindowManager$36;

    invoke-direct {v4, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$36;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :cond_2
    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->updateForceImmersiveIcon(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v1

    goto :goto_0
.end method

.method public updateTaskBarHeightInDesktopMode()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTaskBarHeightInDesktopMode:I

    return-void
.end method

.method public updateTopActivity(Landroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/SystemKeyManager;->updateTopActivity(Landroid/content/ComponentName;)V

    return-void
.end method

.method public updateTouchableArea(Z)V
    .locals 10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "set_touchable_area,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p1, :cond_0

    const-string/jumbo v7, "1"

    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mChangedTouchableArea:Z

    if-ne v7, p1, :cond_1

    return-void

    :cond_0
    const-string/jumbo v7, "0"

    goto :goto_0

    :cond_1
    iput-boolean p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mChangedTouchableArea:Z

    const-string/jumbo v7, "SamsungPhoneWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateTouchableArea ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string/jumbo v7, "/sys/class/sec/tsp/cmd"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "SamsungPhoneWindowManager"

    const-string/jumbo v8, "The file is not existed."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "SamsungPhoneWindowManager"

    const-string/jumbo v8, "The file cannot write."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_4

    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    :goto_1
    move-object v4, v5

    :cond_5
    :goto_2
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_5

    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v0

    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_5

    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v4, :cond_6

    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :cond_6
    :goto_6
    throw v7

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v7

    move-object v4, v5

    goto :goto_5

    :catch_6
    move-exception v0

    move-object v4, v5

    goto :goto_4

    :catch_7
    move-exception v1

    move-object v4, v5

    goto :goto_3
.end method

.method public updateTspInputMethodPolicy(Landroid/view/WindowManagerPolicy$WindowState;Z)V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/server/policy/TspStateManagerPolicy;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getTspStateManagerPolicy()Lcom/android/server/policy/TspStateManagerPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mInputMethod:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0, v1}, Lcom/android/server/policy/TspStateManagerPolicy;->updateInputMethodPolicy(Landroid/view/WindowManagerPolicy$WindowState;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getTspStateManagerPolicy()Lcom/android/server/policy/TspStateManagerPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0, v1, v2}, Lcom/android/server/policy/TspStateManagerPolicy;->updateWindowPolicy(Landroid/view/WindowManagerPolicy$WindowState;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateTspWindowPolicy(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/server/policy/TspStateManagerPolicy;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getTspStateManagerPolicy()Lcom/android/server/policy/TspStateManagerPolicy;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Lcom/android/server/policy/TspStateManagerPolicy;->updateWindowPolicy(Landroid/view/WindowManagerPolicy$WindowState;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateWakeupPrevention()V
    .locals 7

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "wakeup_prevention"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v1, v3, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsWakeupPrevention:Z

    if-eq v3, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsWakeupPrevention:Z

    const-string/jumbo v3, "SamsungPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateWakeupPrevention = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsWakeupPrevention:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v3, "wakeup_prevention_packages"

    const/4 v5, -0x2

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->updateWakeupPreventionPackages(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public windowTypeToLayer(I)I
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, -0x1

    return v0

    :sswitch_0
    const/4 v0, 0x3

    return v0

    :sswitch_1
    const/4 v0, 0x4

    return v0

    :sswitch_2
    const/16 v0, 0x14

    return v0

    :sswitch_3
    const/16 v0, 0x15

    return v0

    :sswitch_4
    const/16 v0, 0x19

    return v0

    :sswitch_5
    const/16 v0, 0x1a

    return v0

    :sswitch_6
    const/16 v0, 0x1b

    return v0

    :sswitch_7
    const/16 v0, 0x1d

    return v0

    :sswitch_8
    const/16 v0, 0x1e

    return v0

    :sswitch_9
    const/16 v0, 0x1f

    return v0

    :sswitch_a
    const/16 v0, 0x20

    return v0

    :sswitch_b
    const/16 v0, 0x23

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x834 -> :sswitch_8
        0x835 -> :sswitch_8
        0x836 -> :sswitch_6
        0x8b1 -> :sswitch_6
        0x8ca -> :sswitch_7
        0x8ce -> :sswitch_4
        0x8e1 -> :sswitch_1
        0x966 -> :sswitch_0
        0x967 -> :sswitch_b
        0x968 -> :sswitch_7
        0x96a -> :sswitch_5
        0x96d -> :sswitch_0
        0x974 -> :sswitch_a
        0x975 -> :sswitch_9
        0x97e -> :sswitch_0
        0x97f -> :sswitch_1
        0x988 -> :sswitch_2
        0x989 -> :sswitch_2
        0x98a -> :sswitch_3
    .end sparse-switch
.end method

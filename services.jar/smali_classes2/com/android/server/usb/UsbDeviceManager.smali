.class public Lcom/android/server/usb/UsbDeviceManager;
.super Ljava/lang/Object;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbDeviceManager$1;,
        Lcom/android/server/usb/UsbDeviceManager$2;,
        Lcom/android/server/usb/UsbDeviceManager$3;,
        Lcom/android/server/usb/UsbDeviceManager$4;,
        Lcom/android/server/usb/UsbDeviceManager$5;,
        Lcom/android/server/usb/UsbDeviceManager$6;,
        Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;,
        Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    }
.end annotation


# static fields
.field private static final ACCESSORY_REQUEST_TIMEOUT:I = 0x2710

.field private static final ACCESSORY_START_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/misc/usb_accessory"

.field private static final ACTIONS_MTP_DISABLED_INTERNAL:[Ljava/lang/String;

.field private static final ADB_NOTIFICATION_CHANNEL_ID_TV:Ljava/lang/String; = "usbdevicemanager.adb.tv"

.field private static final AUDIO_MODE_SOURCE:I = 0x1

.field private static final AUDIO_SOURCE_PCM_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_audio_source/pcm"

.field private static final AUDIT_URI:Ljava/lang/String; = "content://com.sec.knox.provider/AuditLog"

.field private static final AuditEvents_USB_EVENT:Ljava/lang/String; = "Received USB event"

.field private static final AuditLog_AUDIT_LOG_GROUP_APPLICATION:I = 0x5

.field private static final AuditLog_NOTICE:I = 0x5

.field private static final BATTERY_ONLINE_MHL:I = 0x12

.field private static final BATTERY_ONLINE_MHL_USB:I = 0xf

.field private static final BATTERY_ONLINE_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/online"

.field private static final BOOT_MODE_PROPERTY:Ljava/lang/String; = "ro.bootmode"

.field private static final BUILD_TYPE_ENG:Ljava/lang/String; = "eng"

.field private static final BUILD_TYPE_PROPERTY:Ljava/lang/String; = "ro.build.type"

.field private static final BUILD_TYPE_USERDEBUG:Ljava/lang/String; = "userdebug"

.field private static final CHECK_KERNEL_LOG_PRINT_DIR:Ljava/lang/String; = "/data/local/tmp/usbfwlog"

.field private static final DEBUG:Z = true

.field private static final FUNCTIONS_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/functions"

.field private static final INTENT_HOST_CONNECTION_CHANGED:Ljava/lang/String; = "com.samsung.UsbOtgCableConnection"

.field private static final MIDI_ALSA_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_midi/alsa"

.field private static final MPS_CODE_PATH:Ljava/lang/String; = "/efs/imei/mps_code.dat"

.field private static final MSG_ACCESSORY_MODE_ENTER_TIMEOUT:I = 0x8

.field private static final MSG_BOOT_COMPLETED:I = 0x4

.field private static final MSG_ENABLE_ADB:I = 0x1

.field private static final MSG_POWER_STATE:I = 0xa

.field private static final MSG_SET_CURRENT_FUNCTIONS:I = 0x2

.field private static final MSG_SHOW_UPSM_BLOCK_TOAST:I = 0xb

.field private static final MSG_SYSTEM_READY:I = 0x3

.field private static final MSG_TA_POWER_STATE:I = 0xc

.field private static final MSG_UPDATE_CHARGING_STATE:I = 0x9

.field private static final MSG_UPDATE_HOST_STATE:I = 0x7

.field private static final MSG_UPDATE_STATE:I = 0x0

.field private static final MSG_UPDATE_USER_RESTRICTIONS:I = 0x6

.field private static final MSG_USER_SWITCHED:I = 0x5

.field private static final NORMAL_BOOT:Ljava/lang/String; = "normal"

.field private static final PERMISSIONS_KNOX_MTP_DISABLED_INTERNAL:[Ljava/lang/String;

.field private static final RESTRICTION3_URI:Ljava/lang/String; = "content://com.sec.knox.provider/RestrictionPolicy3"

.field private static final RESTRICTION4_URI:Ljava/lang/String; = "content://com.sec.knox.provider/RestrictionPolicy4"

.field private static final RESTRICTIONPOLICY_USBDEBUGGING_METHOD:Ljava/lang/String; = "isUsbDebuggingEnabled"

.field private static final RESTRICTIONPOLICY_USBMASSSTORAGE_METHOD:Ljava/lang/String; = "isUsbMassStorageEnabled"

.field private static final RESTRICTIONPOLICY_USBMEDIAPLAYERAVAILABLE_METHOD:Ljava/lang/String; = "isUsbMediaPlayerAvailable"

.field private static final RNDIS_ETH_ADDR_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_rndis/ethaddr"

.field private static final RNDIS_QC_ETH_ADDR_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_rndis_qc/ethaddr"

.field private static final SALES_CODE_PATH:Ljava/lang/String; = "/system/csc/sales_code.dat"

.field private static final STATE_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/state"

.field private static final SYSFS_DUAL_ROLE_USB_CLASS:Ljava/lang/String; = "/sys/class/dual_role_usb"

.field private static final TAG:Ljava/lang/String; = "UsbDeviceManager"

.field private static final UPDATE_DELAY:I = 0x5dc

.field private static final USB_CCIC_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/sec/ccic"

.field private static final USB_CONFIG_PROPERTY:Ljava/lang/String; = "sys.usb.config"

.field private static final USB_CONNECTION_TYPE_CHARGING:I = 0x4

.field private static final USB_CONNECTION_TYPE_DEFAULT:I = 0x0

.field private static final USB_CONNECTION_TYPE_MIDI:I = 0x3

.field private static final USB_CONNECTION_TYPE_MTP:I = 0x1

.field private static final USB_CONNECTION_TYPE_PTP:I = 0x2

.field private static final USB_PERSISTENT_CONFIG_PROPERTY:Ljava/lang/String; = "persist.sys.usb.config"

.field private static final USB_PERSISTENT_QCOM_CONFIG_PROPERTY:Ljava/lang/String; = "persist.sys.usb.q_config"

.field private static final USB_PERSISTENT_VZW_CONNECTED_CONFIG_PROPERTY:Ljava/lang/String; = "persist.sys.usb.vzw_connected"

.field private static final USB_STATE_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/android_usb/android0"

.field private static final USB_STATE_PROPERTY:Ljava/lang/String; = "sys.usb.state"

.field private static final USB_WATER:Ljava/lang/String; = "/sys/class/sec/ccic/water"

.field private static final WET_EVENT_LOGFILE_PATH:Ljava/lang/String; = "/data/log/wet_detect.log"

.field private static final mCheckUSAOpen:Z


# instance fields
.field private mAccessoryStrings:[Ljava/lang/String;

.field private mAdbEnabled:Z

.field private mAdbShowNotificationBar:Z

.field private mAudioSourceEnabled:Z

.field private mBootCompleted:Z

.field private mBroadcastedIntent:Landroid/content/Intent;

.field private final mChargingReceiver:Landroid/content/BroadcastReceiver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUpdateNotiLock"
    .end annotation
.end field

.field private mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

.field private final mDexListener:Lcom/android/server/utils/sysfwutil/DexConnectionListener;

.field private final mDexObserver:Lcom/android/server/utils/sysfwutil/DexObserver;

.field private final mEventWriterLock:Ljava/lang/Object;

.field private mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

.field private final mHasUsbAccessory:Z

.field private final mHostConnectionReceiver:Landroid/content/BroadcastReceiver;

.field private mHostConnectionState:Z

.field private final mHostReceiver:Landroid/content/BroadcastReceiver;

.field private final mLock:Ljava/lang/Object;

.field private mMidiCard:I

.field private mMidiDevice:I

.field private mMidiEnabled:Z

.field private final mMtpDisabledReceiver:Landroid/content/BroadcastReceiver;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOemModeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mPendingBootBroadcast:Z

.field private mSetNextUsbModeToDefault:Z

.field private final mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

.field private mSupportDualRole:Z

.field private mSupportedMassStorage:Z

.field private final mUEventObserver:Landroid/os/UEventObserver;

.field private final mUpdateNotiLock:Ljava/lang/Object;

.field private final mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

.field private mUseUsbNotification:Z

.field private usbDisableSettingVal:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/server/usb/UsbDeviceManager;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/utils/sysfwutil/DexObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDexObserver:Lcom/android/server/utils/sysfwutil/DexObserver;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHostConnectionState:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/usb/UsbDeviceManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mMidiCard:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/usb/UsbDeviceManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mMidiDevice:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mMidiEnabled:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mPendingBootBroadcast:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mSetNextUsbModeToDefault:Z

    return v0
.end method

.method static synthetic -get19(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAdbShowNotificationBar:Z

    return v0
.end method

.method static synthetic -get20(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mSupportDualRole:Z

    return v0
.end method

.method static synthetic -get21(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mUpdateNotiLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbAlsaManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mUseUsbNotification:Z

    return v0
.end method

.method static synthetic -get25(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAudioSourceEnabled:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mBroadcastedIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get6()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/usb/UsbDeviceManager;->mCheckUSAOpen:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/usb/UsbDeviceManager;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mAudioSourceEnabled:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/usb/UsbDeviceManager;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mBroadcastedIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mHostConnectionState:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/usb/UsbDeviceManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mMidiCard:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/usb/UsbDeviceManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mMidiDevice:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mMidiEnabled:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mPendingBootBroadcast:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mSetNextUsbModeToDefault:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->hasDeviceRestriction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1()Z
    .locals 1

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->initYuvaDownloadable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->startAccessoryMode()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->updateTimeStamp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2()Z
    .locals 1

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->initYuvaFeature()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/server/usb/UsbDeviceManager;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->getKnoxCustomUsbConnectionType()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->applyOemOverrideFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->validateDeviceRestriction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->AuditLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->registerDeviceRestriction()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/usb/UsbDeviceManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->showWaterUsbNoti(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_AutoConfigurationType"

    const-string/jumbo v2, "NONE"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SIMBASED_SSKU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/usb/UsbDeviceManager;->mCheckUSAOpen:Z

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "edm.intent.action.disable.mtp"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.MTP_DISABLED_INTERNAL"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/usb/UsbDeviceManager;->ACTIONS_MTP_DISABLED_INTERNAL:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "com.sec.restriction.permission.MTP_DISABLED"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_MTP_DISABLED_INTERNAL"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/usb/UsbDeviceManager;->PERMISSIONS_KNOX_MTP_DISABLED_INTERNAL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;Lcom/android/server/utils/sysfwutil/DexObserver;)V
    .locals 7

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mUpdateNotiLock:Ljava/lang/Object;

    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mSupportedMassStorage:Z

    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mAdbShowNotificationBar:Z

    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mSupportDualRole:Z

    const-string/jumbo v3, "OFF"

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mHostConnectionState:Z

    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mSetNextUsbModeToDefault:Z

    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$1;

    invoke-direct {v3, p0}, Lcom/android/server/usb/UsbDeviceManager$1;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mDexListener:Lcom/android/server/utils/sysfwutil/DexConnectionListener;

    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$2;

    invoke-direct {v3, p0}, Lcom/android/server/usb/UsbDeviceManager$2;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$3;

    invoke-direct {v3, p0}, Lcom/android/server/usb/UsbDeviceManager$3;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mHostReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$4;

    invoke-direct {v3, p0}, Lcom/android/server/usb/UsbDeviceManager$4;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mChargingReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$5;

    invoke-direct {v3, p0}, Lcom/android/server/usb/UsbDeviceManager$5;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mHostConnectionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$6;

    invoke-direct {v3, p0}, Lcom/android/server/usb/UsbDeviceManager$6;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mMtpDisabledReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mEventWriterLock:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->checkLogEnableAtKernel()V

    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iput-object p3, p0, Lcom/android/server/usb/UsbDeviceManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v3, "android.hardware.usb.accessory"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mHasUsbAccessory:Z

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->initRndisAddress()V

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->readOemUsbOverrideConfig()V

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "/sys/class/dual_role_usb"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mSupportDualRole:Z

    const-string/jumbo v3, "UsbDeviceManager"

    const-string/jumbo v4, "Support dual_role"

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;-><init>(Lcom/android/server/usb/UsbDeviceManager;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeIsStartRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "UsbDeviceManager"

    const-string/jumbo v4, "accessory attached at boot"

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->startAccessoryMode()V

    :cond_0
    const-string/jumbo v3, "ro.adb.secure"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v3, "trigger_restart_min_framework"

    const-string/jumbo v4, "vold.decrypt"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v2, :cond_1

    xor-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_1

    new-instance v3, Lcom/android/server/usb/UsbDebuggingManager;

    invoke-direct {v3, p1}, Lcom/android/server/usb/UsbDebuggingManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    :cond_1
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mHostReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v6, "android.hardware.usb.action.USB_PORT_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mChargingReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mHostConnectionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v6, "com.samsung.UsbOtgCableConnection"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/server/usb/UsbDeviceManager;->mDexObserver:Lcom/android/server/utils/sysfwutil/DexObserver;

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mDexObserver:Lcom/android/server/utils/sysfwutil/DexObserver;

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mDexListener:Lcom/android/server/utils/sysfwutil/DexConnectionListener;

    invoke-virtual {v3, v4}, Lcom/android/server/utils/sysfwutil/DexObserver;->addListener(Lcom/android/server/utils/sysfwutil/DexConnectionListener;)V

    return-void

    :cond_2
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mSupportDualRole:Z

    const-string/jumbo v3, "UsbDeviceManager"

    const-string/jumbo v4, "Don\'t support dual_role"

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private AuditLog(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    const-string/jumbo v3, "content://com.sec.knox.provider/AuditLog"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "severity"

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "group"

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "outcome"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v3, "uid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "component"

    const-string/jumbo v4, "UsbDeviceManager"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "message"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Received USB event"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private appendStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileWriter;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    :try_start_0
    invoke-virtual {v0, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    throw v1
.end method

.method private applyOemOverrideFunction(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/HashMap;

    if-nez v4, :cond_1

    :cond_0
    return-object p1

    :cond_1
    const-string/jumbo v4, "ro.bootmode"

    const-string/jumbo v5, "unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "UsbDeviceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "applyOemOverride usbfunctions="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " bootmode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_6

    const-string/jumbo v4, "normal"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "unknown"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_0
    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    if-eqz v2, :cond_5

    const-string/jumbo v5, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "OEM USB override: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " ==> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " persist across reboot "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z

    if-eqz v4, :cond_4

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "adb"

    invoke-static {v4, v5}, Landroid/hardware/usb/UsbManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string/jumbo v4, "UsbDeviceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "OEM USB override persisting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "in prop: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    return-object v4

    :cond_3
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v4, "none"

    const-string/jumbo v5, "adb"

    invoke-static {v4, v5}, Landroid/hardware/usb/UsbManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z

    if-eqz v4, :cond_7

    const-string/jumbo v4, "none"

    const-string/jumbo v5, "adb"

    invoke-static {v4, v5}, Landroid/hardware/usb/UsbManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-object p1

    :cond_7
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private checkLogEnableAtKernel()V
    .locals 4

    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "/data/local/tmp/usbfwlog"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "!@"

    invoke-static {v2}, Lcom/android/server/utils/sysfwutil/Slog;->setKernelLogPrefix(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "UsbDeviceManager"

    const-string/jumbo v3, "!@UsbDeviceManager KERNEL_LOG_PREFIX is empty"

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCurrentSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getKnoxCustomUsbConnectionType()I
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x0

    const-string/jumbo v0, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "getUsbConnectionType"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "getUsbConnectionType"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getPersistProp(Z)Ljava/lang/String;
    .locals 4

    const-string/jumbo v2, "ro.bootmode"

    const-string/jumbo v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.usb.config"

    const-string/jumbo v2, "normal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "unknown"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    if-nez v2, :cond_0

    if-eqz p0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persist.sys.usb."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".func"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persist.sys.usb."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".config"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private hasDeviceRestriction(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "mtp_and_ptp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string/jumbo v1, "isUsbMediaPlayerAvailable"

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "false"

    aput-object v3, v2, v4

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager;->hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "mass_storage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string/jumbo v1, "isUsbMassStorageEnabled"

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "false"

    aput-object v3, v2, v4

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager;->hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    const-string/jumbo v0, "adb"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v1, "isUsbDebuggingEnabled"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager;->hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_2
    const-string/jumbo v0, "rndis"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v4

    :cond_3
    const-string/jumbo v0, "UsbDeviceManager"

    const-string/jumbo v1, "not define policy !!!"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, "UsbDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "policy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", restrict(allow) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "false"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v7

    const-string/jumbo v0, "UsbDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "policy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", return exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v7}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static initRndisAddress()V
    .locals 14

    const/4 v0, 0x6

    const/4 v9, 0x6

    new-array v3, v9, [I

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput v9, v3, v10

    const-string/jumbo v9, "ro.serialno"

    const-string/jumbo v10, "1234567890ABCDEF"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v8, :cond_0

    rem-int/lit8 v9, v5, 0x5

    add-int/lit8 v9, v9, 0x1

    aget v10, v3, v9

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    xor-int/2addr v10, v11

    aput v10, v3, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v10, "%02X:%02X:%02X:%02X:%02X:%02X"

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aget v12, v3, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x1

    aget v12, v3, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x2

    aget v12, v3, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const/4 v12, 0x3

    aget v12, v3, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const/4 v12, 0x4

    aget v12, v3, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x4

    aput-object v12, v11, v13

    const/4 v12, 0x5

    aget v12, v3, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x5

    aput-object v12, v11, v13

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    const-string/jumbo v9, "/sys/class/android_usb/android0/f_rndis_qc/ethaddr"

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v6, 0x1

    :cond_1
    const-string/jumbo v9, "UsbDeviceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "!@[UsbDeviceManager] Using QC RNDIS? ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v9, "/sys/class/android_usb/android0/f_rndis/ethaddr"

    invoke-static {v9, v2}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_2

    const-string/jumbo v9, "/sys/class/android_usb/android0/f_rndis_qc/ethaddr"

    invoke-static {v9, v2}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v4

    const-string/jumbo v9, "UsbDeviceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "failed to write to /sys/class/android_usb/android0/f_rndis/ethaddr ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_2

    const-string/jumbo v9, "UsbDeviceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "failed to write to /sys/class/android_usb/android0/f_rndis_qc/ethaddr ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static initYuvaDownloadable()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "downloadable_spowerplanning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static initYuvaFeature()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "powerplanning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "reserve"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isHiddenMenuAppRunningForeground()Z
    .locals 11

    const/4 v10, 0x0

    const-string/jumbo v3, "com.sec.hiddenmenu"

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v7, 0x7fffffff

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    const-string/jumbo v7, "ro.build.type"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    const-string/jumbo v7, "UsbDeviceManager"

    const-string/jumbo v8, "isHiddenMenuAppRunningForeground : tasks isn\'t avilable"

    invoke-static {v7, v8}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_1
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    const-string/jumbo v7, "eng"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "UsbDeviceManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isTelephonyAppRunningForeground: task.topActivity.getPackageName() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    return v7

    :cond_4
    return v10
.end method

.method private isTelephonyAppRunningForeground()Z
    .locals 11

    const/4 v10, 0x0

    const-string/jumbo v6, "com.sec.usbsettings"

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v7, 0x7fffffff

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    const-string/jumbo v7, "ro.build.type"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    const-string/jumbo v7, "UsbDeviceManager"

    const-string/jumbo v8, "isTelephonyAppRunningForeground : tasks isn\'t avilable"

    invoke-static {v7, v8}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_1
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    const-string/jumbo v7, "eng"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "UsbDeviceManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isTelephonyAppRunningForeground: task.topActivity.getPackageName() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    return v7

    :cond_4
    return v10
.end method

.method private isTv()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isUsbWet()Z
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "/sys/class/sec/ccic/water"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "UsbDeviceManager"

    const-string/jumbo v4, "USB_WATER_PATH is not exist!"

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "/sys/class/sec/ccic/water"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isUsbWet : read \'/sys/class/sec/ccic/water\', state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v1

    const-string/jumbo v3, "UsbDeviceManager"

    const-string/jumbo v4, "Error reading at isUsbWet()"

    invoke-static {v3, v4, v1}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v6
.end method

.method private native nativeGetAccessoryStrings()[Ljava/lang/String;
.end method

.method private native nativeGetAudioMode()I
.end method

.method private native nativeIsStartRequested()Z
.end method

.method private native nativeOpenAccessory()Landroid/os/ParcelFileDescriptor;
.end method

.method private readOemUsbOverrideConfig()V
    .locals 14

    const/4 v13, 0x2

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1070064

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    array-length v6, v1

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_5

    aget-object v0, v1, v4

    const-string/jumbo v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v7, v2

    if-eq v7, v12, :cond_0

    array-length v7, v2

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    :cond_0
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/HashMap;

    if-nez v7, :cond_1

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/HashMap;

    :cond_1
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/HashMap;

    aget-object v8, v2, v5

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/HashMap;

    aget-object v8, v2, v5

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    aget-object v7, v2, v11

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    array-length v7, v2

    if-ne v7, v12, :cond_4

    aget-object v7, v2, v11

    new-instance v8, Landroid/util/Pair;

    aget-object v9, v2, v13

    const-string/jumbo v10, ""

    invoke-direct {v8, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    aget-object v7, v2, v11

    new-instance v8, Landroid/util/Pair;

    aget-object v9, v2, v13

    aget-object v10, v2, v12

    invoke-direct {v8, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    return-void
.end method

.method private registerDeviceRestriction()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mMtpDisabledReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->ACTIONS_MTP_DISABLED_INTERNAL:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->PERMISSIONS_KNOX_MTP_DISABLED_INTERNAL:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mMtpDisabledReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->ACTIONS_MTP_DISABLED_INTERNAL:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->PERMISSIONS_KNOX_MTP_DISABLED_INTERNAL:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private showWaterUsbNoti(Z)V
    .locals 13

    const/16 v12, 0x2b

    const/4 v11, 0x1

    const/4 v10, 0x0

    const v5, 0x1040aec

    const/16 v0, 0x2b

    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v6, :cond_0

    const-string/jumbo v6, "UsbDeviceManager"

    const-string/jumbo v7, "showWaterUsbNoti : mNotificationManager is null"

    invoke-static {v6, v7}, Lcom/android/server/utils/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v6, "UsbDeviceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "showWaterUsbNoti : isShow "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/utils/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1040aec

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const v6, 0x1040aeb

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v7, 0x1080907

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const v8, 0x10601c2

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v6

    new-instance v7, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v7}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v7, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v10, v12, v2, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    const-string/jumbo v6, "UsbDeviceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "showWaterUsbNoti : notify id = 43, title = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v10, v12, v7}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto/16 :goto_0
.end method

.method private startAccessoryMode()V
    .locals 13

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mHasUsbAccessory:Z

    if-nez v6, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeGetAccessoryStrings()[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeGetAudioMode()I

    move-result v6

    if-ne v6, v8, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    aget-object v6, v6, v7

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    aget-object v6, v6, v8

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    :goto_1
    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    if-eqz v6, :cond_4

    const/4 v3, 0x0

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    array-length v9, v8

    move v6, v7

    move v4, v3

    :goto_2
    if-ge v6, v9, :cond_5

    aget-object v5, v8, v6

    const-string/jumbo v10, "UsbDeviceManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "startAccessoryMode["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "]="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/utils/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    move v4, v3

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const-string/jumbo v6, "UsbDeviceManager"

    const-string/jumbo v8, "startAccessoryMode mAccessoryStrings NULL"

    invoke-static {v6, v8}, Lcom/android/server/utils/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string/jumbo v6, "UsbDeviceManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startAccessoryMode enableAccessory "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",enableAudio "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/utils/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    const-string/jumbo v2, "accessory,audio_source"

    :cond_6
    :goto_3
    if-eqz v2, :cond_7

    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v10, 0x2710

    invoke-virtual {v6, v8, v10, v11}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-virtual {p0, v2, v7}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;Z)V

    :cond_7
    return-void

    :cond_8
    if-eqz v0, :cond_9

    const-string/jumbo v2, "accessory"

    goto :goto_3

    :cond_9
    if-eqz v1, :cond_6

    const-string/jumbo v2, "audio_source"

    goto :goto_3
.end method

.method private updateTimeStamp(Ljava/lang/String;)V
    .locals 8

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mEventWriterLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy/MM/dd/HH:mm"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "/data/log/wet_detect.log"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/android/server/usb/UsbDeviceManager;->appendStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v5

    return-void

    :catch_0
    move-exception v2

    :try_start_1
    const-string/jumbo v4, "UsbDeviceManager"

    const-string/jumbo v6, "failed to write to /data/log/wet_detect.log"

    invoke-static {v4, v6}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private validateDeviceRestriction(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    move-object v1, p1

    if-eqz p1, :cond_0

    const-string/jumbo v2, "adb"

    invoke-static {p1, v2}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "adb"

    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbDeviceManager;->hasDeviceRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "adb"

    invoke-static {p1, v2}, Landroid/hardware/usb/UsbManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method


# virtual methods
.method public allowUsbDebugging(ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDebuggingManager;->allowUsbDebugging(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bootCompleted()V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "UsbDeviceManager"

    const-string/jumbo v1, "boot completed"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {v0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->-wrap7(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)V

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->isUsbWet()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "UsbDeviceManager"

    const-string/jumbo v1, "This usb is wet in booting time."

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbDeviceManager;->showWaterUsbNoti(Z)V

    :cond_0
    return-void
.end method

.method public clearUsbDebuggingKeys()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDebuggingManager;->clearUsbDebuggingKeys()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot clear Usb Debugging keys, UsbDebuggingManager not enabled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public denyUsbDebugging()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDebuggingManager;->denyUsbDebugging()V

    :cond_0
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDebuggingManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    :cond_1
    return-void
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFunctions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getCurrentFunctions()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultFunction()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->-wrap2(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsbDisableVariable()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;

    return-object v0
.end method

.method public isFunctionEnabled(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "sys.usb.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUsb30Available()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->-wrap0(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Z

    move-result v0

    return v0
.end method

.method public isUsb30Enabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->-wrap1(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Z

    move-result v0

    return v0
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;Lcom/android/server/usb/UsbUserSettingsManager;)Landroid/os/ParcelFileDescriptor;
    .locals 4

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "no accessory attached"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbAccessory;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not match current accessory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {p2, p1}, Lcom/android/server/usb/UsbUserSettingsManager;->checkPermission(Landroid/hardware/usb/UsbAccessory;)V

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeOpenAccessory()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    return-object v2
.end method

.method public rmSetNextUsbModeToDefault()V
    .locals 2

    const-string/jumbo v0, "UsbDeviceManager"

    const-string/jumbo v1, "rmSetNextUsbModeToDefault"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mSetNextUsbModeToDefault:Z

    return-void
.end method

.method protected setCurrentFunctions(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x2

    const-string/jumbo v0, "UsbDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentFunctions("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, p1, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, p1, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;Z)V

    goto :goto_0
.end method

.method public setCurrentFunctions(Ljava/lang/String;Z)V
    .locals 3

    const-string/jumbo v0, "UsbDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentFunctions("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentFunctions()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "askon"

    invoke-static {v0, v1}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "mtp"

    invoke-static {p1, v0}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ptp"

    invoke-static {p1, v0}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const-string/jumbo v1, "DISCONNECTED"

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V

    const-string/jumbo v0, "UsbDeviceManager"

    const-string/jumbo v1, "Askon disconnected when setting function"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->isTelephonyAppRunningForeground()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->isHiddenMenuAppRunningForeground()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    const-string/jumbo v0, "mtp"

    invoke-static {p1, v0}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "UsbDeviceManager"

    const-string/jumbo v1, "Telephony App or HiddenMenu App set as MTP. So initialize the PROPERTY for QXDM"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "persist.sys.usb.q_config"

    const-string/jumbo v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;Z)V

    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->validateDeviceRestriction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "UsbDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "After validateDeviceRestriction when Telephony or HiddenMenu App sets : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "persist.sys.usb.q_config"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->validateDeviceRestriction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "UsbDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentFunctions - validateDeviceRestriction : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCurrentUser(ILcom/android/server/usb/UsbProfileGroupSettingsManager;)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p2, p0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setUsb30Mode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsb30Mode(Z)V

    return-void
.end method

.method public setUsbDisableVariable(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;

    return-void
.end method

.method public showUsbBlockToastbyUPSM()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/16 v1, 0xb

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    return-void
.end method

.method public showUsbBlockToastbyUPSMIntent()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    return-void
.end method

.method public systemReady()V
    .locals 7

    const/4 v2, 0x1

    const-string/jumbo v1, "UsbDeviceManager"

    const-string/jumbo v3, "systemReady"

    invoke-static {v1, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->isTv()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v3, Landroid/app/NotificationChannel;

    const-string/jumbo v4, "usbdevicemanager.adb.tv"

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const v6, 0x104008c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mUseUsbNotification:Z

    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "adb_enabled"

    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string/jumbo v1, "UsbDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "systemReady : mAdbEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mUseUsbNotification = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mUseUsbNotification:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "UsbDeviceManager"

    const-string/jumbo v2, "ADB_ENABLED is restricted."

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public updateUsbNotificationRefresh()V
    .locals 2

    const-string/jumbo v0, "UsbDeviceManager"

    const-string/jumbo v1, "updateUsbNotificationRefresh"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotificationRefresh()V

    return-void
.end method

.method public updateUserRestrictions()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendEmptyMessage(I)Z

    return-void
.end method

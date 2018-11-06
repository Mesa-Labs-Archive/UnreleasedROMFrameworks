.class public Lcom/samsung/android/server/wifi/WifiDefaultApController;
.super Ljava/lang/Object;
.source "WifiDefaultApController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;,
        Lcom/samsung/android/server/wifi/WifiDefaultApController$GeneralNetworkInfo;,
        Lcom/samsung/android/server/wifi/WifiDefaultApController$RemovedVendorAp;
    }
.end annotation


# static fields
.field private static final ACTION_ATT_RESET:Ljava/lang/String; = "com.samsung.intent.action.SETTINGS_RESET_WIFI"

.field private static final ACTION_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final ACTION_CSC_WIFI_DEFAULTAP_DONE:Ljava/lang/String; = "com.samsung.intent.action.CSC_WIFI_DEFAULTAP_DONE"

.field private static final ACTION_SIM_STATE_CHANGE:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final NEED_GID:Z

.field private static final REMOVABLE_DEFAULT_AP:Z

.field private static final REQUEST_DONE:I = 0x3

.field private static final REQUEST_FROM_CSC:I = 0x1

.field private static final REQUEST_FROM_REBOOT:I = 0x0

.field private static final REQUEST_FROM_SIM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WifiDefaultApController"

.field private static final invalidState:[Ljava/lang/String;

.field private static mFilePathDefaultAp:Ljava/io/File;

.field private static mFilePathGeneralNwInfo:Ljava/io/File;

.field private static mFilePathRemovedNwInfo:Ljava/io/File;

.field private static mNeedtoAddVendorAp:I

.field private static final requestStrings:[Ljava/lang/String;

.field private static final simStateStrings:[Ljava/lang/String;


# instance fields
.field private final LocalLogSize:I

.field private bLockedBootComplete:Z

.field private final mContext:Landroid/content/Context;

.field private mDefinedVedorApList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;",
            ">;"
        }
    .end annotation
.end field

.field private mGeneralNwInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/server/wifi/WifiDefaultApController$GeneralNetworkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mRemovedVedorApList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/server/wifi/WifiDefaultApController$RemovedVendorAp;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private matchedNetworkName:Ljava/lang/String;

.field private mccmncOfSim:Ljava/lang/String;

.field private previousSimState:I

.field private toAddConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private toBeDeletedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->bLockedBootComplete:Z

    return v0
.end method

.method static synthetic -get1()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mFilePathDefaultAp:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get2()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mFilePathGeneralNwInfo:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get3()I
    .locals 1

    sget v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mNeedtoAddVendorAp:I

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mccmncOfSim:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/server/wifi/WifiDefaultApController;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->previousSimState:I

    return v0
.end method

.method static synthetic -get6()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->simStateStrings:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/server/wifi/WifiDefaultApController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->bLockedBootComplete:Z

    return p1
.end method

.method static synthetic -set1(I)I
    .locals 0

    sput p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mNeedtoAddVendorAp:I

    return p0
.end method

.method static synthetic -set2(Lcom/samsung/android/server/wifi/WifiDefaultApController;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->previousSimState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/server/wifi/WifiDefaultApController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->readDefaultApAndCopytoConfig()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/server/wifi/WifiDefaultApController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->removeApSimChange()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/server/wifi/WifiDefaultApController;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->removeVendorApfromConfig(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/misc/wifi/default_ap.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mFilePathDefaultAp:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/misc/wifi/removed_nw.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mFilePathRemovedNwInfo:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/misc/wifi/generalinfo_nw.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mFilePathGeneralNwInfo:Ljava/io/File;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "REQUEST_FROM_REBOOT"

    aput-object v1, v0, v3

    const-string/jumbo v1, "REQUEST_FROM_CSC"

    aput-object v1, v0, v4

    const-string/jumbo v1, "REQUEST_FROM_SIM"

    aput-object v1, v0, v5

    const-string/jumbo v1, "REQUEST_DONE"

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->requestStrings:[Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "SIM_STATE_UNKNOWN"

    aput-object v1, v0, v3

    const-string/jumbo v1, "SIM_STATE_ABSENT"

    aput-object v1, v0, v4

    const-string/jumbo v1, "SIM_STATE_PIN_REQUIRED"

    aput-object v1, v0, v5

    const-string/jumbo v1, "SIM_STATE_PUK_REQUIRED"

    aput-object v1, v0, v2

    const-string/jumbo v1, "SIM_STATE_NETWORK_LOCKED"

    aput-object v1, v0, v6

    const-string/jumbo v1, "SIM_STATE_READY"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "SIM_STATE_NOT_READY"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "SIM_STATE_PERM_DISABLED"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "SIM_STATE_CARD_IO_ERROR"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "SIM_STATE_CARD_RESTRICTED"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "SIM_STATE_PERSO_LOCKED"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "SIM_STATE_NETWORK_SUBSET_LOCKED"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "SIM_STATE_SIM_SERVICE_PROVIDER_LOCKED"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "SIM_STATE_DETECTED"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->simStateStrings:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "InitialState"

    aput-object v1, v0, v3

    const-string/jumbo v1, "SupplicantStartingState"

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->invalidState:[Ljava/lang/String;

    sput v3, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mNeedtoAddVendorAp:I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_RemovableDefaultAP"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->REMOVABLE_DEFAULT_AP:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_SupportGid"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->NEED_GID:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 3

    const/16 v2, 0x100

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->LocalLogSize:I

    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->bLockedBootComplete:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefinedVedorApList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mRemovedVedorApList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->toBeDeletedList:Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->matchedNetworkName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mccmncOfSim:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->previousSimState:I

    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    iput-object p3, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v0, Landroid/util/LocalLog;

    invoke-direct {v0, v2}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mLocalLog:Landroid/util/LocalLog;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->registerCscIntent()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->registerSimChangeIntent()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->registerAttReset()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->registerScanCompleteEvent()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->registerActionLockedBootComplete()V

    return-void
.end method

.method private CopyDefaultApToConfig()V
    .locals 18

    const-string/jumbo v13, "WifiDefaultApController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "CopyDefaultApToConfig: mNeedtoAddVendorAp ( "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/server/wifi/WifiDefaultApController;->requestStrings:[Ljava/lang/String;

    sget v16, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mNeedtoAddVendorAp:I

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " ) "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiServiceImpl;->getConfiguredNetworks()Landroid/content/pm/ParceledListSlice;

    move-result-object v12

    const/4 v6, 0x0

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v6

    :cond_0
    const/4 v9, 0x0

    sget v13, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mNeedtoAddVendorAp:I

    const/4 v14, 0x3

    if-ge v13, v14, :cond_10

    sget-object v13, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mFilePathDefaultAp:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_10

    sget-object v13, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mFilePathDefaultAp:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-lez v13, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->toBeDeletedList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    sget v13, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mNeedtoAddVendorAp:I

    const/4 v14, 0x3

    if-ge v13, v14, :cond_2

    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-boolean v13, v4, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->toBeDeletedList:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->toBeDeletedList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->toBeDeletedList:Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->toAddConfigList:Ljava/util/List;

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->toAddConfigList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->toAddConfigList:Ljava/util/List;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->equalTwoConfig(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v9, 0x1

    goto :goto_2

    :cond_5
    if-nez v9, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->removeVendorApfromConfig(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_1

    :cond_6
    if-eqz v6, :cond_a

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    const/4 v9, 0x0

    iget-boolean v13, v4, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-eqz v13, :cond_7

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->toAddConfigList:Ljava/util/List;

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->toAddConfigList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->toAddConfigList:Ljava/util/List;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->equalTwoConfig(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v13

    if-eqz v13, :cond_9

    const-string/jumbo v13, "WifiDefaultApController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " is already saved"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    :cond_8
    if-eqz v9, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->toAddConfigList:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_a
    sget-boolean v13, Lcom/samsung/android/server/wifi/WifiDefaultApController;->REMOVABLE_DEFAULT_AP:Z

    if-eqz v13, :cond_e

    const/4 v10, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mRemovedVedorApList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v10, v13, :cond_e

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->toAddConfigList:Ljava/util/List;

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->toAddConfigList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->toAddConfigList:Ljava/util/List;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget-object v14, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mRemovedVedorApList:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/server/wifi/WifiDefaultApController$RemovedVendorAp;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/WifiDefaultApController$RemovedVendorAp;->-get2(Lcom/samsung/android/server/wifi/WifiDefaultApController$RemovedVendorAp;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    iget-object v13, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v14, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/android/server/wifi/util/StringUtil;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mRemovedVedorApList:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/server/wifi/WifiDefaultApController$RemovedVendorAp;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/WifiDefaultApController$RemovedVendorAp;->-get1(Lcom/samsung/android/server/wifi/WifiDefaultApController$RemovedVendorAp;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-static {v2}, Lcom/android/server/wifi/util/StringUtil;->makeStringEapMethod(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mRemovedVedorApList:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/server/wifi/WifiDefaultApController$RemovedVendorAp;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/WifiDefaultApController$RemovedVendorAp;->-get0(Lcom/samsung/android/server/wifi/WifiDefaultApController$RemovedVendorAp;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const-string/jumbo v13, "WifiDefaultApController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " was removed by user."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    :cond_b
    if-eqz v9, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->toAddConfigList:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    :cond_e
    const/4 v13, 0x3

    sput v13, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mNeedtoAddVendorAp:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->toAddConfigList:Ljava/util/List;

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->toAddConfigList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->toAddConfigList:Ljava/util/List;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->addVendorAP(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_7

    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiStateMachine;->resetPeriodicScanTimer()V

    :cond_10
    return-void
.end method

.method private addVendorAP(Landroid/net/wifi/WifiConfiguration;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v1, "WifiDefaultApController"

    const-string/jumbo v2, "addVendorAP - config is null"

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->logi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->removeSimilarAp(Landroid/net/wifi/WifiConfiguration;)V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiServiceImpl;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    const-string/jumbo v1, "WifiDefaultApController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addVendorAP  SSID ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " )  netId ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ), Kmgmt ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v4, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/wifi/util/StringUtil;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ), EAP ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/wifi/util/StringUtil;->makeStringEapMethod(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v1, v0, v5}, Lcom/android/server/wifi/WifiServiceImpl;->enableNetwork(IZ)Z

    const-string/jumbo v1, "WifiDefaultApController"

    const-string/jumbo v2, "is added"

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->logi(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    sput v5, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mNeedtoAddVendorAp:I

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->startScan()V

    const-string/jumbo v1, "WifiDefaultApController"

    const-string/jumbo v2, "addVendorAP error"

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getMatchedNetworkNameUsingSIM()Ljava/lang/String;
    .locals 12

    const/4 v11, 0x5

    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    const-string/jumbo v8, "gsm.sim.operator.numeric"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mccmncOfSim:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v8, "WifiDefaultApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getMatchedNetworkNameUsingSIM: SIM info: MCCMNC = ( "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mccmncOfSim:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " )  gid = ( "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " )"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v8

    if-eq v8, v11, :cond_0

    const-string/jumbo v8, "WifiDefaultApController"

    const-string/jumbo v9, "getMatchedNetworkNameUsingSIM: SIM satus is not SIM_STATE_READY"

    invoke-virtual {p0, v8, v9}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, ""

    return-object v8

    :cond_0
    const-string/jumbo v8, ""

    iget-object v9, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mccmncOfSim:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "WifiDefaultApController"

    const-string/jumbo v9, "getMatchedNetworkNameUsingSIM: gsm.sim.operator.numeric is empty"

    invoke-virtual {p0, v8, v9}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v8

    if-ne v8, v11, :cond_1

    const/4 v8, 0x2

    sput v8, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mNeedtoAddVendorAp:I

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->startScan()V

    :cond_1
    const-string/jumbo v8, ""

    return-object v8

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_7

    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/server/wifi/WifiDefaultApController$GeneralNetworkInfo;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/WifiDefaultApController$GeneralNetworkInfo;->-get0(Lcom/samsung/android/server/wifi/WifiDefaultApController$GeneralNetworkInfo;)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/server/wifi/WifiDefaultApController$GeneralNetworkInfo;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/WifiDefaultApController$GeneralNetworkInfo;->-get1(Lcom/samsung/android/server/wifi/WifiDefaultApController$GeneralNetworkInfo;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/server/wifi/WifiDefaultApController$GeneralNetworkInfo;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/WifiDefaultApController$GeneralNetworkInfo;->-get2(Lcom/samsung/android/server/wifi/WifiDefaultApController$GeneralNetworkInfo;)Ljava/lang/String;

    move-result-object v7

    if-eqz v5, :cond_5

    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mccmncOfSim:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    sget-boolean v8, Lcom/samsung/android/server/wifi/WifiDefaultApController;->NEED_GID:Z

    if-eqz v8, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_3

    const-string/jumbo v8, "WifiDefaultApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getMatchedNetworkNameUsingSIM: GID is mismatch with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, ""

    return-object v8

    :cond_3
    sget-boolean v8, Lcom/samsung/android/server/wifi/WifiDefaultApController;->NEED_GID:Z

    if-eqz v8, :cond_4

    const-string/jumbo v8, "WifiDefaultApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "GID is true and SubsetCode of customer file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "  and gid value "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->logi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v8, ""

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    if-eqz v6, :cond_5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    const-string/jumbo v8, "WifiDefaultApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getMatchedNetworkNameUsingSIM: mMatchedNetworkName = ( "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " )"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->logi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private makeDefaultAptoWifiConfigList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefinedVedorApList:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;

    sget-object v4, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mFilePathGeneralNwInfo:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;->-get1(Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->matchedNetworkName:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;->-get1(Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    const-string/jumbo v4, "WifiDefaultApController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "makeDefaultAptoWifiConfigList: mismatch network name ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->matchedNetworkName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ) and ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;->-get1(Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ) of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;->-get0(Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->logv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;->createWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v4, "WifiDefaultApController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Parsed Configuration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->logv(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    return-object v3
.end method

.method private readDefaultApAndCopytoConfig()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->invalidState:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WifiDefaultApController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WifiStateMachine is in : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->loge(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->readDefaultApFile()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v2, 0x3

    sput v2, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mNeedtoAddVendorAp:I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->readGeneralNwInfoFile()Z

    move-result v1

    const-string/jumbo v2, "WifiDefaultApController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " === useSIM ====   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->getMatchedNetworkNameUsingSIM()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->matchedNetworkName:Ljava/lang/String;

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->readRemovedNwInfoFile()V

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->makeDefaultAptoWifiConfigList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->toAddConfigList:Ljava/util/List;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->CopyDefaultApToConfig()V

    return-void
.end method

.method private readDefaultApFile()Z
    .locals 10

    sget-object v6, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mFilePathDefaultAp:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "WifiDefaultApController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "readDefaultApFile: file ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mFilePathDefaultAp:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") is not founded."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    return v6

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefinedVedorApList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    sget-object v7, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mFilePathDefaultAp:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->ready()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string/jumbo v6, "WifiDefaultApController"

    const-string/jumbo v7, "Default AP Info: "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "network"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v1}, Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;->parsingNetworkBlock(Ljava/io/BufferedReader;)Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefinedVedorApList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v1

    :goto_1
    :try_start_2
    const-string/jumbo v6, "WifiDefaultApController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "readDefaultApFile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    const-string/jumbo v6, "WifiDefaultApController"

    const-string/jumbo v7, " === readDefaultApFile THE END ==== "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    return v6

    :cond_3
    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    :goto_3
    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v2

    const-string/jumbo v6, "WifiDefaultApController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "readDefaultApFile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v2

    const-string/jumbo v6, "WifiDefaultApController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "readDefaultApFile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v0, :cond_5

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_5
    throw v6

    :catch_3
    move-exception v2

    const-string/jumbo v7, "WifiDefaultApController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "readDefaultApFile: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catchall_1
    move-exception v6

    move-object v0, v1

    goto :goto_4

    :catch_4
    move-exception v2

    goto/16 :goto_1
.end method

.method private readGeneralNwInfoFile()Z
    .locals 10

    sget-object v6, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mFilePathGeneralNwInfo:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "WifiDefaultApController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "readGeneralNwInfoFile: file ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mFilePathGeneralNwInfo:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") is not founded."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    return v6

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    sget-object v7, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mFilePathGeneralNwInfo:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->ready()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string/jumbo v6, "WifiDefaultApController"

    const-string/jumbo v7, "General Network Info: "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "network"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController$GeneralNetworkInfo;->parsingNetworkBlock(Ljava/io/BufferedReader;)Lcom/samsung/android/server/wifi/WifiDefaultApController$GeneralNetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_2
    const-string/jumbo v6, "WifiDefaultApController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "readGeneralNwInfoFile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    const-string/jumbo v6, "WifiDefaultApController"

    const-string/jumbo v7, " === readGeneralNwInfoFile THE END ==== "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    return v6

    :cond_3
    if-eqz v2, :cond_4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    :goto_3
    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception v0

    const-string/jumbo v6, "WifiDefaultApController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "readGeneralNwInfoFile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v0

    const-string/jumbo v6, "WifiDefaultApController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "readGeneralNwInfoFile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v1, :cond_5

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_5
    throw v6

    :catch_3
    move-exception v0

    const-string/jumbo v7, "WifiDefaultApController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "readGeneralNwInfoFile: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catchall_1
    move-exception v6

    move-object v1, v2

    goto :goto_4

    :catch_4
    move-exception v0

    goto/16 :goto_1
.end method

.method private readRemovedNwInfoFile()V
    .locals 12

    sget-object v8, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mFilePathRemovedNwInfo:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "WifiDefaultApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "readGeneralNwInfoFile: file ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mFilePathRemovedNwInfo:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ") is not founded."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->loge(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v8, "WifiDefaultApController"

    const-string/jumbo v9, "readRemovedNwInfoFile"

    invoke-virtual {p0, v8, v9}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->logi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mRemovedVedorApList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    sget-object v9, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mFilePathRemovedNwInfo:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string/jumbo v8, "WifiDefaultApController"

    const-string/jumbo v9, "readRemovedNwInfoFile - removedApStream.readLine() is null"

    invoke-virtual {p0, v8, v9}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_1

    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v8, "WifiDefaultApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "readRemovedNwInfoFile - IOException 2 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_3
    const-string/jumbo v8, "version=1"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_3
    :goto_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->ready()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string/jumbo v8, "network"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/samsung/android/server/wifi/WifiDefaultApController$RemovedVendorAp;->parsingNetworkBlock(Ljava/io/BufferedReader;)Lcom/samsung/android/server/wifi/WifiDefaultApController$RemovedVendorAp;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mRemovedVedorApList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v5, v6

    :goto_2
    :try_start_4
    const-string/jumbo v8, "WifiDefaultApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "readRemovedNwInfoFile - IOException 1 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_4

    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_3
    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mRemovedVedorApList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v7, :cond_8

    const-string/jumbo v9, "WifiDefaultApController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "readRemovedNwInfoFile["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "]: ssid("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mRemovedVedorApList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/server/wifi/WifiDefaultApController$RemovedVendorAp;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/WifiDefaultApController$RemovedVendorAp;->-get2(Lcom/samsung/android/server/wifi/WifiDefaultApController$RemovedVendorAp;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    if-eqz v6, :cond_6

    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_6
    :goto_5
    move-object v5, v6

    goto :goto_3

    :catch_2
    move-exception v1

    const-string/jumbo v8, "WifiDefaultApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "readRemovedNwInfoFile - IOException 2 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_3
    move-exception v1

    const-string/jumbo v8, "WifiDefaultApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "readRemovedNwInfoFile - IOException 2 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catchall_0
    move-exception v8

    :goto_6
    if-eqz v5, :cond_7

    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_7
    :goto_7
    throw v8

    :catch_4
    move-exception v1

    const-string/jumbo v9, "WifiDefaultApController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "readRemovedNwInfoFile - IOException 2 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_8
    return-void

    :catchall_1
    move-exception v8

    move-object v5, v6

    goto :goto_6

    :catch_5
    move-exception v0

    goto/16 :goto_2
.end method

.method private registerActionLockedBootComplete()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/WifiDefaultApController$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$5;-><init>(Lcom/samsung/android/server/wifi/WifiDefaultApController;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerAttReset()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/WifiDefaultApController$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$3;-><init>(Lcom/samsung/android/server/wifi/WifiDefaultApController;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.samsung.intent.action.SETTINGS_RESET_WIFI"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerCscIntent()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/WifiDefaultApController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$1;-><init>(Lcom/samsung/android/server/wifi/WifiDefaultApController;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.samsung.intent.action.CSC_WIFI_DEFAULTAP_DONE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerScanCompleteEvent()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/WifiDefaultApController$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$4;-><init>(Lcom/samsung/android/server/wifi/WifiDefaultApController;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerSimChangeIntent()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/WifiDefaultApController$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$2;-><init>(Lcom/samsung/android/server/wifi/WifiDefaultApController;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private removeApSimChange()V
    .locals 4

    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefinedVedorApList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefinedVedorApList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefinedVedorApList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;->-get1(Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;->createWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->removeVendorApfromConfig(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeFile()V
    .locals 2

    sget-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mFilePathDefaultAp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiDefaultApController"

    const-string/jumbo v1, "delete default_ap.conf file"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->logd(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mFilePathDefaultAp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private removeSimilarAp(Landroid/net/wifi/WifiConfiguration;)V
    .locals 10

    iget-object v7, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiServiceImpl;->getConfiguredNetworks()Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    const/4 v2, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    const-string/jumbo v7, "WifiDefaultApController"

    const-string/jumbo v8, "removeSimilarAp - config is null"

    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->logi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v6, -0x1

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v8, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/server/wifi/util/StringUtil;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v8, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/server/wifi/util/StringUtil;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "WifiDefaultApController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "keymgmt1 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->logi(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "WifiDefaultApController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "keymgmt2 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->logi(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "FT-EAP"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "WPA-EAP"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    const-string/jumbo v7, "FT-EAP"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "WPA-EAP"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_4
    const-string/jumbo v7, "WifiDefaultApController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " and "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is different. But we regard as same AP."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->logi(Ljava/lang/String;Ljava/lang/String;)V

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    :cond_5
    const/4 v7, -0x1

    if-eq v6, v7, :cond_6

    iget-object v7, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v7, v6}, Lcom/android/server/wifi/WifiServiceImpl;->removeNetwork(I)Z

    :cond_6
    return-void
.end method

.method private removeVendorApfromConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 10

    const/4 v9, 0x0

    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiServiceImpl;->getConfiguredNetworks()Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    const/4 v2, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    :cond_0
    const/4 v5, 0x0

    if-eqz p1, :cond_3

    const-string/jumbo v6, "WifiDefaultApController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeVendorApfromConfig: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->logi(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->equalTwoConfig(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_1

    :cond_2
    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-eqz v6, :cond_1

    iput-boolean v9, v0, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    iget-object v6, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v6, v0}, Lcom/android/server/wifi/WifiServiceImpl;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    const-string/jumbo v6, "WifiDefaultApController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeVendorWifiProfile: remove WifiConfig profile ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiServiceImpl;->removeNetwork(I)Z

    move-result v5

    goto :goto_1

    :cond_3
    const-string/jumbo v6, "WifiDefaultApController"

    const-string/jumbo v7, "removeVendorApfromConfig ALL"

    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "==== WifiDefaultAp Dump ===="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->getInstance()Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public equalTwoConfig(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v5, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    return v6

    :cond_0
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v5, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/wifi/util/StringUtil;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v5, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/wifi/util/StringUtil;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    return v6

    :cond_1
    invoke-static {p1}, Lcom/android/server/wifi/util/StringUtil;->makeStringEapMethod(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/wifi/util/StringUtil;->makeStringEapMethod(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    return v6

    :cond_2
    const/4 v4, 0x1

    return v4
.end method

.method public factoryReset()V
    .locals 2

    const-string/jumbo v0, "WifiDefaultApController"

    const-string/jumbo v1, "factoryReset"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->logi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->removeVendorApfromConfig(Landroid/net/wifi/WifiConfiguration;)V

    sget-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mFilePathRemovedNwInfo:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiDefaultApController"

    const-string/jumbo v1, "delete:  removed_nw.conf "

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->logi(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mFilePathRemovedNwInfo:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mNeedtoAddVendorAp:I

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->readDefaultApAndCopytoConfig()V

    return-void
.end method

.method protected logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected logi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected logv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public startScan()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiEnabledState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    const-string/jumbo v1, "WifiDefaultApController"

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/server/wifi/WifiServiceImpl;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

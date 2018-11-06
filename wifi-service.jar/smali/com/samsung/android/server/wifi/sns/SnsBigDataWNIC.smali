.class public Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;
.super Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;
.source "SnsBigDataWNIC.java"


# static fields
.field public static final KEY_FRONT_PACKAGE_NAME:Ljava/lang/String; = "Wfpn"

.field public static final KEY_FRONT_PACKAGE_NETWORKCAPABILITIES_INTERNET:Ljava/lang/String; = "Wfci_i"

.field public static final KEY_FRONT_PACKAGE_NETWORKTRANSPORT_WIFI:Ljava/lang/String; = "Wftw_i"

.field public static final KEY_FRONT_PACKAGE_USED_TIME:Ljava/lang/String; = "Wfut_i"

.field public static final KEY_IS_MANUALLY_CONNECTED:Ljava/lang/String; = "Wimc_i"

.field public static final KEY_POP_UP_HOLDING_TIME:Ljava/lang/String; = "Wpht_i"

.field public static final KEY_PREVIOUS_PACKAGE_NAME:Ljava/lang/String; = "Wpfp"

.field public static final KEY_PREVIOUS_PACKAGE_NETWORKCAPABILITIES_INTERNET:Ljava/lang/String; = "Wpci_i"

.field public static final KEY_PREVIOUS_PACKAGE_NETWORKTRANSPORT_WIFI:Ljava/lang/String; = "Wptw_i"

.field public static final KEY_PREVIOUS_PACKAGE_USED_TIME:Ljava/lang/String; = "Wput_i"

.field public static final KEY_VERSION_OF_WNIC_FEATURE:Ljava/lang/String; = "Wbfv"

.field public static final KEY_WIFI_NO_INTERNET_EVENT:Ljava/lang/String; = "Wnie_i"

.field public static final KEY_WIFI_POOR_AP_OUI:Ljava/lang/String; = "Woui"

.field public static final KEY_WIFI_RSSI_STRENGTH:Ljava/lang/String; = "Wrsi_i"

.field private static final SNSverBasedOnDate:Ljava/lang/String; = "20171201"

.field public static frontAppearedTime:J

.field private static mDataArray:[[Ljava/lang/String;

.field public static mLock:Ljava/lang/Object;

.field private static mSnsVers:Ljava/lang/String;

.field public static prevAppearedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;->mSnsVers:Ljava/lang/String;

    sput-wide v6, Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;->prevAppearedTime:J

    sput-wide v6, Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;->frontAppearedTime:J

    const/16 v0, 0xe

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "Wbfv"

    aput-object v2, v1, v3

    const-string/jumbo v2, "2017120126"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "Wnie_i"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "Woui"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "Wpht_i"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "Wimc_i"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "Wrsi_i"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "Wfpn"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "Wpfp"

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "Wfci_i"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "Wftw_i"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "Wpci_i"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "Wptw_i"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "Wfut_i"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "Wput_i"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;->mDataArray:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;-><init>()V

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;->mSnsVers:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;->setSNSver()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;->init()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;-><init>(ZLjava/lang/String;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;->mSnsVers:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;->setSNSver()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;->init()V

    return-void
.end method

.method public static setSNSver()Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;->mSnsVers:Ljava/lang/String;

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "20171201"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;->mSnsVers:Ljava/lang/String;

    :cond_0
    sget-object v1, Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;->mDataArray:[[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;->mSnsVers:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v1, Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;->mSnsVers:Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public getJsonFormat()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;->setSNSver()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    sget-object v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;->mDataArray:[[Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;->DBG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getJsonFormat - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;->init()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;->DBG:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception occured on getJsonFormat - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public init()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;->mLock:Ljava/lang/Object;

    return-void
.end method

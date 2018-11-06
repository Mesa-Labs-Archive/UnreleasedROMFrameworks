.class public Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;
.super Ljava/lang/Object;
.source "SnsBigDataManager.java"


# static fields
.field private static final ACTION_USE_APP_FEATURE_SURVEY:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

.field private static final ACTION_USE_MULTI_APP_FEATURE_SURVEY:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

.field private static final ARGS_APP_ID_STR:Ljava/lang/String; = "app_id"

.field private static final ARGS_DATA_STR:Ljava/lang/String; = "data"

.field private static final ARGS_EXTRA_STR:Ljava/lang/String; = "extra"

.field private static final ARGS_FEATURE_NAME:Ljava/lang/String; = "feature"

.field private static final ARGS_VALUE_STR:Ljava/lang/String; = "value"

.field private static DBG:Z = false

.field public static final ENABLE_SURVEY_MODE:Z

.field public static final ENABLE_UNIFIED_HQM_SERVER:Z = true

.field public static final FEATURE_SSIV:Ljava/lang/String; = "SSIV"

.field public static final FEATURE_SSMA:Ljava/lang/String; = "SSMA"

.field public static final FEATURE_SSVI:Ljava/lang/String; = "SSVI"

.field public static final FEATURE_TCPE:Ljava/lang/String; = "TCPE"

.field public static final FEATURE_WFCP:Ljava/lang/String; = "WFCP"

.field public static final FEATURE_WFMH:Ljava/lang/String; = "WFMH"

.field public static final FEATURE_WFQC:Ljava/lang/String; = "WFQC"

.field public static final FEATURE_WFSN:Ljava/lang/String; = "WFSN"

.field public static final FEATURE_WNIC:Ljava/lang/String; = "WNIC"

.field private static final PACKAGE_NAME_SURVEY:Ljava/lang/String; = "com.samsung.android.providers.context"

.field private static SMART_CM:Z = false

.field private static final TAG:Ljava/lang/String; = "SnsBigDataManager"


# instance fields
.field public final APP_ID:Ljava/lang/String;

.field public final mBigDataFeatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mSemHqmManager:Landroid/os/SemHqmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->DBG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->SMART_CM:Z

    const-string/jumbo v0, "TRUE"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->ENABLE_SURVEY_MODE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "android.net.wifi"

    iput-object v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->APP_ID:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "HqmManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "WFCP"

    new-instance v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataWFCP;

    invoke-direct {v2}, Lcom/samsung/android/server/wifi/sns/SnsBigDataWFCP;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "SSMA"

    new-instance v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;

    invoke-direct {v2}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "WFSN"

    new-instance v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataWFSN;

    const-string/jumbo v3, "WWSN"

    invoke-direct {v2, v4, v3}, Lcom/samsung/android/server/wifi/sns/SnsBigDataWFSN;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "WFQC"

    new-instance v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataWFQC;

    invoke-direct {v2}, Lcom/samsung/android/server/wifi/sns/SnsBigDataWFQC;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "SSVI"

    new-instance v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSSVI;

    invoke-direct {v2}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSSVI;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "SSIV"

    new-instance v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataSSIV;

    invoke-direct {v2}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSSIV;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "WFMH"

    new-instance v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataWFMH;

    invoke-direct {v2}, Lcom/samsung/android/server/wifi/sns/SnsBigDataWFMH;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "TCPE"

    new-instance v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;

    invoke-direct {v2}, Lcom/samsung/android/server/wifi/sns/SnsBigDataTCPE;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "WNIC"

    new-instance v2, Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;

    const-string/jumbo v3, "NIAC"

    invoke-direct {v2, v4, v3}, Lcom/samsung/android/server/wifi/sns/SnsBigDataWNIC;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private sendBroadcastToContextFramework(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    sget-boolean v3, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SnsBigDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendBroadcastToContextFramework - feature : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", extra : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    sget-boolean v3, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->ENABLE_SURVEY_MODE:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "SnsBigDataManager"

    const-string/jumbo v4, "survey mode is not enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    if-nez p1, :cond_4

    sget-boolean v3, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->DBG:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "SnsBigDataManager"

    const-string/jumbo v4, "feature is not enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "app_id"

    const-string/jumbo v4, "android.net.wifi"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "feature"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7b

    if-ne v3, v4, :cond_7

    const-string/jumbo v3, "extra"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    const-wide/16 v4, -0x1

    cmp-long v3, p3, v4

    if-eqz v3, :cond_6

    const-string/jumbo v3, "value"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "data"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.providers.context"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_1
    return-void

    :cond_7
    const-string/jumbo v3, "extra"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "SnsBigDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception occured on sendBroadcastToContextFramework:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private sendBroadcastToContextFramework([Ljava/lang/String;[Ljava/lang/String;[J)V
    .locals 8

    :try_start_0
    sget-boolean v4, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->DBG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "SnsBigDataManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendBroadcastToContextFramework - features : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", extras : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", values : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v4, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->ENABLE_SURVEY_MODE:Z

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->DBG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "SnsBigDataManager"

    const-string/jumbo v5, "survey mode is not enabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    if-nez p1, :cond_4

    sget-boolean v4, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->DBG:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "SnsBigDataManager"

    const-string/jumbo v5, "feature is not enabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    array-length v4, p2

    new-array v1, v4, [Landroid/content/ContentValues;

    const/4 v3, 0x0

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_8

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    aput-object v4, v1, v3

    aget-object v4, v1, v3

    const-string/jumbo v5, "app_id"

    const-string/jumbo v6, "android.net.wifi"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, v1, v3

    const-string/jumbo v5, "feature"

    aget-object v6, p1, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, p2, v3

    if-eqz v4, :cond_5

    aget-object v4, p2, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    aget-object v4, p2, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7b

    if-ne v4, v5, :cond_7

    aget-object v4, v1, v3

    const-string/jumbo v5, "extra"

    aget-object v6, p2, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    aget-wide v4, p3, v3

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    aget-object v4, v1, v3

    const-string/jumbo v5, "value"

    aget-wide v6, p3, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    aget-object v4, v1, v3

    const-string/jumbo v5, "extra"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p2, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v4, "SnsBigDataManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception occured on sendBroadcastToContextFramework:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void

    :cond_8
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "data"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.providers.context"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private sendHWParamToHQMwithAppId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->DBG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "SnsBigDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "send H/W Parameters to HQM with appid - feature : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, ", logmaps : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x0

    const-string/jumbo v2, "WiFi"

    const-string/jumbo v4, "sm"

    const-string/jumbo v7, ""

    invoke-static {}, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->getChipsetName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->getCidInfo()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, ""

    iget-object v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    const-string/jumbo v10, "android.net.wifi"

    move-object v3, p1

    move-object v8, p2

    invoke-virtual/range {v0 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQMwithAppId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public addOrUpdateFeatureAllValue(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;->addOrUpdateAllValue()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;D)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;

    invoke-virtual {v0, p2, p3, p4}, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;->addOrUpdateValue(Ljava/lang/String;D)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;

    invoke-virtual {v0, p2, p3, p4}, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;->addOrUpdateValue(Ljava/lang/String;J)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;->addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addOrUpdateFeatureValue(Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;->addOrUpdateValues(Ljava/util/HashMap;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearAllFeatures()Z
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;->resetData()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public clearFeature(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;->resetData()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBigDataFeature(Ljava/lang/String;)Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public insertLog(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->insertLog(Ljava/lang/String;J)V

    return-void
.end method

.method public insertLog(Ljava/lang/String;J)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;->getJsonFormat()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;->getIsDqaEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;->getDqaFeatureName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;->getDqaFeatureName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->sendHWParamToHQMwithAppId(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->sendBroadcastToContextFramework(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->sendHWParamToHQMwithAppId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public insertLog(Ljava/lang/String;Z)V
    .locals 6

    if-eqz p2, :cond_2

    iget-object v4, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;->getJsonFormatArray()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v4, v0

    new-array v1, v4, [Ljava/lang/String;

    array-length v4, v0

    new-array v3, v4, [J

    const/4 v2, 0x0

    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    aput-object p1, v1, v2

    const-wide/16 v4, -0x1

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1, v0, v3}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->sendBroadcastToContextFramework([Ljava/lang/String;[Ljava/lang/String;[J)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->insertLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public insertLog(Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 6

    sget-boolean v3, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->ENABLE_SURVEY_MODE:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SnsBigDataManager"

    const-string/jumbo v4, "survey mode is not enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_3

    sget-boolean v3, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->DBG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "SnsBigDataManager"

    const-string/jumbo v4, "feature is not enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    if-nez p2, :cond_4

    return-void

    :cond_4
    array-length v3, p2

    new-array v0, v3, [Ljava/lang/String;

    array-length v3, p2

    new-array v2, v3, [J

    if-eqz p3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_5

    aput-object p1, v0, v1

    const-wide/16 v4, -0x1

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-direct {p0, v0, p2, v2}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->sendBroadcastToContextFramework([Ljava/lang/String;[Ljava/lang/String;[J)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->insertLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setSmartCmLog(Z)V
    .locals 0

    sput-boolean p1, Lcom/samsung/android/server/wifi/sns/SnsBigDataManager;->SMART_CM:Z

    return-void
.end method

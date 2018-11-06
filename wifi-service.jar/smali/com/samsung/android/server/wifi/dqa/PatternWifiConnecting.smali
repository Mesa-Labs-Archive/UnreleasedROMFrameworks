.class public Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;
.super Lcom/samsung/android/server/wifi/dqa/WifiIssuePattern;
.source "PatternWifiConnecting.java"


# static fields
.field private static final BASE_RSSI_CONDITION:I = -0x46

.field private static final CATEGORY_ID_CAN_NOT_CHANGE_WIFI_STATE:I = 0x2

.field private static final CATEGORY_ID_CONNECT_FAIL_ASSOC_REJECT:I = 0x5

.field private static final CATEGORY_ID_CONNECT_FAIL_AUTH_FAIL:I = 0x6

.field private static final CATEGORY_ID_CONNECT_FAIL_DHCP_REASON:I = 0x7

.field private static final CATEGORY_ID_SYSTEM_PROBLEM:I = 0x1

.field private static final CATEGORY_ID_UNSTABLE_AP:I = 0x4

.field private static final MAX_DURATION_FOR_DETECTING_WIFI_ONOFF_ISSUE:J = 0x5dcL

.field private static final TAG:Ljava/lang/String; = "PatternWifiConnecting"

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"


# instance fields
.field private mBssid:Ljava/lang/String;

.field private mCategoryId:I

.field private mFrequency:I

.field private mHangReason:I

.field private mIssueDetectedWifiStateChangedBy3rdParty:Z

.field private mKeyMgmt:I

.field private mLastProceedMessage:I

.field private mLastProceedState:Ljava/lang/String;

.field private mLastTriedToConnectReport:Lcom/samsung/android/server/wifi/dqa/ReportData;

.field private mLastUpdatedWifiStateTime:J

.field private mNumAssociation:I

.field private mOui:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mReason:I

.field private mRssi:I

.field private mSsid:Ljava/lang/String;

.field private mSupplicantDisconnectCount:I

.field private final mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/dqa/WifiIssuePattern;-><init>()V

    const-string/jumbo v0, "0.4"

    iput-object v0, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mVersion:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->initValues()V

    return-void
.end method

.method private getParams()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mCategoryId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mLastProceedState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mLastProceedMessage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mHangReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mSupplicantDisconnectCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mNumAssociation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mOui:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mKeyMgmt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mFrequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "0.4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mBssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initValues()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mCategoryId:I

    iput v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mLastProceedMessage:I

    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mLastProceedState:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mHangReason:I

    iput v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mSupplicantDisconnectCount:I

    iput v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mReason:I

    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mSsid:Ljava/lang/String;

    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mBssid:Ljava/lang/String;

    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mOui:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mNumAssociation:I

    const/16 v0, -0xc8

    iput v0, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mRssi:I

    iput v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mKeyMgmt:I

    iput v1, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mFrequency:I

    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAssociatedKeys()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xc9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getBigDataParams()Landroid/os/Bundle;
    .locals 3

    const-string/jumbo v1, "PDC2"

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getParams()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getBigDataBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "categoryId"

    iget v2, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mCategoryId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getPatternId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "disc2"

    return-object v0
.end method

.method public isAssociated(ILcom/samsung/android/server/wifi/dqa/ReportData;)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v6, -0x1

    const/4 v8, 0x1

    iput-boolean v9, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mIssueDetectedWifiStateChangedBy3rdParty:Z

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return v9

    :sswitch_0
    const-string/jumbo v3, "count"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v3, "PatternWifiConnecting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isAssociated counter:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v6, :cond_1

    const/4 v3, 0x3

    if-lt v1, v3, :cond_0

    return v8

    :cond_0
    return v9

    :cond_1
    const-string/jumbo v3, "reason"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v6, :cond_2

    return v8

    :cond_2
    return v8

    :sswitch_1
    iget-wide v4, p2, Lcom/samsung/android/server/wifi/dqa/ReportData;->mTime:J

    iget-wide v6, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mLastUpdatedWifiStateTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x5dc

    cmp-long v3, v4, v6

    if-gez v3, :cond_3

    const-string/jumbo v3, "callBy"

    const-string/jumbo v4, ""

    invoke-static {p2, v3, v4}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->isApiCalledBySystemApk(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-wide v4, p2, Lcom/samsung/android/server/wifi/dqa/ReportData;->mTime:J

    iput-wide v4, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mLastUpdatedWifiStateTime:J

    iput-boolean v8, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mIssueDetectedWifiStateChangedBy3rdParty:Z

    return v8

    :cond_3
    iget-wide v4, p2, Lcom/samsung/android/server/wifi/dqa/ReportData;->mTime:J

    iput-wide v4, p0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mLastUpdatedWifiStateTime:J

    goto :goto_0

    :sswitch_2
    return v8

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xa -> :sswitch_2
        0xb -> :sswitch_2
        0xc9 -> :sswitch_1
    .end sparse-switch
.end method

.method public matches()Z
    .locals 28

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->initValues()V

    const/16 v24, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/dqa/ReportData;

    move-result-object v20

    if-eqz v20, :cond_0

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mCategoryId:I

    const-string/jumbo v24, "count"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mSupplicantDisconnectCount:I

    const-string/jumbo v24, "reason"

    const/16 v25, -0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mHangReason:I

    const-string/jumbo v24, "pstate"

    const-string/jumbo v25, "unknown"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mLastProceedState:Ljava/lang/String;

    const-string/jumbo v24, "pmsg"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mLastProceedMessage:I

    const-string/jumbo v24, "PatternWifiConnecting"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "matched category id : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mCategoryId:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    return v24

    :cond_0
    const/16 v24, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/dqa/ReportData;

    move-result-object v23

    if-eqz v23, :cond_2

    const/16 v24, 0x4

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mCategoryId:I

    const-string/jumbo v24, "PatternWifiConnecting"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "matched category id : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mCategoryId:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0xc8

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/dqa/ReportData;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string/jumbo v24, "rssi"

    const/16 v25, -0xc8

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v6, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mRssi:I

    const-string/jumbo v24, "oui"

    const-string/jumbo v25, "unknown"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v6, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mOui:Ljava/lang/String;

    const-string/jumbo v24, "wpaSecureType"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v6, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mKeyMgmt:I

    const-string/jumbo v24, "freqeuncy"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v6, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mFrequency:I

    :cond_1
    const/16 v24, 0x1

    return v24

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mIssueDetectedWifiStateChangedBy3rdParty:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mIssueDetectedWifiStateChangedBy3rdParty:Z

    const/16 v24, 0xc9

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/dqa/ReportData;

    move-result-object v21

    const/16 v24, 0xc9

    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getLastIndexOfData(II)Lcom/samsung/android/server/wifi/dqa/ReportData;

    move-result-object v17

    if-eqz v21, :cond_3

    if-eqz v17, :cond_3

    const-string/jumbo v24, "wifiState"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const-string/jumbo v24, "wifiState"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move/from16 v0, v16

    if-eq v0, v10, :cond_3

    const-string/jumbo v24, "callBy"

    const-string/jumbo v25, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-string/jumbo v24, "callBy"

    const-string/jumbo v25, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mPackageName:Ljava/lang/String;

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mPackageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    xor-int/lit8 v24, v24, 0x1

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mPackageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->isApiCalledBySystemApk(Ljava/lang/String;)Z

    move-result v24

    xor-int/lit8 v24, v24, 0x1

    if-eqz v24, :cond_3

    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mCategoryId:I

    const-string/jumbo v24, "PatternWifiConnecting"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "matched category id : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mCategoryId:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x1

    return v24

    :cond_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mLastTriedToConnectReport:Lcom/samsung/android/server/wifi/dqa/ReportData;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    const-string/jumbo v24, "netid"

    const/16 v25, -0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/16 v24, -0x1

    move/from16 v0, v24

    if-ne v14, v0, :cond_6

    const-string/jumbo v24, "PatternWifiConnecting"

    const-string/jumbo v25, "invalid network ID"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    const/16 v24, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/dqa/ReportData;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mLastTriedToConnectReport:Lcom/samsung/android/server/wifi/dqa/ReportData;

    if-eqz v13, :cond_5

    const-string/jumbo v24, "PatternWifiConnecting"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "pattern matched categoryId:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mCategoryId:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v13

    :cond_6
    const-string/jumbo v24, "numAssoc"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mNumAssociation:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mNumAssociation:I

    move/from16 v24, v0

    if-nez v24, :cond_7

    const-string/jumbo v24, "PatternWifiConnecting"

    const-string/jumbo v25, "first time connection"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    const-string/jumbo v24, "isLinkDebouncing"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    const-string/jumbo v24, "PatternWifiConnecting"

    const-string/jumbo v25, "it\'s link debouncing connection"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/dqa/ReportData;

    move-result-object v9

    if-eqz v9, :cond_9

    iget-wide v0, v9, Lcom/samsung/android/server/wifi/dqa/ReportData;->mTime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/samsung/android/server/wifi/dqa/ReportData;->mTime:J

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-lez v24, :cond_9

    const-string/jumbo v24, "netid"

    const/16 v25, -0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v9, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v14, :cond_9

    const-string/jumbo v24, "PatternWifiConnecting"

    const-string/jumbo v25, "network is connected"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v24, "ssid"

    const-string/jumbo v25, "unknown"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mSsid:Ljava/lang/String;

    const/16 v24, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/dqa/ReportData;

    move-result-object v19

    if-eqz v19, :cond_e

    const-string/jumbo v24, "netid"

    const/16 v25, -0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    if-ne v14, v0, :cond_10

    const-string/jumbo v24, "bssid"

    const-string/jumbo v25, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mBssid:Ljava/lang/String;

    const-string/jumbo v24, "any"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mBssid:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_d

    const/16 v24, 0xca

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/dqa/ReportData;

    move-result-object v7

    if-eqz v7, :cond_a

    const-string/jumbo v24, "rssi"

    const/16 v25, -0xc8

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v7, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mRssi:I

    const-string/jumbo v24, "oui"

    const-string/jumbo v25, "unknown"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v7, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mOui:Ljava/lang/String;

    const-string/jumbo v24, "reason"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v7, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mReason:I

    const-string/jumbo v24, "wpaSecureType"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v7, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mKeyMgmt:I

    const-string/jumbo v24, "freqeuncy"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v7, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mFrequency:I

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mRssi:I

    move/from16 v24, v0

    const/16 v25, -0x46

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_b

    const-string/jumbo v24, "PatternWifiConnecting"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "weak signal "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mRssi:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    const/16 v24, 0x5

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mCategoryId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mReason:I

    move/from16 v24, v0

    if-nez v24, :cond_c

    const-string/jumbo v24, "reason"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mReason:I

    :cond_c
    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v24, "PatternWifiConnecting"

    const-string/jumbo v25, "assoc.rejected (auto connection)"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_1
    const/16 v24, 0xc8

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/dqa/ReportData;

    move-result-object v6

    if-eqz v6, :cond_f

    const-string/jumbo v24, "rssi"

    const/16 v25, -0xc8

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v6, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mRssi:I

    const-string/jumbo v24, "oui"

    const-string/jumbo v25, "unknown"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v6, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mOui:Ljava/lang/String;

    const-string/jumbo v24, "wpaSecureType"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v6, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mKeyMgmt:I

    const-string/jumbo v24, "freqeuncy"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v6, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mFrequency:I

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mRssi:I

    move/from16 v24, v0

    const/16 v25, -0x46

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_11

    const-string/jumbo v24, "PatternWifiConnecting"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "weak signal "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mRssi:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v24, "PatternWifiConnecting"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "assoc.rejected but network id is mismatched. try:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_11
    const/16 v24, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/dqa/ReportData;

    move-result-object v4

    if-eqz v4, :cond_13

    const-string/jumbo v24, "netid"

    const/16 v25, -0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v4, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v14, v5, :cond_12

    const/16 v24, 0x6

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mCategoryId:I

    const-string/jumbo v24, "bssid"

    const-string/jumbo v25, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mBssid:Ljava/lang/String;

    const-string/jumbo v24, "reason"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v4, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mReason:I

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v24, "PatternWifiConnecting"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "auth.failed but network id is mismatched. try:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const/16 v24, 0x12c

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/dqa/ReportData;

    move-result-object v12

    if-eqz v12, :cond_4

    const-string/jumbo v24, "dhcpFailReason"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v12, v0, v1}, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/16 v24, 0x1

    move/from16 v0, v24

    if-eq v11, v0, :cond_4

    move-object/from16 v0, p0

    iput v11, v0, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mReason:I

    const/16 v24, 0x7

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/wifi/dqa/PatternWifiConnecting;->mCategoryId:I

    const/4 v13, 0x1

    goto/16 :goto_0
.end method

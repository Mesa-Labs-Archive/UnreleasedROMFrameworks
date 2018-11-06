.class public Lcom/samsung/android/server/wifi/UnstableApInfo;
.super Ljava/lang/Object;
.source "UnstableApInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;
    }
.end annotation


# static fields
.field private static final ENABLE_RSSI_LEVEL:I = -0x46

.field private static final MAX_DISCONNECTED_WITH_REASON_ZERO_COUNT:I = 0x3

.field private static final MAX_DISCONNECTED_WITH_REASON_ZERO_TIME:J = 0x493e0L

.field private static final MAX_UNSTABLE_AP_DISABLED_DURATION_FOR_VENDORAP:J = 0x36ee80L

.field private static final MIN_RSSI_LEVEL:I = -0x4b

.field private static final MIN_UNSTABLE_AP_DISABLED_DURATION:J = 0xdbba0L

.field private static final MIN_UNSTABLE_AP_DISABLED_DURATION_FOR_VENDORAP:J = 0x124f80L


# instance fields
.field private final mAllowKeyMgmt:Ljava/util/BitSet;

.field private final mBssids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsVendorAp:Z

.field private final mSsid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;-><init>()V

    iput p3, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->level:I

    iget-object v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/UnstableApInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mSsid:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mAllowKeyMgmt:Ljava/util/BitSet;

    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/UnstableApController;->isVendorPasspointAp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mIsVendorAp:Z

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/UnstableApInfo;->reset(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getMatchingSsidSecureConfig(Landroid/net/wifi/ScanResult;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mAllowKeyMgmt:Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mAllowKeyMgmt:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mAllowKeyMgmt:Ljava/util/BitSet;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mAllowKeyMgmt:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "-EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mAllowKeyMgmt:Ljava/util/BitSet;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "CCKM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mAllowKeyMgmt:Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "WAPI-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mAllowKeyMgmt:Ljava/util/BitSet;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mAllowKeyMgmt:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    :cond_7
    return v3
.end method

.method private getTimeLimit()J
    .locals 4

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mIsVendorAp:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    iget v2, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->totalDisabledCounter:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    const-wide/32 v2, 0x36ee80

    return-wide v2

    :cond_1
    const-wide/32 v2, 0x124f80

    return-wide v2

    :cond_2
    const-wide/32 v2, 0xdbba0

    return-wide v2
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x22

    const/4 v2, 0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, ""

    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    return-object p0
.end method


# virtual methods
.method public addAndCheck(Ljava/lang/String;I)Z
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    iput p2, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->level:I

    iget-boolean v1, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->isMobileHotspot:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/UnstableApInfo;->isUnstableAp()Z

    move-result v1

    return v1

    :cond_1
    iget v1, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;-><init>()V

    iput p2, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->level:I

    const/4 v1, 0x1

    iput v1, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    iget-object v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public canAddCounter(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x1

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mIsVendorAp:Z

    if-eqz v1, :cond_0

    return v6

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->time:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    return v6

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public canEnable()Z
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/UnstableApInfo;->isRoamAp()Z

    move-result v2

    if-eqz v2, :cond_0

    return v6

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->time:J

    sub-long/2addr v2, v4

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/UnstableApInfo;->getTimeLimit()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const/4 v2, 0x0

    return v2

    :cond_2
    return v6
.end method

.method public checkRssiAndReenable(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)Z"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_0

    return v7

    :cond_0
    iget-boolean v5, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mIsVendorAp:Z

    if-eqz v5, :cond_1

    return v7

    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v1, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v6, "SEC80"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iput-boolean v8, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->isMobileHotspot:Z

    iput v7, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    return v8

    :cond_3
    iput-boolean v7, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->isMobileHotspot:Z

    iget v2, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->level:I

    const/16 v5, -0x4b

    if-ge v2, v5, :cond_2

    iget v5, v3, Landroid/net/wifi/ScanResult;->level:I

    const/16 v6, -0x46

    if-lt v5, v6, :cond_2

    return v8

    :cond_4
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/UnstableApInfo;->getMatchingSsidSecureConfig(Landroid/net/wifi/ScanResult;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;-><init>()V

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v6, "SEC80"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    iput-boolean v8, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->isMobileHotspot:Z

    :cond_5
    iget v5, v3, Landroid/net/wifi/ScanResult;->level:I

    iput v5, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->level:I

    iget-object v5, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v8

    :cond_6
    return v7
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public forceReset(Ljava/lang/String;)V
    .locals 3

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mIsVendorAp:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->forceReset()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->forceReset()V

    :cond_1
    return-void
.end method

.method public getBlackList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    if-eqz v3, :cond_0

    iget v4, v3, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    iget v4, v3, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public isMatched(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mSsid:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mSsid:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/UnstableApInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    :cond_1
    return v2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mAllowKeyMgmt:Ljava/util/BitSet;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mAllowKeyMgmt:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    :cond_3
    return v2

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public isRoamAp()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mIsVendorAp:Z

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isUnstableAp()Z
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/UnstableApInfo;->isRoamAp()Z

    move-result v3

    if-eqz v3, :cond_0

    return v4

    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mIsVendorAp:Z

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    iget v3, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    if-lt v2, v6, :cond_4

    return v5

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    iget v3, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    if-lt v3, v6, :cond_3

    return v5

    :cond_4
    return v4
.end method

.method public reset(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mIsVendorAp:Z

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->totalDisabledCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->totalDisabledCounter:I

    :cond_0
    iget v2, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    if-lt v2, v5, :cond_1

    iget v2, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->totalDisabledCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->totalDisabledCounter:I

    :cond_1
    iput v4, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->time:J

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    iget v2, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    if-lt v2, v5, :cond_3

    iget v2, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->totalDisabledCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->totalDisabledCounter:I

    :cond_3
    iput v4, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->time:J

    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mSsid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mIsVendorAp:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "[VendorAp]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v4, ", cnt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v4, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->counter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v4, ", total:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v4, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->totalDisabledCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v4, ", rssi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v4, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->level:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-boolean v4, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->isMobileHotspot:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, ",SEC80"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public updateTime(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/UnstableApInfo;->mBssids:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/server/wifi/UnstableApInfo$ApInfo;->time:J

    :cond_0
    return-void
.end method

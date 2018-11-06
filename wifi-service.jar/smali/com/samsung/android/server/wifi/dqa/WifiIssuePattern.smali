.class public abstract Lcom/samsung/android/server/wifi/dqa/WifiIssuePattern;
.super Ljava/lang/Object;
.source "WifiIssuePattern.java"


# static fields
.field protected static final DBG:Z

.field public static final KEY_HUMAN_READABLE_TIME:Ljava/lang/String; = "htime"

.field public static final KEY_TIME:Ljava/lang/String; = "time"


# instance fields
.field private mLastSeenData:Lcom/samsung/android/server/wifi/dqa/ReportData;

.field private mLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/server/wifi/dqa/ReportData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/dqa/WifiIssuePattern;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "TV;)TV;"
        }
    .end annotation

    move-object v2, p2

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    move-object v1, p2

    :cond_0
    :goto_0
    move-object v2, v1

    :cond_1
    return-object v2

    :cond_2
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_6

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    instance-of v5, p2, Ljava/lang/Boolean;

    if-eqz v5, :cond_3

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_3
    instance-of v5, p2, Ljava/lang/Integer;

    if-eqz v5, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_4
    instance-of v5, p2, Ljava/lang/Long;

    if-eqz v5, :cond_5

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_5
    instance-of v5, p2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    move-object v1, v4

    goto :goto_0

    :catch_0
    move-exception v0

    return-object p2

    :cond_6
    move-object v1, v3

    goto :goto_0
.end method

.method public static getValue(Lcom/samsung/android/server/wifi/dqa/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/server/wifi/dqa/ReportData;",
            "Ljava/lang/String;",
            "TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/server/wifi/dqa/ReportData;->mData:Landroid/os/Bundle;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/server/wifi/dqa/WifiIssuePattern;->getValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getAssociatedKeys()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method protected getBigDataBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-object v2

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "bigdata"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "feature"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "patternId"

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/dqa/WifiIssuePattern;->getPatternId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public abstract getBigDataParams()Landroid/os/Bundle;
.end method

.method protected getLastIndexOfData(I)Lcom/samsung/android/server/wifi/dqa/ReportData;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/dqa/WifiIssuePattern;->getLastIndexOfData(II)Lcom/samsung/android/server/wifi/dqa/ReportData;

    move-result-object v0

    return-object v0
.end method

.method protected getLastIndexOfData(II)Lcom/samsung/android/server/wifi/dqa/ReportData;
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/dqa/WifiIssuePattern;->mLogs:Ljava/util/List;

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/dqa/WifiIssuePattern;->mLogs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_0
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/dqa/WifiIssuePattern;->mLogs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/dqa/ReportData;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/dqa/WifiIssuePattern;->mLastSeenData:Lcom/samsung/android/server/wifi/dqa/ReportData;

    if-ne v0, v3, :cond_1

    :cond_0
    return-object v4

    :cond_1
    iget v3, v0, Lcom/samsung/android/server/wifi/dqa/ReportData;->mReportId:I

    if-ne v3, p1, :cond_2

    add-int/lit8 v1, v1, 0x1

    if-ne p2, v1, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public abstract getPatternId()Ljava/lang/String;
.end method

.method protected isApiCalledBySystemApk(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "com.android.settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.android.systemui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.android.shell"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isAssociated(ILcom/samsung/android/server/wifi/dqa/ReportData;)Z
.end method

.method public abstract matches()Z
.end method

.method public matches(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/server/wifi/dqa/ReportData;",
            ">;)Z"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/server/wifi/dqa/WifiIssuePattern;->mLogs:Ljava/util/List;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/dqa/WifiIssuePattern;->matches()Z

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/dqa/ReportData;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/dqa/WifiIssuePattern;->mLastSeenData:Lcom/samsung/android/server/wifi/dqa/ReportData;

    return v0
.end method

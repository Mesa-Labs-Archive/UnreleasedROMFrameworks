.class public abstract Lcom/android/server/wifi/WifiConfigurationUtil$WifiConfigurationComparator;
.super Ljava/lang/Object;
.source "WifiConfigurationUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConfigurationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WifiConfigurationComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/net/wifi/WifiConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field private static final ENABLED_NETWORK_SCORE:I = 0x3

.field private static final PERMANENTLY_DISABLED_NETWORK_SCORE:I = 0x1

.field private static final TEMPORARY_DISABLED_NETWORK_SCORE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getNetworkStatusScore(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkTemporaryDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public compare(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigurationUtil$WifiConfigurationComparator;->getNetworkStatusScore(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiConfigurationUtil$WifiConfigurationComparator;->getNetworkStatusScore(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigurationUtil$WifiConfigurationComparator;->compareNetworksWithSameStatus(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    return v2

    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    check-cast p2, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigurationUtil$WifiConfigurationComparator;->compare(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method abstract compareNetworksWithSameStatus(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
.end method

.class final Lcom/android/server/wifi/WifiConfigManager$1;
.super Lcom/android/server/wifi/WifiConfigurationUtil$WifiConfigurationComparator;
.source "WifiConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigurationUtil$WifiConfigurationComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compareNetworksWithSameStatus(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 6

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    iget v3, p2, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-eq v2, v3, :cond_0

    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    int-to-long v2, v2

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v2

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getSeenInLastQualifiedNetworkSelection()Z

    move-result v0

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getSeenInLastQualifiedNetworkSelection()Z

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v2

    return v2
.end method

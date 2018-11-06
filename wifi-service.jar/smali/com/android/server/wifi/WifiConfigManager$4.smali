.class Lcom/android/server/wifi/WifiConfigManager$4;
.super Ljava/lang/Object;
.source "WifiConfigManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiConfigManager;->cleanOldNetworks(Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiConfigManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConfigManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigManager$4;->this$0:Lcom/android/server/wifi/WifiConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 9

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    iget-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    iget-boolean v5, p2, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-ne v4, v5, :cond_7

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v4, :cond_0

    iget v4, p2, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eqz v4, :cond_0

    return v8

    :cond_0
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eqz v4, :cond_1

    iget v4, p2, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v4, :cond_1

    return v7

    :cond_1
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v5, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager$4;->this$0:Lcom/android/server/wifi/WifiConfigManager;

    invoke-static {v4, p1}, Lcom/android/server/wifi/WifiConfigManager;->-wrap0(Lcom/android/server/wifi/WifiConfigManager;Landroid/net/wifi/WifiConfiguration;)J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager$4;->this$0:Lcom/android/server/wifi/WifiConfigManager;

    invoke-static {v4, p2}, Lcom/android/server/wifi/WifiConfigManager;->-wrap0(Lcom/android/server/wifi/WifiConfigManager;Landroid/net/wifi/WifiConfiguration;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    invoke-virtual {p1, v6}, Landroid/net/wifi/WifiConfiguration;->getAuthType(Z)I

    move-result v4

    invoke-virtual {p2, v6}, Landroid/net/wifi/WifiConfiguration;->getAuthType(Z)I

    move-result v5

    if-ne v4, v5, :cond_2

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    iget v5, p2, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    sub-int/2addr v4, v5

    return v4

    :cond_2
    invoke-virtual {p1, v6}, Landroid/net/wifi/WifiConfiguration;->getAuthType(Z)I

    move-result v4

    invoke-virtual {p2, v6}, Landroid/net/wifi/WifiConfiguration;->getAuthType(Z)I

    move-result v5

    sub-int/2addr v4, v5

    return v4

    :cond_3
    cmp-long v4, v0, v2

    if-gez v4, :cond_4

    return v7

    :cond_4
    return v8

    :cond_5
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v5, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v4, v5, :cond_6

    return v8

    :cond_6
    return v7

    :cond_7
    iget-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-eqz v4, :cond_8

    iget-boolean v4, p2, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-nez v4, :cond_8

    return v8

    :cond_8
    return v7
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    check-cast p2, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager$4;->compare(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

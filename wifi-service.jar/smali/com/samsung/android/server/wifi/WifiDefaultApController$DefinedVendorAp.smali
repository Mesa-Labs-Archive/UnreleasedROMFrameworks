.class Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;
.super Ljava/lang/Object;
.source "WifiDefaultApController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/WifiDefaultApController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefinedVendorAp"
.end annotation


# instance fields
.field private SSID:Ljava/lang/String;

.field private eapMethod:Ljava/lang/String;

.field private hidden:Ljava/lang/String;

.field private keyMgmt:Ljava/lang/String;

.field private networkName:Ljava/lang/String;

.field private preSharedKey:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;->SSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;->networkName:Ljava/lang/String;

    return-object v0
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parsingNetworkBlock(Ljava/io/BufferedReader;)Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;
    .locals 5

    const/4 v4, 0x0

    new-instance v2, Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;

    invoke-direct {v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->ready()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-object v2

    :cond_1
    const-string/jumbo v3, "WifiDefaultApController"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;->parseLine(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    return-object v4
.end method


# virtual methods
.method public createWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;->SSID:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string/jumbo v1, "0"

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;->hidden:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    :goto_0
    const-string/jumbo v1, "WPA-EAP IEEE8021X"

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;->keyMgmt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    :cond_0
    :goto_1
    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;->preSharedKey:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_1
    const-string/jumbo v1, "SIM"

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;->eapMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    :cond_2
    :goto_2
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    return-object v0

    :cond_3
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "WPA-PSK"

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;->keyMgmt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    :cond_5
    const-string/jumbo v1, "FT-EAP"

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;->keyMgmt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    :cond_6
    const-string/jumbo v1, "NONE"

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;->keyMgmt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    :cond_7
    const-string/jumbo v1, "AKA"

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;->eapMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_2

    :cond_8
    const-string/jumbo v1, "AKA\'"

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;->eapMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_2
.end method

.method parseLine(Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0x3d

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "ssid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;->SSID:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "scan_ssid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;->hidden:Ljava/lang/String;

    :cond_1
    const-string/jumbo v0, "key_mgmt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;->keyMgmt:Ljava/lang/String;

    :cond_2
    const-string/jumbo v0, "eap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;->eapMethod:Ljava/lang/String;

    :cond_3
    const-string/jumbo v0, "psk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;->preSharedKey:Ljava/lang/String;

    :cond_4
    const-string/jumbo v0, "networkname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/util/StringUtil;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$DefinedVendorAp;->networkName:Ljava/lang/String;

    :cond_5
    return-void
.end method

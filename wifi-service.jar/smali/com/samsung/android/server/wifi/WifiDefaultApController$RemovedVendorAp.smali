.class Lcom/samsung/android/server/wifi/WifiDefaultApController$RemovedVendorAp;
.super Ljava/lang/Object;
.source "WifiDefaultApController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/WifiDefaultApController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RemovedVendorAp"
.end annotation


# instance fields
.field private mRemovedEap:Ljava/lang/String;

.field private mRemovedKeymgmt:Ljava/lang/String;

.field private mRemovedSSID:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/server/wifi/WifiDefaultApController$RemovedVendorAp;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$RemovedVendorAp;->mRemovedEap:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/server/wifi/WifiDefaultApController$RemovedVendorAp;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$RemovedVendorAp;->mRemovedKeymgmt:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/server/wifi/WifiDefaultApController$RemovedVendorAp;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$RemovedVendorAp;->mRemovedSSID:Ljava/lang/String;

    return-object v0
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parsingNetworkBlock(Ljava/io/BufferedReader;)Lcom/samsung/android/server/wifi/WifiDefaultApController$RemovedVendorAp;
    .locals 5

    const/4 v4, 0x0

    new-instance v2, Lcom/samsung/android/server/wifi/WifiDefaultApController$RemovedVendorAp;

    invoke-direct {v2}, Lcom/samsung/android/server/wifi/WifiDefaultApController$RemovedVendorAp;-><init>()V

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

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/WifiDefaultApController$RemovedVendorAp;->parseLine(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    return-object v4
.end method


# virtual methods
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

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$RemovedVendorAp;->mRemovedSSID:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "key_mgmt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$RemovedVendorAp;->mRemovedKeymgmt:Ljava/lang/String;

    :cond_1
    const-string/jumbo v0, "eap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController$RemovedVendorAp;->mRemovedEap:Ljava/lang/String;

    :cond_2
    return-void
.end method

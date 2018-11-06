.class Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;
.super Ljava/lang/Object;
.source "WifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DnsCheck"
.end annotation


# static fields
.field public static final DNS_CHECK_RESULT_FAILURE:I = 0x0

.field public static final DNS_CHECK_RESULT_NO_INTERNET:I = 0x3

.field public static final DNS_CHECK_RESULT_PRIVATE_IP:I = 0x4

.field public static final DNS_CHECK_RESULT_REMAINED:I = 0x2

.field public static final DNS_CHECK_RESULT_SUCCESS:I = 0x1

.field public static final DNS_CHECK_RESULT_TIMEOUT_ICMP_OK:I = 0x5


# instance fields
.field private mDnsCheckSuccesses:[I

.field private mDnsCheckTAG:Ljava/lang/String;

.field private mDnsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mDnsPinger:Landroid/net/DnsPinger;

.field private mDnsResponseStrs:[Ljava/lang/String;

.field private mIdDnsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsIcmpPingWaiting:Z

.field private mLatestIcmpPingRtt:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;)Landroid/net/DnsPinger;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsPinger:Landroid/net/DnsPinger;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->clear()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiConnectivityMonitor;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 6

    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsCheckTAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mLatestIcmpPingRtt:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mIsIcmpPingWaiting:Z

    new-instance v0, Landroid/net/DnsPinger;

    invoke-static {p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get16(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v5, 0x1

    move-object v2, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/net/DnsPinger;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsPinger:Landroid/net/DnsPinger;

    iput-object p3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsCheckTAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsPinger:Landroid/net/DnsPinger;

    invoke-static {p1}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get64(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/LinkProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/DnsPinger;->setCurrentLinkProperties(Landroid/net/LinkProperties;)V

    return-void
.end method

.method private checkIcmpPing(II)I
    .locals 8

    const/4 v4, -0x1

    :try_start_0
    const-string/jumbo v5, "0.0.0.0"

    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get40(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/InetAddress;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get40(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/net/InetAddress;

    move-result-object v2

    :cond_0
    new-instance v3, Lcom/android/server/wifi/IcmpEchoPeer;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get64(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/LinkProperties;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Lcom/android/server/wifi/IcmpEchoPeer;-><init>(Landroid/net/LinkProperties;Ljava/net/InetAddress;)V

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wifi/IcmpEchoPeer;->doPingPipeLine(II)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v5, "rtt"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/wifi/IcmpEchoPeer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v4

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v5, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "checkIcmpPing Exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    throw v5
.end method

.method private clear()V
    .locals 3

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConnectivityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[clear] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsCheckTAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsPinger:Landroid/net/DnsPinger;

    invoke-virtual {v0}, Landroid/net/DnsPinger;->clear()V

    return-void
.end method

.method private makeLogString()Ljava/lang/String;
    .locals 7

    const-string/jumbo v0, ""

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsResponseStrs:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsResponseStrs:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public checkDnsResult(III)I
    .locals 10

    const/16 v9, 0x3e8

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->checkDnsResultCore(III)I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    return v3

    :cond_0
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get36()Z

    move-result v5

    if-nez v5, :cond_2

    if-ne v3, v7, :cond_2

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "WifiConnectivityMonitor"

    const-string/jumbo v6, "Skip ICMP Ping if DNS succeeds on initial connection."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v3

    :cond_2
    iput-boolean v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mIsIcmpPingWaiting:Z

    const/4 v4, -0x1

    const/4 v5, -0x1

    iput v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mLatestIcmpPingRtt:I

    invoke-direct {p0, v9, v8}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->checkIcmpPing(II)I

    move-result v4

    if-lez v4, :cond_3

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set41(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    iput v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mLatestIcmpPingRtt:I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "WifiConnectivityMonitor"

    const-string/jumbo v6, "Network is pingable."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v5

    const/16 v6, 0xfa0

    if-le v5, v6, :cond_8

    const/4 v1, 0x1

    :cond_4
    :goto_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get29(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_a

    if-eqz v1, :cond_9

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v5

    iget v0, v5, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingReqBytes5GAgg:I

    :goto_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get54(Lcom/android/server/wifi/WifiConnectivityMonitor;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get14(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v5

    if-ge v5, v0, :cond_5

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get38(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v5

    const/16 v6, 0xf

    if-ge v5, v6, :cond_5

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get14(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v5

    add-int/lit16 v5, v5, 0x7d0

    if-ge v5, v0, :cond_c

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get14(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v5

    add-int/lit16 v2, v5, 0x7d0

    :goto_2
    invoke-direct {p0, v9, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->checkIcmpPing(II)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get38(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set28(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    if-lez v4, :cond_5

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set41(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set37(Lcom/android/server/wifi/WifiConnectivityMonitor;Z)Z

    iput v4, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mLatestIcmpPingRtt:I

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5, v2}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set10(Lcom/android/server/wifi/WifiConnectivityMonitor;I)I

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Network is fragmented pingable up to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get14(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " bytes. count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get38(Lcom/android/server/wifi/WifiConnectivityMonitor;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-nez v3, :cond_7

    iget v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mLatestIcmpPingRtt:I

    if-lez v5, :cond_7

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get109(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    const/16 v6, -0x32

    if-lt v5, v6, :cond_7

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "WifiConnectivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Dns Timeout but ICMP Ping responded with RTT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mLatestIcmpPingRtt:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ". Link is okay and DNS service is not responsive. -> NO_INTERNET"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v3, 0x5

    :cond_7
    iput-boolean v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mIsIcmpPingWaiting:Z

    return v3

    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_9
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v5

    iget v0, v5, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingReqBytes2GAgg:I

    goto/16 :goto_1

    :cond_a
    if-eqz v1, :cond_b

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v5

    iget v0, v5, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingReqBytes5G:I

    goto/16 :goto_1

    :cond_b
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v5}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v5

    iget v0, v5, Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;->PingReqBytes2G:I

    goto/16 :goto_1

    :cond_c
    move v2, v0

    goto/16 :goto_2
.end method

.method public checkDnsResultCore(III)I
    .locals 11

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "WifiConnectivityMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[RESPONSE] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsCheckTAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "WifiConnectivityMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Skip a Dns response with ID - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v7, 0x2

    return v7

    :cond_2
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsCheckSuccesses:[I

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsCheckSuccesses:[I

    array-length v7, v7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-gt v7, v8, :cond_4

    :cond_3
    const-string/jumbo v7, "WifiConnectivityMonitor"

    const-string/jumbo v8, "Not available to check dns results"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->quit()V

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v7

    const/4 v8, 0x5

    iput v8, v7, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v8

    iput v8, v7, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->line:I

    const/4 v7, 0x0

    return v7

    :cond_4
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p2, :cond_5

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsCheckSuccesses:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget v8, v7, v8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v8, v8, 0x1

    aput v8, v7, v9

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, "WifiConnectivityMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mDnsCheckSuccesses["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsCheckSuccesses:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsResponseStrs:[Ljava/lang/String;

    if-eqz v7, :cond_7

    if-ltz p2, :cond_6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsResponseStrs:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-object v10, v7, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsCheckSuccesses:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget v7, v7, v8

    if-lt v7, p3, :cond_a

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v7

    if-eqz v7, :cond_8

    const-string/jumbo v7, "WifiConnectivityMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->makeLogString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "  SUCCESS"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->quit()V

    const/4 v7, 0x2

    if-ne p2, v7, :cond_9

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v7

    const/4 v8, 0x2

    iput v8, v7, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v8

    iput v8, v7, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->line:I

    const/4 v7, 0x4

    return v7

    :cond_6
    :try_start_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsResponseStrs:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-object v10, v7, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v7, "WifiConnectivityMonitor"

    const-string/jumbo v8, "mDnsResponseStrs IndexOutOfBoundsException"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    return v7

    :cond_7
    :try_start_2
    const-string/jumbo v7, "WifiConnectivityMonitor"

    const-string/jumbo v8, "mDnsResponseStrs is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v7, "WifiConnectivityMonitor"

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->makeLogString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    const/4 v7, 0x1

    return v7

    :cond_a
    const/4 v7, -0x3

    if-ne p2, v7, :cond_13

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v7

    if-eqz v7, :cond_c

    const-string/jumbo v7, "WifiConnectivityMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "checkDnsResult - Ping# "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " to DnsServer "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " (removed)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_d
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v7

    if-eqz v7, :cond_b

    const-string/jumbo v7, "WifiConnectivityMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "checkDnsResult - Ping# "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " to DnsServer# "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_e
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_f
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v7

    if-eqz v7, :cond_10

    const-string/jumbo v7, "WifiConnectivityMonitor"

    const-string/jumbo v8, "DNS gets no results"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v7

    if-eqz v7, :cond_11

    const-string/jumbo v7, "WifiConnectivityMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->makeLogString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "  FAILURE "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->quit()V

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v7

    const/4 v8, 0x3

    iput v8, v7, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v8

    iput v8, v7, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->line:I

    const/4 v7, 0x3

    return v7

    :cond_11
    const-string/jumbo v7, "WifiConnectivityMonitor"

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->makeLogString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_12
    const/4 v7, 0x2

    return v7

    :cond_13
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v7

    if-eqz v7, :cond_14

    const-string/jumbo v7, "WifiConnectivityMonitor"

    const-string/jumbo v8, "DNS Checking FAILURE"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v7

    if-eqz v7, :cond_15

    const-string/jumbo v7, "WifiConnectivityMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->makeLogString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "  FAILURE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->quit()V

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v7

    const/4 v8, 0x7

    iput v8, v7, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->error:I

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v8

    iput v8, v7, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->line:I

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v7}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get31(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v8}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get33(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/util/List;

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/wifi/WifiConnectivityMonitor$QcFailHistory;->currentDnsList:Ljava/util/List;

    const/4 v7, 0x0

    return v7

    :cond_15
    const-string/jumbo v7, "WifiConnectivityMonitor"

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->makeLogString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_16
    const/4 v7, 0x2

    return v7
.end method

.method public isDnsCheckOngoing()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mIsIcmpPingWaiting:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public quit()V
    .locals 3

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiConnectivityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[quit] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsCheckTAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsPinger:Landroid/net/DnsPinger;

    invoke-virtual {v0}, Landroid/net/DnsPinger;->cancelPings()V

    return-void
.end method

.method public requestDnsQuerying(IIZLjava/lang/String;Z)Z
    .locals 15

    const/4 v9, 0x0

    if-eqz p3, :cond_1

    new-instance v10, Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsList:Ljava/util/List;

    iget-object v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsList:Ljava/util/List;

    const-string/jumbo v11, "8.8.8.8"

    invoke-static {v11}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsList:Ljava/util/List;

    const-string/jumbo v11, "8.8.4.4"

    invoke-static {v11}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    new-array v10, v8, [I

    iput-object v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsCheckSuccesses:[I

    new-array v10, v8, [Ljava/lang/String;

    iput-object v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsResponseStrs:[Ljava/lang/String;

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v8, :cond_3

    iget-object v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsResponseStrs:[Ljava/lang/String;

    const-string/jumbo v11, ""

    aput-object v11, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsList:Ljava/util/List;

    iget-object v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get64(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/LinkProperties;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get64(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/LinkProperties;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v10, v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-set25(Lcom/android/server/wifi/WifiConnectivityMonitor;Ljava/util/List;)Ljava/util/List;

    :cond_2
    iget-object v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get33(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsList:Ljava/util/List;

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v11}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get33(Lcom/android/server/wifi/WifiConnectivityMonitor;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    iget-object v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v10}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-wrap2(Lcom/android/server/wifi/WifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v10

    if-eqz v10, :cond_4

    :try_start_0
    const-string/jumbo v10, "WifiConnectivityMonitor"

    const-string/jumbo v11, "Pinging %s on ssid [%s]: "

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    iget-object v13, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsList:Ljava/util/List;

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    iget-object v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    const/4 v5, 0x0

    :goto_3
    move/from16 v0, p1

    if-ge v5, v0, :cond_9

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v8, :cond_6

    :try_start_1
    iget-object v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsList:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsList:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/net/InetAddress;

    invoke-virtual {v10}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_8

    if-nez p4, :cond_5

    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    iget-object v12, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsPinger:Landroid/net/DnsPinger;

    iget-object v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsList:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/net/InetAddress;

    iget-object v13, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v13}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v13}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    mul-int/lit8 v13, v5, 0x0

    add-int/lit8 v13, v13, 0x64

    move/from16 v0, p2

    invoke-virtual {v12, v10, v0, v13}, Landroid/net/DnsPinger;->pingDnsAsync(Ljava/net/InetAddress;II)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    const/4 v9, 0x1

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :catch_0
    move-exception v3

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_5
    if-eqz p5, :cond_7

    :try_start_2
    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    iget-object v12, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsPinger:Landroid/net/DnsPinger;

    iget-object v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsList:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/net/InetAddress;

    iget-object v13, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v13}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v13}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    mul-int/lit8 v13, v5, 0x0

    add-int/lit8 v13, v13, 0x64

    move/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v12, v10, v0, v13, v1}, Landroid/net/DnsPinger;->pingDnsAsyncSpecificForce(Ljava/net/InetAddress;IILjava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v4

    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get0()Z

    move-result v10

    if-eqz v10, :cond_6

    const-string/jumbo v10, "WifiConnectivityMonitor"

    const-string/jumbo v11, "IndexOutOfBoundsException"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_7
    :try_start_3
    iget-object v11, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    iget-object v12, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsPinger:Landroid/net/DnsPinger;

    iget-object v10, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsList:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/net/InetAddress;

    iget-object v13, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v13}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->this$0:Lcom/android/server/wifi/WifiConnectivityMonitor;

    invoke-static {v13}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get81(Lcom/android/server/wifi/WifiConnectivityMonitor;)Lcom/android/server/wifi/WifiConnectivityMonitor$ParameterManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    mul-int/lit8 v13, v5, 0x0

    add-int/lit8 v13, v13, 0x64

    move/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v12, v10, v0, v13, v1}, Landroid/net/DnsPinger;->pingDnsAsyncSpecific(Ljava/net/InetAddress;IILjava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_8
    const-string/jumbo v10, "WifiConnectivityMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Loopback address (::1) is detected at DNS"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_6

    :cond_9
    invoke-static {}, Lcom/android/server/wifi/WifiConnectivityMonitor;->-get3()Z

    move-result v10

    if-eqz v10, :cond_a

    const-string/jumbo v10, "WifiConnectivityMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[REQUEST] "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mDnsCheckTAG:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/wifi/WifiConnectivityMonitor$DnsCheck;->mIdDnsMap:Ljava/util/HashMap;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return v9
.end method

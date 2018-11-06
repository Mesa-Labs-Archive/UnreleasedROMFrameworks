.class public Lcom/samsung/android/server/wifi/dqa/ReportUtil;
.super Ljava/lang/Object;
.source "ReportUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiIssueDetector"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendDhcpInfo(Landroid/os/Bundle;Z)V
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->getInstance()Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->getLastDhcpResults()Landroid/net/DhcpResults;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string/jumbo v6, "dhcp"

    iget v7, v0, Landroid/net/DhcpResults;->leaseDuration:I

    if-eqz v7, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p0, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet4Address;

    if-eqz v4, :cond_1

    const-string/jumbo v4, "ip"

    iget-object v6, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v4, v0, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    if-eqz v4, :cond_2

    const-string/jumbo v4, "gw"

    iget-object v6, v0, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v4, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v4, :cond_3

    const-string/jumbo v4, "networkPrefix"

    iget-object v6, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v6

    invoke-virtual {p0, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    const/4 v3, 0x0

    iget-object v4, v0, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    instance-of v4, v1, Ljava/net/Inet4Address;

    if-eqz v4, :cond_4

    if-nez v3, :cond_7

    const-string/jumbo v4, "dns1"

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    add-int/lit8 v3, v3, 0x1

    if-le v3, v5, :cond_4

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {v0}, Landroid/net/DhcpResults;->clear()V

    :cond_6
    return-void

    :cond_7
    const-string/jumbo v4, "dns2"

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static appendWifiInfo(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->getInstance()Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->getLastWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    const-string/jumbo v1, "ssid"

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "bssid"

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "netid"

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static getReportDataForAssocReject(ILjava/lang/String;IIIII)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "netid"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "bssid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "configStatus"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "numAssoc"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "configSelectionStatus"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "configSelectionDisableReason"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getReportDataForAuthFail(IIIIII)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "netid"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "configStatus"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "numAssoc"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "configSelectionStatus"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "configSelectionDisableReason"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getReportDataForChangeState(Z)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "state"

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getReportDataForConnectTranstion(I)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "apTypeInt"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/samsung/android/server/wifi/dqa/ReportUtil;->appendWifiInfo(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/dqa/ReportUtil;->appendDhcpInfo(Landroid/os/Bundle;Z)V

    return-object v0
.end method

.method public static getReportDataForDhcpResult(I)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "dhcpFailReason"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getReportDataForDisconnectBySleepPolicy(I)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sleep_policy"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getReportDataForDisconnectTranstion(ZII)Landroid/os/Bundle;
    .locals 4

    invoke-static {}, Lcom/samsung/android/server/wifi/dqa/ReportUtil;->getReportDataForStateMachine()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "screen_on"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sleep_policy"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "adpsState"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "conn_duration"

    invoke-static {}, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->getInstance()Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->getConnectedDurationMin()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/server/wifi/dqa/ReportUtil;->appendWifiInfo(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/dqa/ReportUtil;->appendDhcpInfo(Landroid/os/Bundle;Z)V

    return-object v0

    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static getReportDataForFwHang(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    invoke-static {}, Lcom/samsung/android/server/wifi/dqa/ReportUtil;->getReportDataForStateMachine()Landroid/os/Bundle;

    move-result-object v1

    if-eqz p0, :cond_0

    const-string/jumbo v2, " "

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    const-string/jumbo v2, "reason"

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method public static getReportDataForHidlDeath()Landroid/os/Bundle;
    .locals 1

    invoke-static {}, Lcom/samsung/android/server/wifi/dqa/ReportUtil;->getReportDataForStateMachine()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getReportDataForL2ConnectFail(I)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "netid"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getReportDataForL2Connected(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "netid"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "bssid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getReportDataForRoamingDhcpStart(Ljava/lang/String;Ljava/lang/String;IZ)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "ssid"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "bssid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "roaming_dhcp"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "roaming_nud_probe"

    if-eqz p3, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static getReportDataForRoamingEnter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    invoke-static {}, Lcom/samsung/android/server/wifi/dqa/ReportUtil;->getReportDataForStateMachine()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "roaming_type"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ssid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "bssid"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getReportDataForStateMachine()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "pstate"

    invoke-static {}, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->getInstance()Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->getLastWifiStateMachineStateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "pmsg"

    invoke-static {}, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->getInstance()Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->getLastProceedMessageId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "ppmsg"

    invoke-static {}, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->getInstance()Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->getPrevProceedMessageId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getReportDataForSupplicantStartFail(I)Landroid/os/Bundle;
    .locals 2

    invoke-static {}, Lcom/samsung/android/server/wifi/dqa/ReportUtil;->getReportDataForStateMachine()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getReportDataForTryToConnect(ILjava/lang/String;ILjava/lang/String;Z)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "netid"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "ssid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "numAssoc"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "bssid"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "isLinkDebouncing"

    if-eqz p4, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getReportDataForUnstableAp(I)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "netid"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getReportDataForUnwantedMessage(I)Landroid/os/Bundle;
    .locals 4

    invoke-static {}, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->getInstance()Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->getLastWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "ssid"

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "bssid"

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "unwanted_reason"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getReportDataForWifiManagerApi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "netid"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "apiName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "callUid"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "callBy"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getReportDataForWifiManagerApi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "ssid"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "apiName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "callUid"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "callBy"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getReportDataForWifiManagerConnectApi(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "isAllowed"

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "ssid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "apiName"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "callUid"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getReportDataFromBigDataParamsOfASSO(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7

    const-string/jumbo v4, " "

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/16 v5, 0x9

    if-ne v4, v5, :cond_0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const/4 v1, 0x1

    const-string/jumbo v4, "reason"

    add-int/lit8 v2, v1, 0x1

    aget-object v5, v0, v1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v2, 0x1

    const-string/jumbo v4, "wpaSecureType"

    add-int/lit8 v2, v1, 0x1

    aget-object v5, v0, v1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "scanCount"

    add-int/lit8 v1, v2, 0x1

    aget-object v5, v0, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "scanCountSameChannel"

    add-int/lit8 v2, v1, 0x1

    aget-object v5, v0, v1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "freqeuncy"

    add-int/lit8 v1, v2, 0x1

    aget-object v5, v0, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "rssi"

    add-int/lit8 v2, v1, 0x1

    aget-object v5, v0, v1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "oui"

    add-int/lit8 v1, v2, 0x1

    aget-object v5, v0, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_0
    const-string/jumbo v4, "WifiIssueDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bigdata ASSO args length changed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4
.end method

.method public static getReportDataFromBigDataParamsOfDISC(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 7

    const-string/jumbo v4, " "

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/16 v5, 0x16

    if-ne v4, v5, :cond_0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const-string/jumbo v4, "wpaSecureType"

    const/4 v5, 0x0

    const/4 v1, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "wpaState"

    add-int/lit8 v2, v1, 0x1

    aget-object v5, v0, v1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "scanCount"

    add-int/lit8 v1, v2, 0x1

    aget-object v5, v0, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "scanCountSameChannel"

    add-int/lit8 v2, v1, 0x1

    aget-object v5, v0, v1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "disconnectReason"

    add-int/lit8 v1, v2, 0x1

    aget-object v5, v0, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "locallyGenerated"

    add-int/lit8 v2, v1, 0x1

    aget-object v5, v0, v1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v2, 0x1

    const-string/jumbo v4, "oui"

    add-int/lit8 v2, v1, 0x1

    aget-object v5, v0, v1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "freqeuncy"

    add-int/lit8 v1, v2, 0x1

    aget-object v5, v0, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "bandWidth"

    add-int/lit8 v2, v1, 0x1

    aget-object v5, v0, v1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "rssi"

    add-int/lit8 v1, v2, 0x1

    aget-object v5, v0, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "dataRate"

    add-int/lit8 v2, v1, 0x1

    aget-object v5, v0, v1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "80211mode"

    add-int/lit8 v1, v2, 0x1

    aget-object v5, v0, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "antenna"

    add-int/lit8 v2, v1, 0x1

    aget-object v5, v0, v1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "muMimo"

    add-int/lit8 v1, v2, 0x1

    aget-object v5, v0, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "passpoint"

    add-int/lit8 v2, v1, 0x1

    aget-object v5, v0, v1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "snr"

    add-int/lit8 v1, v2, 0x1

    aget-object v5, v0, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "noise"

    add-int/lit8 v2, v1, 0x1

    aget-object v5, v0, v1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "akm"

    add-int/lit8 v1, v2, 0x1

    aget-object v5, v0, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "roamingCount"

    add-int/lit8 v2, v1, 0x1

    aget-object v5, v0, v1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "apTypeInt"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    :cond_0
    const-string/jumbo v4, "WifiIssueDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bigdata DISC args length changed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4
.end method

.method public static getReportDataFromBigDataParamsOfONOF(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    const-string/jumbo v2, " "

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "wifiState"

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "callBy"

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "wifiConnected"

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "snsState"

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string/jumbo v2, "WifiIssueDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bigdata ONOF args length changed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method public static startTimerDuringConnection()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->getInstance()Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->startTimerDuringConnection()V

    return-void
.end method

.method public static updateDhcpResults(Landroid/net/DhcpResults;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->getInstance()Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->updateDhcpResults(Landroid/net/DhcpResults;)V

    return-void
.end method

.method public static updateWifiInfo(Landroid/net/wifi/WifiInfo;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->getInstance()Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->updateWifiInfo(Landroid/net/wifi/WifiInfo;)V

    return-void
.end method

.method public static updateWifiStateMachineProcessMessage(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->getInstance()Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/dqa/ReportUtil$ReportStore;->updateWifiStateMachineProcessMessage(Ljava/lang/String;I)V

    return-void
.end method

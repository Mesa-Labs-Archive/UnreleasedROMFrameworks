.class public Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;
.super Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIfaceCallback$Stub;
.source "SemHostapdApIfaceCallback.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "SemHostapdApIfaceCallback"


# instance fields
.field private final mInterface:Ljava/lang/String;

.field private final mSemWifiApMonitor:Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;)V
    .locals 0

    invoke-direct {p0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdApIfaceCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mInterface:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mSemWifiApMonitor:Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    return-void
.end method

.method protected static logd(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "SemHostapdApIfaceCallback"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public hostapd_ap_changed_channel(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hostapd_ap_changed_channel= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mSemWifiApMonitor:Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->broadcastChangedChannel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public hostapd_ap_csa_finished(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hostapd_ap_csa_finished= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mSemWifiApMonitor:Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->broadcastCsaFinished(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public hostapd_ap_sta_connected(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hostapd_ap_sta_connected= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mSemWifiApMonitor:Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->broadcastApStaConnected(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public hostapd_ap_sta_disassociation(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hostapd_ap_sta_disassociation= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mSemWifiApMonitor:Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->broadcastApStaDisassociation(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public hostapd_ap_sta_disconnected(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hostapd_ap_sta_disconnected= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mSemWifiApMonitor:Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->broadcastApStaDisconnected(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public hostapd_ap_sta_possible_psk_mismatch(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hostapd_ap_sta_possible_psk_mismatch= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mSemWifiApMonitor:Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->broadcastApStaPossiblePSKmismatch(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public hostapd_ctrl_event_driver_state(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hostapd_ctrl_event_driver_state= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mSemWifiApMonitor:Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->broadcastCtrlEventDriverState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public hostapd_wps_fail(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hostapd_wps_fail= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mSemWifiApMonitor:Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->broadcastWPSfail(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public hostapd_wps_pin_needed(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hostapd_wps_pin_needed= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mSemWifiApMonitor:Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->broadcastWPSPinNeeded(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public hostapd_wps_success(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hostapd_wps_success= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mSemWifiApMonitor:Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->broadcastWPSsuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public hostapd_wps_timeout(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hostapd_wps_timeout= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mSemWifiApMonitor:Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->broadcastWPStimeout(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notify_hostapd_ap_sta_deauth(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notify_hostapd_ap_sta_deauth= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mSemWifiApMonitor:Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->broadcastApStaDeauth(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notify_hostapd_ap_sta_new(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notify_hostapd_ap_sta_new= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mSemWifiApMonitor:Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->broadcastApStaNew(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notify_hostapd_ap_sta_notallow(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notify_hostapd_ap_sta_notallow= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mSemWifiApMonitor:Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->broadcastApStaNotAllow(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notify_hostapd_ap_sta_remove(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notify_hostapd_ap_sta_remove= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mSemWifiApMonitor:Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->broadcastApStaRemove(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notify_hostapd_sta_notify_disassoc(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notify_hostapd_sta_notify_disassoc= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mSemWifiApMonitor:Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/softap/SemHostapdApIfaceCallback;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/softap/SemWifiApMonitor;->broadcastStaNotifyDisassoc(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

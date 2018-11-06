.class Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;
.super Landroid/os/Handler;
.source "SoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SoftApManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HotspotPSHandler"
.end annotation


# instance fields
.field private isPSModeEnabled:Z

.field private packetOfBCMC:I

.field private packetOfRetry:I

.field final synthetic this$0:Lcom/android/server/wifi/SoftApManager;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/SoftApManager;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput v0, p0, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->packetOfRetry:I

    iput v0, p0, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->packetOfBCMC:I

    iput-boolean v0, p0, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->isPSModeEnabled:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    const/4 v9, 0x1

    const/4 v10, 0x0

    :try_start_0
    iget-object v11, p0, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v11}, Lcom/android/server/wifi/SoftApManager;->-get5(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApManager$Listener;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/server/wifi/SoftApManager$Listener;->getWifiApState()I

    move-result v7

    const/16 v11, 0xa

    if-eq v7, v11, :cond_0

    const/16 v11, 0xb

    if-ne v7, v11, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v11, p0, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v11}, Lcom/android/server/wifi/SoftApManager;->-get15(Lcom/android/server/wifi/SoftApManager;)Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;

    move-result-object v11

    if-nez v11, :cond_2

    return-void

    :cond_2
    iget-object v11, p0, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v11}, Lcom/android/server/wifi/SoftApManager;->-get7(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string/jumbo v9, "SoftApManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mMobileHotspotPowerSaveOff value : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v11}, Lcom/android/server/wifi/SoftApManager;->-get7(Lcom/android/server/wifi/SoftApManager;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string/jumbo v9, "SoftApManager"

    const-string/jumbo v10, "hasMessages(0) : true"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 v6, 0x0

    iget-object v11, p0, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v11}, Lcom/android/server/wifi/SoftApManager;->-get4(Lcom/android/server/wifi/SoftApManager;)Landroid/content/Context;

    move-result-object v11

    const-string/jumbo v12, "wifi"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    if-eqz v8, :cond_5

    const-string/jumbo v11, "ALL"

    invoke-virtual {v8, v11}, Landroid/net/wifi/WifiManager;->semGetStationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    return-void

    :cond_5
    if-eqz v6, :cond_6

    const-string/jumbo v11, "=|\\s"

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    const/4 v11, 0x3

    :try_start_1
    aget-object v11, v5, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->packetOfRetry:I

    const/4 v11, 0x5

    aget-object v11, v5, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->packetOfBCMC:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_6
    :try_start_2
    iget v11, p0, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->packetOfRetry:I

    iget-object v12, p0, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v12}, Lcom/android/server/wifi/SoftApManager;->-get11(Lcom/android/server/wifi/SoftApManager;)I

    move-result v12

    sub-int v4, v11, v12

    iget v11, p0, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->packetOfBCMC:I

    iget-object v12, p0, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v12}, Lcom/android/server/wifi/SoftApManager;->-get10(Lcom/android/server/wifi/SoftApManager;)I

    move-result v12

    sub-int v3, v11, v12

    const-string/jumbo v11, "SoftApManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "packetOfRetry - mPreviousRtpacket : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " mPreviousMcBcastPacket-packetOfBCMC : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v11}, Lcom/android/server/wifi/SoftApManager;->-get11(Lcom/android/server/wifi/SoftApManager;)I

    move-result v11

    if-eqz v11, :cond_9

    const/16 v11, 0x64

    if-le v4, v11, :cond_9

    move v11, v9

    :goto_0
    iget-object v12, p0, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v12}, Lcom/android/server/wifi/SoftApManager;->-get10(Lcom/android/server/wifi/SoftApManager;)I

    move-result v12

    if-eqz v12, :cond_a

    const/16 v12, 0x14

    if-le v3, v12, :cond_a

    :goto_1
    or-int/2addr v9, v11

    if-eqz v9, :cond_b

    const-string/jumbo v9, "SoftApManager"

    const-string/jumbo v10, "by amount packet"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->pause()V

    iget-object v9, p0, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/4 v10, 0x0

    const-wide/16 v12, 0x258

    invoke-static {v9, v10, v12, v13}, Lcom/android/server/wifi/SoftApManager;->-wrap5(Lcom/android/server/wifi/SoftApManager;ZJ)V

    iget-object v9, p0, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->this$0:Lcom/android/server/wifi/SoftApManager;

    const-wide/16 v10, 0x258

    invoke-static {v9, v10, v11}, Lcom/android/server/wifi/SoftApManager;->-wrap3(Lcom/android/server/wifi/SoftApManager;J)V

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v9, Landroid/net/wifi/WifiApCust;->DBG:Z

    if-eqz v9, :cond_7

    const-string/jumbo v9, "SoftApManager"

    const-string/jumbo v10, "ArrayIndexOutOfBoundsException occurs"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v9, p0, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/4 v10, 0x0

    const-wide/16 v12, 0x258

    invoke-static {v9, v10, v12, v13}, Lcom/android/server/wifi/SoftApManager;->-wrap5(Lcom/android/server/wifi/SoftApManager;ZJ)V

    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->pause()V

    return-void

    :catch_1
    move-exception v2

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v9, Landroid/net/wifi/WifiApCust;->DBG:Z

    if-eqz v9, :cond_8

    const-string/jumbo v9, "SoftApManager"

    const-string/jumbo v10, "NumberFormatException occurs"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v9, p0, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->this$0:Lcom/android/server/wifi/SoftApManager;

    const/4 v10, 0x0

    const-wide/16 v12, 0x258

    invoke-static {v9, v10, v12, v13}, Lcom/android/server/wifi/SoftApManager;->-wrap5(Lcom/android/server/wifi/SoftApManager;ZJ)V

    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->pause()V

    return-void

    :cond_9
    move v11, v10

    goto :goto_0

    :cond_a
    move v9, v10

    goto :goto_1

    :cond_b
    iget-object v9, p0, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget v10, p0, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->packetOfRetry:I

    invoke-static {v9, v10}, Lcom/android/server/wifi/SoftApManager;->-set4(Lcom/android/server/wifi/SoftApManager;I)I

    iget-object v9, p0, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget v10, p0, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->packetOfBCMC:I

    invoke-static {v9, v10}, Lcom/android/server/wifi/SoftApManager;->-set3(Lcom/android/server/wifi/SoftApManager;I)I

    const-wide/16 v10, 0x2710

    const/4 v9, 0x0

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    const-string/jumbo v9, "SoftApManager"

    const-string/jumbo v10, "NullPointerException, as psHandler object is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method pause()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->-set4(Lcom/android/server/wifi/SoftApManager;I)I

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$HotspotPSHandler;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApManager;->-set3(Lcom/android/server/wifi/SoftApManager;I)I

    return-void
.end method

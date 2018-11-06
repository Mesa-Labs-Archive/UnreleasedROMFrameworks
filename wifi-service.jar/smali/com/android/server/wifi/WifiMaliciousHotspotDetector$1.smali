.class Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiMaliciousHotspotDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMaliciousHotspotDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final synthetic -android-net-NetworkInfo$DetailedStateSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$android$net$NetworkInfo$DetailedState:[I

.field final synthetic this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;


# direct methods
.method private static synthetic -getandroid-net-NetworkInfo$DetailedStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->-android-net-NetworkInfo$DetailedStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->-android-net-NetworkInfo$DetailedStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/net/NetworkInfo$DetailedState;->values()[Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    :goto_0
    :try_start_1
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    :goto_1
    :try_start_2
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    :goto_2
    :try_start_3
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    :goto_3
    :try_start_4
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    :goto_4
    :try_start_5
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    :goto_5
    :try_start_6
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    :try_start_7
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    :goto_7
    :try_start_8
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    :goto_8
    :try_start_9
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    :goto_9
    :try_start_a
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    :goto_a
    :try_start_b
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    :goto_b
    :try_start_c
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    :goto_c
    sput-object v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->-android-net-NetworkInfo$DetailedStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_c

    :catch_1
    move-exception v1

    goto :goto_b

    :catch_2
    move-exception v1

    goto :goto_a

    :catch_3
    move-exception v1

    goto :goto_9

    :catch_4
    move-exception v1

    goto :goto_8

    :catch_5
    move-exception v1

    goto :goto_7

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_4

    :catch_9
    move-exception v1

    goto :goto_3

    :catch_a
    move-exception v1

    goto :goto_2

    :catch_b
    move-exception v1

    goto/16 :goto_1

    :catch_c
    move-exception v1

    goto/16 :goto_0
.end method

.method constructor <init>(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get7(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get7(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->getEnabled()I

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get12(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-set4(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/util/List;)Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get7(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->checkKarmaApInScanResult()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "com.sec.android.wifi.notify.mhd"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string/jumbo v1, "type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v1, "startComplete"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v15, :cond_0

    if-eqz v13, :cond_0

    const-string/jumbo v1, "start"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get0()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "WifiMHD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " begins, stop detection."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->stopArpSpoofingDetection()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->stopSslStripDetection()V

    const-string/jumbo v1, "roam"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-set6(Z)Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-set0(Z)Z

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "complete"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get0()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "WifiMHD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is complete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string/jumbo v1, "roam"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-set6(Z)Z

    :cond_6
    :goto_1
    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get13()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get1()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get0()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "WifiMHD"

    const-string/jumbo v2, "Restart detection."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap1(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Z

    move-result v1

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->startArpSpoofingDetection()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->startSslStripDetection()V

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get7(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get7(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->sendDelayedPartialScan()V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v1, "dhcp"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-set0(Z)Z

    goto :goto_1

    :cond_a
    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string/jumbo v1, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/NetworkInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const-string/jumbo v1, "wifiInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    invoke-static {v2, v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-set5(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const-string/jumbo v1, "linkProperties"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    invoke-static {v2, v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-set1(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap0(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->-getandroid-net-NetworkInfo$DetailedStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get11(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get11(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get6(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get7(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    move-result-object v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get7(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->getEnabled()I

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get3(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get3(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "MHDK - DETECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get12(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get11(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    if-eqz v11, :cond_b

    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const-string/jumbo v2, "MHDK"

    const-string/jumbo v3, "CONNECTEDO"

    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap8(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get3(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/HashMap;

    move-result-object v1

    const-string/jumbo v2, "MHDK - DETECTED/CONNECTED"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v2, v11}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap3(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static/range {v1 .. v9}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap9(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;IZILjava/lang/String;Ljava/lang/String;III)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-virtual {v1, v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->checkForMaliciousHotspotAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v5, v2, v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->handleMaliciousHotspotDetection(Ljava/lang/String;II)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const-string/jumbo v2, "MHDK"

    const-string/jumbo v3, "CONNECTEDS"

    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap8(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get7(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    move-result-object v1

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get7(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->sendDelayedPartialScan()V

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap1(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->startSslStripDetection()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->startArpSpoofingDetection()V

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->stopSslStripDetection()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->stopArpSpoofingDetection()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->notifyMaliciousHotspotDetected(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string/jumbo v1, "wifi_state"

    const/4 v2, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    const/4 v1, 0x3

    if-ne v14, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/16 v2, 0x64

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-set2(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;[Ljava/lang/String;)[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-set3(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;I)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get7(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get7(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->mKarmaApCandidate:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get7(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->setSpecialSsid()V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get10(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get10(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->setCountryIso(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

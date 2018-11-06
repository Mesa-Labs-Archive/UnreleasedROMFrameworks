.class Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;
.super Ljava/lang/Object;
.source "WifiMaliciousHotspotDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMaliciousHotspotDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KarmaApDetector"
.end annotation


# instance fields
.field private final DEFAULT_STATE:I

.field private final DELAYED_PARTIAL_SCAN_SEC:I

.field private final TAG:Ljava/lang/String;

.field private insertedSsid:Ljava/lang/String;

.field private mDelayedPartialScanSec:I

.field public mKarmaApCandidate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKarmaApDetectionEnabled:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->insertedSsid:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "WifiMHD::k"

    iput-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->TAG:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->DEFAULT_STATE:I

    iput v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->mKarmaApDetectionEnabled:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->insertedSsid:Ljava/lang/String;

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->DELAYED_PARTIAL_SCAN_SEC:I

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->mDelayedPartialScanSec:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->mKarmaApCandidate:Ljava/util/List;

    return-void
.end method

.method private getSpecialNetwork()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method private insertSpecialSsid(I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public checkKarmaApInScanResult()V
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->mKarmaApDetectionEnabled:I

    if-nez v1, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->insertedSsid:Ljava/lang/String;

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get9(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_2
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v18

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object/from16 v0, v18

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->insertedSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, v18

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v18

    iget v1, v0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v18

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap4(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Landroid/net/wifi/ScanResult;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v13, 0x0

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->mKarmaApCandidate:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->mKarmaApDetectionEnabled:I

    const/4 v3, 0x1

    invoke-virtual {v1, v5, v3, v2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->handleMaliciousHotspotDetection(Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get6(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get3(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v17, "(O)"

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap0(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get12(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v20

    if-eqz v20, :cond_6

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const-string/jumbo v2, "MHDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DETECTED"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap8(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const-string/jumbo v2, "MHDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CONNECTED"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap8(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get3(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/HashMap;

    move-result-object v1

    const-string/jumbo v2, "MHDK - DETECTED/CONNECTED"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static/range {v1 .. v9}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap9(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;IZILjava/lang/String;Ljava/lang/String;III)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static/range {v1 .. v9}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap9(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;IZILjava/lang/String;Ljava/lang/String;III)V

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v17, "(S)"

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const-string/jumbo v2, "MHDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DETECTED"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap8(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get3(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/HashMap;

    move-result-object v1

    const-string/jumbo v2, "MHDK - DETECTED"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static/range {v1 .. v9}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap9(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;IZILjava/lang/String;Ljava/lang/String;III)V

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get0()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "WifiMHD::k"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initial detection - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->mKarmaApCandidate:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_9
    if-eqz v13, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->resetSpecialSsid()V

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->doPartialScan(I)V

    goto :goto_3

    :cond_a
    return-void
.end method

.method public doPartialScan()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap0(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get12(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->doPartialScan(I)V

    :cond_1
    return-void
.end method

.method public doPartialScan(I)V
    .locals 4

    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-wrap0(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    new-array v1, v3, [I

    const/4 v3, 0x0

    aput p1, v1, v3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x24

    iput v3, v2, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "channel"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get12(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    const/4 v2, 0x0

    return-void
.end method

.method public getEnabled()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->mKarmaApDetectionEnabled:I

    return v0
.end method

.method public getInsertedSpecialSsid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->insertedSsid:Ljava/lang/String;

    return-object v0
.end method

.method public removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    const/16 v3, 0x22

    const/4 v2, 0x1

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    return-object p1
.end method

.method public declared-synchronized resetSpecialSsid()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public sendDelayedPartialScan()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-static {v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->-get7(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->getEnabled()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    iget v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->mDelayedPartialScanSec:I

    int-to-long v2, v1

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public setEnabled(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->mKarmaApDetectionEnabled:I

    return-void
.end method

.method public declared-synchronized setSpecialSsid()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

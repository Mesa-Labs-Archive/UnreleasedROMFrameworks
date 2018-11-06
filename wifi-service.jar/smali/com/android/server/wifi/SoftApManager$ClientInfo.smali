.class Lcom/android/server/wifi/SoftApManager$ClientInfo;
.super Ljava/lang/Object;
.source "SoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SoftApManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientInfo"
.end annotation


# instance fields
.field public mAntmode:I

.field public mBw:I

.field public mConnectedTime:J

.field public mDataRate:I

.field public mDeviceName:Ljava/lang/String;

.field public mDis:I

.field public mIp:Ljava/lang/String;

.field public mMac:Ljava/lang/String;

.field public mMode:I

.field public mMumimo:I

.field public mOui:Ljava/lang/String;

.field public mRssi:I

.field public mSrsn:I

.field public mState:Ljava/lang/String;

.field public mWrsn:I

.field final synthetic this$0:Lcom/android/server/wifi/SoftApManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mState:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mIp:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mDeviceName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mMac:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mConnectedTime:J

    const-string/jumbo v0, "aa:aa:aa"

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mOui:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mDis:I

    iput v2, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mSrsn:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mWrsn:I

    iput v2, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mBw:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mRssi:I

    iput v2, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mDataRate:I

    iput v2, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mMode:I

    iput v2, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mAntmode:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mMumimo:I

    iput-object p2, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mMac:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mOui:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public setState(Ljava/lang/String;I)V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MHSClient setState() ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->this$0:Lcom/android/server/wifi/SoftApManager;

    iget-object v8, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mMac:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/server/wifi/SoftApManager;->-wrap1(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mState:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " wrsn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/wifi/WifiApCust;->addMHSClientHistoryLog(Ljava/lang/String;)V

    const-string/jumbo v6, "sta_notidisassoc"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mState:Ljava/lang/String;

    const-string/jumbo v7, "sta_assoc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mIp:Ljava/lang/String;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iput v9, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mDis:I

    iput v9, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mSrsn:I

    :cond_0
    :goto_0
    const-string/jumbo v6, "sta_remove"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v6}, Lcom/android/server/wifi/SoftApManager;->-get4(Lcom/android/server/wifi/SoftApManager;)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mMac:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager;->semGetStationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v6, "=|\\s"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xa

    :try_start_0
    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mBw:I

    const/16 v6, 0xb

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mRssi:I

    const/16 v6, 0xc

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mDataRate:I

    const/16 v6, 0xd

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mMode:I

    const/16 v6, 0xe

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mAntmode:I

    const/16 v6, 0xf

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mMumimo:I

    const/16 v6, 0x10

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mWrsn:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget v6, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mSrsn:I

    if-ne v6, v9, :cond_a

    const-string/jumbo v6, "SoftApManager"

    const-string/jumbo v7, "MHSClient => send MHDC ip failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mOui:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mDis:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mSrsn:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mWrsn:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mBw:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mRssi:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mDataRate:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mAntmode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mMumimo:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "SoftApManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "   =>  send MHDC : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v6, v4}, Lcom/android/server/wifi/SoftApManager;->-wrap4(Lcom/android/server/wifi/SoftApManager;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->this$0:Lcom/android/server/wifi/SoftApManager;

    invoke-static {v6}, Lcom/android/server/wifi/SoftApManager;->-get6(Lcom/android/server/wifi/SoftApManager;)Ljava/util/Hashtable;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mMac:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mState:Ljava/lang/String;

    return-void

    :cond_4
    iget v6, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mSrsn:I

    if-nez v6, :cond_0

    iput v10, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mDis:I

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v6, "sta_mismatch"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iput v9, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mDis:I

    iput v10, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mSrsn:I

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v6, "sta_notallow"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iput v9, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mDis:I

    iput v11, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mSrsn:I

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v6, "disassoc_sta"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iput v9, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mDis:I

    iput v12, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mSrsn:I

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v6, "sta_disassoc"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iput v9, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mDis:I

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v6, "sta_deauth"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iput v9, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mDis:I

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v6, Landroid/net/wifi/WifiApCust;->DBG:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "SoftApManager"

    const-string/jumbo v7, "MHDC ArrayIndexOutOfBoundsException occurs"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_1
    move-exception v1

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v6, Landroid/net/wifi/WifiApCust;->DBG:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "SoftApManager"

    const-string/jumbo v7, "MHDC NumberFormatException occurs"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    iget v6, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mSrsn:I

    if-ne v6, v10, :cond_b

    const-string/jumbo v6, "SoftApManager"

    const-string/jumbo v7, "MHSClient => send MHDC wrong password "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    iget v6, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mSrsn:I

    if-ne v6, v11, :cond_c

    const-string/jumbo v6, "SoftApManager"

    const-string/jumbo v7, "MHSClient => send MHDC not allowed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_c
    iget v6, p0, Lcom/android/server/wifi/SoftApManager$ClientInfo;->mSrsn:I

    if-ne v6, v12, :cond_2

    const-string/jumbo v6, "SoftApManager"

    const-string/jumbo v7, "MHSClient => send MHDC Client removed from allowed list"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

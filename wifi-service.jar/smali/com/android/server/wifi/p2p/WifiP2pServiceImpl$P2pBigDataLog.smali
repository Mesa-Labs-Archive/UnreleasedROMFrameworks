.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;
.super Ljava/lang/Object;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "P2pBigDataLog"
.end annotation


# static fields
.field private static final KEY_CNM:Ljava/lang/String; = "WCVN"

.field private static final KEY_CONN_PERIOD:Ljava/lang/String; = "CONP"

.field private static final KEY_CONN_RECEIVED:Ljava/lang/String; = "CSOR"

.field private static final KEY_DISCONNECT_REASON:Ljava/lang/String; = "DISR"

.field private static final KEY_DRV_VER:Ljava/lang/String; = "WDRV"

.field private static final KEY_FREQ:Ljava/lang/String; = "FREQ"

.field private static final KEY_FW_VER:Ljava/lang/String; = "WFWV"

.field private static final KEY_GROUP_FORMATION_RESULT:Ljava/lang/String; = "GRFR"

.field private static final KEY_GROUP_NEGO:Ljava/lang/String; = "GRNE"

.field private static final KEY_IS_GO:Ljava/lang/String; = "ISGO"

.field private static final KEY_NOA_PERIOD:Ljava/lang/String; = "NOAP"

.field private static final KEY_NUM_CLIENT:Ljava/lang/String; = "NOCL"

.field private static final KEY_PEER_DEVICE_TYPE:Ljava/lang/String; = "DEVT"

.field private static final KEY_PEER_GO_INTENT:Ljava/lang/String; = "PINT"

.field private static final KEY_PEER_MANUFACTURER:Ljava/lang/String; = "MANU"

.field private static final KEY_PERSISTENT:Ljava/lang/String; = "PSTC"

.field private static final KEY_PKG_NAME:Ljava/lang/String; = "PKGN"

.field private static final PATH_OF_WIFIVER_INFO:Ljava/lang/String; = "/data/misc/conn/.wifiver.info"

.field private static final TAG:Ljava/lang/String; = "P2pBigDataLog"

.field private static final WIFI_VER_PREFIX_BRCM:Ljava/lang/String; = "HD_ver"

.field private static final WIFI_VER_PREFIX_MAVL:Ljava/lang/String; = "received"

.field private static final WIFI_VER_PREFIX_QCA:Ljava/lang/String; = "FW:"

.field private static final WIFI_VER_PREFIX_QCOM:Ljava/lang/String; = "CNSS"

.field private static final WIFI_VER_PREFIX_SPRTRM:Ljava/lang/String; = "is 0x"


# instance fields
.field private final APP_ID:Ljava/lang/String;

.field public mChipsetName:Ljava/lang/String;

.field public mConnReceived:Ljava/lang/String;

.field public mConnectionPeriod:Ljava/lang/String;

.field public mDisconnectReason:Ljava/lang/String;

.field public mDriverVer:Ljava/lang/String;

.field public mFirmwareVer:Ljava/lang/String;

.field public mFreq:Ljava/lang/String;

.field public mGroupNego:Ljava/lang/String;

.field public mIsGroupOwner:Ljava/lang/String;

.field public mNoaPeriod:Ljava/lang/String;

.field public mNumClient:Ljava/lang/String;

.field public mPeerDevType:Ljava/lang/String;

.field public mPeerGOIntent:Ljava/lang/String;

.field public mPeerManufacturer:Ljava/lang/String;

.field public mPersistent:Ljava/lang/String;

.field public mPkgName:Ljava/lang/String;

.field public mResult:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "android.net.wifi.p2p"

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->APP_ID:Ljava/lang/String;

    return-void
.end method

.method private convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getChipsetName()Ljava/lang/String;
    .locals 10

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    const-string/jumbo v8, "/data/misc/conn/.wifiver.info"

    invoke-direct {v5, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_11

    const-string/jumbo v8, "HD_ver"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "1"
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    return-object v8

    :catch_0
    move-exception v3

    const-string/jumbo v8, "File Close error"

    return-object v8

    :cond_2
    :try_start_4
    const-string/jumbo v8, "CNSS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v8, "2"
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    return-object v8

    :catch_1
    move-exception v3

    const-string/jumbo v8, "File Close error"

    return-object v8

    :cond_5
    :try_start_6
    const-string/jumbo v8, "FW:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string/jumbo v8, "3"
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v1, :cond_6

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_7
    return-object v8

    :catch_2
    move-exception v3

    const-string/jumbo v8, "File Close error"

    return-object v8

    :cond_8
    :try_start_8
    const-string/jumbo v8, "received"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string/jumbo v8, "4"
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v1, :cond_9

    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_9
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_a
    return-object v8

    :catch_3
    move-exception v3

    const-string/jumbo v8, "File Close error"

    return-object v8

    :cond_b
    :try_start_a
    const-string/jumbo v8, "is 0x"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e

    const-string/jumbo v8, "5"
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v1, :cond_c

    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_c
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    :cond_d
    return-object v8

    :catch_4
    move-exception v3

    const-string/jumbo v8, "File Close error"

    return-object v8

    :cond_e
    :try_start_c
    const-string/jumbo v6, "NG"

    const-string/jumbo v8, "NG"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown String format..Full string is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v8

    if-eqz v1, :cond_f

    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_f
    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    :cond_10
    return-object v8

    :catch_5
    move-exception v3

    const-string/jumbo v8, "File Close error"

    return-object v8

    :cond_11
    :try_start_e
    const-string/jumbo v8, "file is null .. !"
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v1, :cond_12

    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_12
    if-eqz v5, :cond_13

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    :cond_13
    return-object v8

    :catch_6
    move-exception v3

    const-string/jumbo v8, "File Close error"

    return-object v8

    :cond_14
    if-eqz v1, :cond_15

    :try_start_10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_15
    if-eqz v5, :cond_16

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    :cond_16
    const-string/jumbo v8, "error"

    return-object v8

    :catch_7
    move-exception v3

    const-string/jumbo v8, "File Close error"

    return-object v8

    :catch_8
    move-exception v2

    :goto_0
    :try_start_11
    const-string/jumbo v8, "/data/misc/conn/.wifiver.info doesn\'t exist or there are something wrong on handling it"
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    if-eqz v0, :cond_17

    :try_start_12
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_17
    if-eqz v4, :cond_18

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9

    :cond_18
    return-object v8

    :catch_9
    move-exception v3

    const-string/jumbo v8, "File Close error"

    return-object v8

    :catchall_0
    move-exception v8

    :goto_1
    if-eqz v0, :cond_19

    :try_start_13
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_19
    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a

    :cond_1a
    throw v8

    :catch_a
    move-exception v3

    const-string/jumbo v8, "File Close error"

    return-object v8

    :catchall_1
    move-exception v8

    move-object v4, v5

    goto :goto_1

    :catchall_2
    move-exception v8

    move-object v0, v1

    move-object v4, v5

    goto :goto_1

    :catch_b
    move-exception v2

    move-object v4, v5

    goto :goto_0

    :catch_c
    move-exception v2

    move-object v0, v1

    move-object v4, v5

    goto :goto_0
.end method

.method private getDriverVer()Ljava/lang/String;
    .locals 14

    const/4 v13, -0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    const-string/jumbo v11, "/data/misc/conn/.wifiver.info"

    invoke-direct {v5, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_19

    const-string/jumbo v11, "HD_ver"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    if-eqz v10, :cond_5

    const-string/jumbo v11, "HD_ver:"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v13, :cond_2

    const-string/jumbo v11, "HD_ver:"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v9

    add-int/lit8 v9, v11, 0x1

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v10, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v7

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    return-object v7

    :catch_0
    move-exception v3

    const-string/jumbo v11, "File Close error"

    return-object v11

    :cond_2
    :try_start_4
    const-string/jumbo v7, "NG"

    :goto_0
    const-string/jumbo v11, "NG"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v11

    if-eqz v11, :cond_1c

    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_4
    return-object v10

    :cond_5
    :try_start_6
    const-string/jumbo v7, "NG"

    const-string/jumbo v11, "file was damaged, it need check !"
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v1, :cond_6

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_7
    return-object v11

    :catch_1
    move-exception v3

    const-string/jumbo v11, "File Close error"

    return-object v11

    :cond_8
    :try_start_8
    const-string/jumbo v11, "CNSS"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_c

    const-string/jumbo v11, "v"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v13, :cond_b

    const-string/jumbo v11, "v"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v9, v11

    const-string/jumbo v11, " CNSS"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v10, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v7

    if-eqz v1, :cond_9

    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_9
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_a
    return-object v7

    :catch_2
    move-exception v3

    const-string/jumbo v11, "File Close error"

    return-object v11

    :cond_b
    :try_start_a
    const-string/jumbo v7, "NG"

    goto :goto_0

    :cond_c
    const-string/jumbo v11, "FW:"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_10

    const-string/jumbo v11, "SW"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v13, :cond_f

    const-string/jumbo v11, "SW"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v9

    add-int/lit8 v9, v11, 0x1

    const-string/jumbo v11, "FW"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v8, v11, -0x2

    invoke-virtual {v10, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result-object v7

    if-eqz v1, :cond_d

    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_d
    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    :cond_e
    return-object v7

    :catch_3
    move-exception v3

    const-string/jumbo v11, "File Close error"

    return-object v11

    :cond_f
    :try_start_c
    const-string/jumbo v7, "NG"

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v11, "received"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_14

    const-string/jumbo v11, "-GPL"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v9, v11, -0x4

    if-eq v9, v13, :cond_13

    const-string/jumbo v11, "-GPL"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v10, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v7

    if-eqz v1, :cond_11

    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_11
    if-eqz v5, :cond_12

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    :cond_12
    return-object v7

    :catch_4
    move-exception v3

    const-string/jumbo v11, "File Close error"

    return-object v11

    :cond_13
    :try_start_e
    const-string/jumbo v7, "NG"

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v11, "is 0x"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_18

    const-string/jumbo v11, "cp version is "

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v12, "cp version is "

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int v9, v11, v12

    if-eq v9, v13, :cond_17

    const-string/jumbo v11, "date"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v8, v11, -0x2

    invoke-virtual {v10, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-result-object v7

    if-eqz v1, :cond_15

    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_15
    if-eqz v5, :cond_16

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    :cond_16
    return-object v7

    :catch_5
    move-exception v3

    const-string/jumbo v11, "File Close error"

    return-object v11

    :cond_17
    :try_start_10
    const-string/jumbo v7, "NG"

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v7, "NG"
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto/16 :goto_0

    :catch_6
    move-exception v3

    const-string/jumbo v11, "File Close error"

    return-object v11

    :cond_19
    :try_start_11
    const-string/jumbo v11, "file is null .. !"
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    if-eqz v1, :cond_1a

    :try_start_12
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_1a
    if-eqz v5, :cond_1b

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    :cond_1b
    return-object v11

    :catch_7
    move-exception v3

    const-string/jumbo v11, "File Close error"

    return-object v11

    :cond_1c
    if-eqz v1, :cond_1d

    :try_start_13
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_1d
    if-eqz v5, :cond_1e

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    :cond_1e
    const-string/jumbo v11, "error"

    return-object v11

    :catch_8
    move-exception v3

    const-string/jumbo v11, "File Close error"

    return-object v11

    :catch_9
    move-exception v2

    :goto_1
    :try_start_14
    const-string/jumbo v11, "/data/misc/conn/.wifiver.info doesn\'t exist or there are something wrong on handling it"
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    if-eqz v0, :cond_1f

    :try_start_15
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_1f
    if-eqz v4, :cond_20

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a

    :cond_20
    return-object v11

    :catch_a
    move-exception v3

    const-string/jumbo v11, "File Close error"

    return-object v11

    :catchall_0
    move-exception v11

    :goto_2
    if-eqz v0, :cond_21

    :try_start_16
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_21
    if-eqz v4, :cond_22

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_b

    :cond_22
    throw v11

    :catch_b
    move-exception v3

    const-string/jumbo v11, "File Close error"

    return-object v11

    :catchall_1
    move-exception v11

    move-object v4, v5

    goto :goto_2

    :catchall_2
    move-exception v11

    move-object v0, v1

    move-object v4, v5

    goto :goto_2

    :catch_c
    move-exception v2

    move-object v4, v5

    goto :goto_1

    :catch_d
    move-exception v2

    move-object v0, v1

    move-object v4, v5

    goto :goto_1
.end method

.method private getFirmwareVer()Ljava/lang/String;
    .locals 13

    const/4 v12, -0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    const-string/jumbo v10, "/data/misc/conn/.wifiver.info"

    invoke-direct {v5, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_19

    const-string/jumbo v10, "HD_ver"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    const-string/jumbo v10, "version"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v12, :cond_2

    const-string/jumbo v10, "version"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v8

    add-int/lit8 v8, v10, 0x1

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v6

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    return-object v6

    :catch_0
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :cond_2
    :try_start_4
    const-string/jumbo v6, "NG"

    :goto_0
    const-string/jumbo v10, "NG"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v10

    if-eqz v10, :cond_1c

    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_4
    return-object v9

    :cond_5
    :try_start_6
    const-string/jumbo v6, "NG"

    const-string/jumbo v10, "file was damaged, it need check !"
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v1, :cond_6

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_7
    return-object v10

    :catch_1
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :cond_8
    :try_start_8
    const-string/jumbo v10, "CNSS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_c

    const-string/jumbo v10, "CNSS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v12, :cond_b

    const-string/jumbo v10, "CNSS-PR-"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v8, v10

    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v6

    if-eqz v1, :cond_9

    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_9
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_a
    return-object v6

    :catch_2
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :cond_b
    :try_start_a
    const-string/jumbo v6, "NG"

    goto :goto_0

    :cond_c
    const-string/jumbo v10, "FW:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_10

    const-string/jumbo v10, "FW"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v12, :cond_f

    const-string/jumbo v10, "FW"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v8

    add-int/lit8 v8, v10, 0x1

    const-string/jumbo v10, "HW"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v7, v10, -0x2

    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result-object v6

    if-eqz v1, :cond_d

    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_d
    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    :cond_e
    return-object v6

    :catch_3
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :cond_f
    :try_start_c
    const-string/jumbo v6, "NG"

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v10, "received"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_14

    const-string/jumbo v10, ".p"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v8, v10, 0x1

    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    if-eq v8, v12, :cond_13

    const-string/jumbo v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v6

    if-eqz v1, :cond_11

    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_11
    if-eqz v5, :cond_12

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    :cond_12
    return-object v6

    :catch_4
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :cond_13
    :try_start_e
    const-string/jumbo v6, "NG"

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v10, "is 0x"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_18

    const-string/jumbo v10, "driver version is "

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v11, "driver version is "

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v8, v10, 0x1

    if-eq v8, v12, :cond_17

    const-string/jumbo v10, "] ["

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-result-object v6

    if-eqz v1, :cond_15

    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_15
    if-eqz v5, :cond_16

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    :cond_16
    return-object v6

    :catch_5
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :cond_17
    :try_start_10
    const-string/jumbo v6, "NG"

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v6, "NG"
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto/16 :goto_0

    :catch_6
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :cond_19
    :try_start_11
    const-string/jumbo v10, "file is null .. !"
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    if-eqz v1, :cond_1a

    :try_start_12
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_1a
    if-eqz v5, :cond_1b

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    :cond_1b
    return-object v10

    :catch_7
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :cond_1c
    if-eqz v1, :cond_1d

    :try_start_13
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_1d
    if-eqz v5, :cond_1e

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    :cond_1e
    const-string/jumbo v10, "error"

    return-object v10

    :catch_8
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :catch_9
    move-exception v2

    :goto_1
    :try_start_14
    const-string/jumbo v10, "/data/misc/conn/.wifiver.info doesn\'t exist or there are something wrong on handling it"
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    if-eqz v0, :cond_1f

    :try_start_15
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_1f
    if-eqz v4, :cond_20

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a

    :cond_20
    return-object v10

    :catch_a
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :catchall_0
    move-exception v10

    :goto_2
    if-eqz v0, :cond_21

    :try_start_16
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_21
    if-eqz v4, :cond_22

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_b

    :cond_22
    throw v10

    :catch_b
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :catchall_1
    move-exception v10

    move-object v4, v5

    goto :goto_2

    :catchall_2
    move-exception v10

    move-object v0, v1

    move-object v4, v5

    goto :goto_2

    :catch_c
    move-exception v2

    move-object v4, v5

    goto :goto_1

    :catch_d
    move-exception v2

    move-object v0, v1

    move-object v4, v5

    goto :goto_1
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
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


# virtual methods
.method public getJsonFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WDCL"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "WFWV"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mFirmwareVer:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "WDRV"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mDriverVer:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "WCVN"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mChipsetName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ISGO"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mIsGroupOwner:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "NOCL"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mNumClient:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "FREQ"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mFreq:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PKGN"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPkgName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "CONP"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mConnectionPeriod:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "NOAP"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mNoaPeriod:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "MANU"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPeerManufacturer:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DEVT"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPeerDevType:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DISR"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mDisconnectReason:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string/jumbo v2, "WDGF"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "WFWV"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mFirmwareVer:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "WDRV"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mDriverVer:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "WCVN"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mChipsetName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PKGN"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPkgName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "CSOR"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mConnReceived:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PSTC"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPersistent:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "GRNE"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mGroupNego:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "MANU"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPeerManufacturer:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DEVT"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPeerDevType:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PINT"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPeerGOIntent:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "GRFR"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mResult:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public initialize()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->getFirmwareVer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mFirmwareVer:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->getDriverVer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mDriverVer:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->getChipsetName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mChipsetName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mIsGroupOwner:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mNumClient:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mFreq:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mConnectionPeriod:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mNoaPeriod:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPeerManufacturer:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPeerDevType:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mDisconnectReason:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPkgName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mConnReceived:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPersistent:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mGroupNego:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPeerGOIntent:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mResult:Ljava/lang/String;

    return-void
.end method

.method public parseData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return v6

    :cond_1
    const-string/jumbo v3, "\\s+"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "WDCL"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    array-length v3, v0

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    const-string/jumbo v3, "P2pBigDataLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Wrong parseData for WDCL, length : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    const/4 v1, 0x1

    aget-object v3, v0, v6

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mIsGroupOwner:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    aget-object v3, v0, v1

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mNumClient:Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    aget-object v3, v0, v2

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mFreq:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    aget-object v3, v0, v1

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPkgName:Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    aget-object v3, v0, v2

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mConnectionPeriod:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    aget-object v3, v0, v1

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mNoaPeriod:Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    aget-object v3, v0, v2

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPeerManufacturer:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    aget-object v3, v0, v1

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPeerDevType:Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    aget-object v3, v0, v2

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mDisconnectReason:Ljava/lang/String;

    return v5

    :cond_3
    const-string/jumbo v3, "WDGF"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    array-length v3, v0

    const/16 v4, 0x8

    if-eq v3, v4, :cond_4

    const-string/jumbo v3, "P2pBigDataLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Wrong parseData for WDGF, length : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_4
    const/4 v1, 0x1

    aget-object v3, v0, v6

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPkgName:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    aget-object v3, v0, v1

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mConnReceived:Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    aget-object v3, v0, v2

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPersistent:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    aget-object v3, v0, v1

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mGroupNego:Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    aget-object v3, v0, v2

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPeerManufacturer:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    aget-object v3, v0, v1

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPeerDevType:Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    aget-object v3, v0, v2

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mPeerGOIntent:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    aget-object v3, v0, v1

    iput-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->mResult:Ljava/lang/String;

    return v5

    :cond_5
    return v6
.end method

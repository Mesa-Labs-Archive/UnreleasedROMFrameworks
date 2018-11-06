.class public Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;
.super Ljava/lang/Object;
.source "WifiChipInfo.java"


# static fields
.field private static final CID_INFO_MURATA:Ljava/lang/String; = "murata"

.field private static final CID_INFO_MURATAFEM1:Ljava/lang/String; = "MURATAFEM1"

.field private static final CID_INFO_MURATAFEM2:Ljava/lang/String; = "MURATAFEM2"

.field private static final CID_INFO_MURATAFEM3:Ljava/lang/String; = "MURATAFEM3"

.field private static final CID_INFO_SAMSUNG:Ljava/lang/String; = "SAMSUNG"

.field private static final CID_INFO_SAMSUNGVE:Ljava/lang/String; = "SAMSUNGVE"

.field private static final CID_INFO_SEMCO:Ljava/lang/String; = "SEMCO"

.field private static final CID_INFO_SEMCO3RD:Ljava/lang/String; = "SEMCO3RD"

.field private static final CID_INFO_SEMCOSH:Ljava/lang/String; = "SEMCOSH"

.field private static final CID_INFO_WISOL:Ljava/lang/String; = "WISOL"

.field private static final CID_INFO_WISOLFEM1:Ljava/lang/String; = "WISOLFEM1"

.field private static final KEY_CHIPSET_VENDOR_NAME:Ljava/lang/String; = "ld_cnm"

.field private static final KEY_CID_INFO:Ljava/lang/String; = "Cid_Info"

.field private static final KEY_DRIVER_VERSION:Ljava/lang/String; = "ld_drv"

.field private static final KEY_FIRMWARE_VERSION:Ljava/lang/String; = "ld_fwv"

.field private static final KEY_MAC_ADDRESS:Ljava/lang/String; = "mac_add"

.field private static final PATH_OF_CID_INFO:Ljava/lang/String; = "/data/misc/conn/.cid.info"

.field private static final PATH_OF_SOFTAP_INFO:Ljava/lang/String; = "/data/misc/conn/.softap.info"

.field private static final PATH_OF_WIFIVER_INFO:Ljava/lang/String; = "/data/misc/conn/.wifiver.info"

.field public static SoftAp_HalFn_getValidChannels:Ljava/lang/String; = null

.field public static SoftAp_HalFn_setCountryCodeHal:Ljava/lang/String; = null

.field public static SoftAp_IsExist:Z = false

.field public static SoftAp_IsRead:Z = false

.field public static SoftAp_MaxClient:Ljava/lang/String; = null

.field public static SoftAp_PowerSave:Ljava/lang/String; = null

.field public static SoftAp_Support5g:Ljava/lang/String; = null

.field public static SoftAp_Support5gBasedOnCountry:Ljava/lang/String; = null

.field public static SoftAp_SupportWifiSharing:Ljava/lang/String; = null

.field private static final WIFI_VER_PREFIX_BRCM:Ljava/lang/String; = "HD_ver"

.field private static final WIFI_VER_PREFIX_MAVL:Ljava/lang/String; = "received"

.field private static final WIFI_VER_PREFIX_MTK:Ljava/lang/String; = "ediatek"

.field private static final WIFI_VER_PREFIX_QCA:Ljava/lang/String; = "FW:"

.field private static final WIFI_VER_PREFIX_QCOM:Ljava/lang/String; = "CNSS"

.field private static final WIFI_VER_PREFIX_SLSI:Ljava/lang/String; = "rv_ver:"

.field private static final WIFI_VER_PREFIX_SPRTRM:Ljava/lang/String; = "is 0x"

.field private static mChipsetName:Ljava/lang/String;

.field private static mCidInfo:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;


# instance fields
.field private mDriverVer:Ljava/lang/String;

.field private mFirmwareVer:Ljava/lang/String;

.field private mMacAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_IsExist:Z

    sput-boolean v0, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_IsRead:Z

    const-string/jumbo v0, "na"

    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_SupportWifiSharing:Ljava/lang/String;

    const-string/jumbo v0, "na"

    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_MaxClient:Ljava/lang/String;

    const-string/jumbo v0, "na"

    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_Support5g:Ljava/lang/String;

    const-string/jumbo v0, "na"

    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_PowerSave:Ljava/lang/String;

    const-string/jumbo v0, "na"

    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_HalFn_setCountryCodeHal:Ljava/lang/String;

    const-string/jumbo v0, "na"

    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_HalFn_getValidChannels:Ljava/lang/String;

    const-string/jumbo v0, "na"

    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_Support5gBasedOnCountry:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChipsetName()Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    const-string/jumbo v8, "/data/misc/conn/.wifiver.info"

    invoke-direct {v5, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_17

    const-string/jumbo v8, "HD_ver"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "1"
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e
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

    const-string/jumbo v8, "93"

    return-object v8

    :cond_2
    :try_start_4
    const-string/jumbo v8, "CNSS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v8, "2"
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_e
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

    const-string/jumbo v8, "93"

    return-object v8

    :cond_5
    :try_start_6
    const-string/jumbo v8, "FW:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string/jumbo v8, "3"
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_e
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

    const-string/jumbo v8, "93"

    return-object v8

    :cond_8
    :try_start_8
    const-string/jumbo v8, "received"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string/jumbo v8, "4"
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_e
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

    const-string/jumbo v8, "93"

    return-object v8

    :cond_b
    :try_start_a
    const-string/jumbo v8, "is 0x"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e

    const-string/jumbo v8, "5"
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e
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

    const-string/jumbo v8, "93"

    return-object v8

    :cond_e
    :try_start_c
    const-string/jumbo v8, "rv_ver:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_11

    const-string/jumbo v8, "6"
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_e
    .catchall {:try_start_c .. :try_end_c} :catchall_2

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

    const-string/jumbo v8, "93"

    return-object v8

    :cond_11
    :try_start_e
    const-string/jumbo v8, "ediatek"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_14

    const-string/jumbo v8, "7"
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_e
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

    const-string/jumbo v8, "93"

    return-object v8

    :cond_14
    :try_start_10
    const-string/jumbo v6, "NG"

    const-string/jumbo v8, "NG"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    const-string/jumbo v8, "90"
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    if-eqz v1, :cond_15

    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_15
    if-eqz v5, :cond_16

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    :cond_16
    return-object v8

    :catch_7
    move-exception v3

    const-string/jumbo v8, "93"

    return-object v8

    :cond_17
    :try_start_12
    const-string/jumbo v8, "91"
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    if-eqz v1, :cond_18

    :try_start_13
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_18
    if-eqz v5, :cond_19

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    :cond_19
    return-object v8

    :catch_8
    move-exception v3

    const-string/jumbo v8, "93"

    return-object v8

    :cond_1a
    if-eqz v1, :cond_1b

    :try_start_14
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_1b
    if-eqz v5, :cond_1c

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_9

    :cond_1c
    const-string/jumbo v8, "94"

    return-object v8

    :catch_9
    move-exception v3

    const-string/jumbo v8, "93"

    return-object v8

    :catch_a
    move-exception v2

    :goto_0
    :try_start_15
    const-string/jumbo v8, "92"
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    if-eqz v0, :cond_1d

    :try_start_16
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_1d
    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_b

    :cond_1e
    return-object v8

    :catch_b
    move-exception v3

    const-string/jumbo v8, "93"

    return-object v8

    :catchall_0
    move-exception v8

    :goto_1
    if-eqz v0, :cond_1f

    :try_start_17
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_1f
    if-eqz v4, :cond_20

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_c

    :cond_20
    throw v8

    :catch_c
    move-exception v3

    const-string/jumbo v8, "93"

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

    :catch_d
    move-exception v2

    move-object v4, v5

    goto :goto_0

    :catch_e
    move-exception v2

    move-object v0, v1

    move-object v4, v5

    goto :goto_0
.end method

.method public static getCidInfo()Ljava/lang/String;
    .locals 10

    sget-object v8, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->mCidInfo:Ljava/lang/String;

    if-nez v8, :cond_7

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    const-string/jumbo v8, "/data/misc/conn/.cid.info"

    invoke-direct {v6, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    :try_start_1
    const-string/jumbo v8, "error1"

    sput-object v8, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->mCidInfo:Ljava/lang/String;

    sget-object v8, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->mCidInfo:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_0

    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return-object v8

    :catch_0
    move-exception v4

    goto :goto_0

    :cond_1
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v1, :cond_4

    :try_start_4
    const-string/jumbo v8, "error2"

    sput-object v8, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->mCidInfo:Ljava/lang/String;

    sget-object v8, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->mCidInfo:Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b

    :cond_3
    :goto_1
    return-object v8

    :cond_4
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-nez v8, :cond_5

    const-string/jumbo v8, "\u0000"

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    :cond_5
    sput-object v7, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->mCidInfo:Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_2
    if-eqz v1, :cond_6

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    :cond_7
    :goto_3
    sget-object v8, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->mCidInfo:Ljava/lang/String;

    return-object v8

    :cond_8
    :try_start_8
    const-string/jumbo v8, "null"

    sput-object v8, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->mCidInfo:Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v0, v1

    move-object v5, v6

    :goto_4
    :try_start_9
    const-string/jumbo v8, "file not found"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v0, :cond_9

    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_9
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_a
    :goto_5
    return-object v8

    :catch_2
    move-exception v3

    :goto_6
    :try_start_b
    const-string/jumbo v8, "exception"
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v0, :cond_b

    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_b
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    :cond_c
    :goto_7
    return-object v8

    :catchall_0
    move-exception v8

    :goto_8
    if-eqz v0, :cond_d

    :try_start_d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_d
    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    :cond_e
    :goto_9
    throw v8

    :catch_3
    move-exception v4

    goto :goto_9

    :catchall_1
    move-exception v8

    move-object v5, v6

    goto :goto_8

    :catchall_2
    move-exception v8

    move-object v0, v1

    move-object v5, v6

    goto :goto_8

    :catch_4
    move-exception v4

    goto :goto_5

    :catch_5
    move-exception v2

    goto :goto_4

    :catch_6
    move-exception v2

    move-object v5, v6

    goto :goto_4

    :catch_7
    move-exception v4

    goto :goto_7

    :catch_8
    move-exception v3

    move-object v5, v6

    goto :goto_6

    :catch_9
    move-exception v3

    move-object v0, v1

    move-object v5, v6

    goto :goto_6

    :catch_a
    move-exception v4

    goto :goto_3

    :catch_b
    move-exception v4

    goto :goto_1
.end method

.method private getDriverVer()Ljava/lang/String;
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
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1e

    const-string/jumbo v10, "HD_ver"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string/jumbo v10, "HD_ver:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v12, :cond_2

    const-string/jumbo v10, "HD_ver:"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v8

    add-int/lit8 v8, v10, 0x1

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e
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
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_e
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v10

    if-eqz v10, :cond_21

    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    :cond_4
    return-object v9

    :cond_5
    :try_start_6
    const-string/jumbo v10, "CNSS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    const-string/jumbo v10, "v"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v12, :cond_8

    const-string/jumbo v10, "v"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v8, v10

    const-string/jumbo v10, " CNSS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_e
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v6

    if-eqz v1, :cond_6

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_7
    return-object v6

    :catch_1
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :cond_8
    :try_start_8
    const-string/jumbo v6, "NG"

    goto :goto_0

    :cond_9
    const-string/jumbo v10, "FW:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_d

    const-string/jumbo v10, "SW"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v12, :cond_c

    const-string/jumbo v10, "SW"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v8

    add-int/lit8 v8, v10, 0x1

    const-string/jumbo v10, "FW"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v7, v10, -0x2

    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_e
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v6

    if-eqz v1, :cond_a

    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_a
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_b
    return-object v6

    :catch_2
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :cond_c
    :try_start_a
    const-string/jumbo v6, "NG"

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v10, "received"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_11

    const-string/jumbo v10, "-GPL"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v8, v10, -0x4

    if-eq v8, v12, :cond_10

    const-string/jumbo v10, "-GPL"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result-object v6

    if-eqz v1, :cond_e

    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_e
    if-eqz v5, :cond_f

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    :cond_f
    return-object v6

    :catch_3
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :cond_10
    :try_start_c
    const-string/jumbo v6, "NG"

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v10, "is 0x"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_15

    const-string/jumbo v10, "cp version is "

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v11, "cp version is "

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int v8, v10, v11

    if-eq v8, v12, :cond_14

    const-string/jumbo v10, "date"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v7, v10, -0x2

    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_e
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v6

    if-eqz v1, :cond_12

    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_12
    if-eqz v5, :cond_13

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    :cond_13
    return-object v6

    :catch_4
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :cond_14
    :try_start_e
    const-string/jumbo v6, "NG"

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v10, "rv_ver:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_19

    const-string/jumbo v10, "drv_ver:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v12, :cond_18

    const-string/jumbo v10, "drv_ver:"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v8

    add-int/lit8 v8, v10, 0x1

    const-string/jumbo v10, "(f/w"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v7, v10, -0x1

    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-result-object v6

    if-eqz v1, :cond_16

    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_16
    if-eqz v5, :cond_17

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    :cond_17
    return-object v6

    :catch_5
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :cond_18
    :try_start_10
    const-string/jumbo v6, "NG"

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v10, "ediatek"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1d

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "DRIVER_VER"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v12, :cond_1c

    const-string/jumbo v10, "DRIVER_VER: "

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v8, v10

    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    move-result-object v6

    if-eqz v1, :cond_1a

    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_1a
    if-eqz v5, :cond_1b

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    :cond_1b
    return-object v6

    :catch_6
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :cond_1c
    :try_start_12
    const-string/jumbo v6, "NG"

    goto/16 :goto_0

    :cond_1d
    const-string/jumbo v6, "NG"
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto/16 :goto_0

    :catch_7
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :cond_1e
    :try_start_13
    const-string/jumbo v10, "file is null .. !"
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    if-eqz v1, :cond_1f

    :try_start_14
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_1f
    if-eqz v5, :cond_20

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8

    :cond_20
    return-object v10

    :catch_8
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :cond_21
    if-eqz v1, :cond_22

    :try_start_15
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_22
    if-eqz v5, :cond_23

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_9

    :cond_23
    const-string/jumbo v10, "error"

    return-object v10

    :catch_9
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :catch_a
    move-exception v2

    :goto_1
    :try_start_16
    const-string/jumbo v10, "exception"
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    if-eqz v0, :cond_24

    :try_start_17
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_24
    if-eqz v4, :cond_25

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_b

    :cond_25
    return-object v10

    :catch_b
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :catchall_0
    move-exception v10

    :goto_2
    if-eqz v0, :cond_26

    :try_start_18
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_26
    if-eqz v4, :cond_27

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_c

    :cond_27
    throw v10

    :catch_c
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

    :catch_d
    move-exception v2

    move-object v4, v5

    goto :goto_1

    :catch_e
    move-exception v2

    move-object v0, v1

    move-object v4, v5

    goto :goto_1
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;
    .locals 2

    const-class v1, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->sInstance:Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->sInstance:Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;

    :cond_0
    sget-object v0, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->sInstance:Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCidInfoForKeyValueType()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cid_Info"

    invoke-static {v2}, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->getCidInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFirmwareVer(Z)Ljava/lang/String;
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
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_28

    const-string/jumbo v10, "HD_ver"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    const-string/jumbo v10, "version"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v12, :cond_3

    const-string/jumbo v10, "version"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v8

    add-int/lit8 v8, v10, 0x1

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    if-eqz p1, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "BR"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v6

    :goto_0
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

    :cond_2
    :try_start_4
    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_f
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v6

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :cond_3
    :try_start_5
    const-string/jumbo v6, "NG"

    :goto_1
    const-string/jumbo v10, "NG"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v10

    if-eqz v10, :cond_2b

    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    :cond_5
    return-object v9

    :cond_6
    :try_start_7
    const-string/jumbo v6, "NG"

    const-string/jumbo v10, "file was damaged, it need check !"
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_f
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v1, :cond_7

    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_8
    return-object v10

    :catch_1
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :cond_9
    :try_start_9
    const-string/jumbo v10, "CNSS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_e

    const-string/jumbo v10, "CNSS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v12, :cond_d

    const-string/jumbo v10, "CNSS-PR-"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v8, v10

    if-eqz p1, :cond_c

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "QC"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_f
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result-object v6

    :goto_2
    if-eqz v1, :cond_a

    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_a
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    :cond_b
    return-object v6

    :cond_c
    :try_start_b
    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_f
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-result-object v6

    goto :goto_2

    :catch_2
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :cond_d
    :try_start_c
    const-string/jumbo v6, "NG"

    goto :goto_1

    :cond_e
    const-string/jumbo v10, "FW:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_13

    const-string/jumbo v10, "FW"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v12, :cond_12

    const-string/jumbo v10, "FW"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v8

    add-int/lit8 v8, v10, 0x1

    const-string/jumbo v10, "HW"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v7, v10, -0x2

    if-eqz p1, :cond_11

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "QC"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_f
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v6

    :goto_3
    if-eqz v1, :cond_f

    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_f
    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    :cond_10
    return-object v6

    :cond_11
    :try_start_e
    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-result-object v6

    goto :goto_3

    :catch_3
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :cond_12
    :try_start_f
    const-string/jumbo v6, "NG"

    goto/16 :goto_1

    :cond_13
    const-string/jumbo v10, "received"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_18

    const-string/jumbo v10, ".p"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v8, v10, 0x1

    if-eq v8, v12, :cond_17

    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eqz p1, :cond_16

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "MV"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    move-result-object v6

    :goto_4
    if-eqz v1, :cond_14

    :try_start_10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_14
    if-eqz v5, :cond_15

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4

    :cond_15
    return-object v6

    :cond_16
    const/4 v10, 0x0

    :try_start_11
    invoke-virtual {v9, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    move-result-object v6

    goto :goto_4

    :catch_4
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :cond_17
    :try_start_12
    const-string/jumbo v6, "NG"

    goto/16 :goto_1

    :cond_18
    const-string/jumbo v10, "is 0x"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1d

    const-string/jumbo v10, "driver version is "

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v11, "driver version is "

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v8, v10, 0x1

    if-eq v8, v12, :cond_1c

    const-string/jumbo v10, "] ["

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eqz p1, :cond_1b

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SP"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    move-result-object v6

    :goto_5
    if-eqz v1, :cond_19

    :try_start_13
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_19
    if-eqz v5, :cond_1a

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_5

    :cond_1a
    return-object v6

    :cond_1b
    const/4 v10, 0x0

    :try_start_14
    invoke-virtual {v9, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    move-result-object v6

    goto :goto_5

    :catch_5
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :cond_1c
    :try_start_15
    const-string/jumbo v6, "NG"

    goto/16 :goto_1

    :cond_1d
    const-string/jumbo v10, "rv_ver:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_22

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v8, v10, 0x1

    if-eq v8, v12, :cond_21

    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eqz p1, :cond_20

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "LS"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_f
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    move-result-object v6

    :goto_6
    if-eqz v1, :cond_1e

    :try_start_16
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_1e
    if-eqz v5, :cond_1f

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_6

    :cond_1f
    return-object v6

    :cond_20
    const/4 v10, 0x0

    :try_start_17
    invoke-virtual {v9, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_f
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    move-result-object v6

    goto :goto_6

    :catch_6
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :cond_21
    :try_start_18
    const-string/jumbo v6, "NG"

    goto/16 :goto_1

    :cond_22
    const-string/jumbo v10, "ediatek"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_27

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "FW"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v12, :cond_26

    const-string/jumbo v10, "FW_VER: "

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v8, v10

    if-eqz p1, :cond_25

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "MT"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_f
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    move-result-object v6

    :goto_7
    if-eqz v1, :cond_23

    :try_start_19
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_23
    if-eqz v5, :cond_24

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_7

    :cond_24
    return-object v6

    :cond_25
    :try_start_1a
    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_f
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    move-result-object v6

    goto :goto_7

    :catch_7
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :cond_26
    :try_start_1b
    const-string/jumbo v6, "NG"

    goto/16 :goto_1

    :cond_27
    const-string/jumbo v6, "NG"
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_f
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    goto/16 :goto_1

    :catch_8
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :cond_28
    :try_start_1c
    const-string/jumbo v10, "file is null .. !"
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_f
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    if-eqz v1, :cond_29

    :try_start_1d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_29
    if-eqz v5, :cond_2a

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_9

    :cond_2a
    return-object v10

    :catch_9
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :cond_2b
    if-eqz v1, :cond_2c

    :try_start_1e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_2c
    if-eqz v5, :cond_2d

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_a

    :cond_2d
    const-string/jumbo v10, "error"

    return-object v10

    :catch_a
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :catch_b
    move-exception v2

    :goto_8
    :try_start_1f
    const-string/jumbo v10, "exception"
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    if-eqz v0, :cond_2e

    :try_start_20
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_2e
    if-eqz v4, :cond_2f

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_c

    :cond_2f
    return-object v10

    :catch_c
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :catchall_0
    move-exception v10

    :goto_9
    if-eqz v0, :cond_30

    :try_start_21
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_30
    if-eqz v4, :cond_31

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_d

    :cond_31
    throw v10

    :catch_d
    move-exception v3

    const-string/jumbo v10, "File Close error"

    return-object v10

    :catchall_1
    move-exception v10

    move-object v4, v5

    goto :goto_9

    :catchall_2
    move-exception v10

    move-object v0, v1

    move-object v4, v5

    goto :goto_9

    :catch_e
    move-exception v2

    move-object v4, v5

    goto :goto_8

    :catch_f
    move-exception v2

    move-object v0, v1

    move-object v4, v5

    goto :goto_8
.end method

.method public getMacAddresss()Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->mMacAddress:Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiInfo;->getMacAddressFromFile()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mac_add"

    invoke-static {v3}, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->mMacAddress:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->mMacAddress:Ljava/lang/String;

    return-object v2
.end method

.method public getSoftApInfo()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "--softap chip info \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_IsExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " IsRead:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_IsRead:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WifiSharing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_SupportWifiSharing:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maxClient:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_MaxClient:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "5g:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_Support5g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "5gBasedOnCountry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_Support5gBasedOnCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PowerSave:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_PowerSave:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->readSoftApInfo()Ljava/lang/String;

    const-string/jumbo v1, "--after re-read the file \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_IsExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " IsRead:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_IsRead:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WifiSharing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_SupportWifiSharing:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maxClient:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_MaxClient:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "5g:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_Support5g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "5gBasedOnCountry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_Support5gBasedOnCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PowerSave:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_PowerSave:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getWifiApChipMaxClient()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_IsRead:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_MaxClient:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->readSoftApInfo()Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_MaxClient:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiApChipSupport5G()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_IsRead:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_Support5g:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->readSoftApInfo()Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_Support5g:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiApChipSupport5GCountry()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_IsRead:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_Support5gBasedOnCountry:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->readSoftApInfo()Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_Support5gBasedOnCountry:Ljava/lang/String;

    return-object v0
.end method

.method public readSoftApInfo()Ljava/lang/String;
    .locals 14

    const/4 v1, 0x0

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/File;

    const-string/jumbo v12, "/data/misc/conn/.softap.info"

    invoke-direct {v7, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    const/4 v12, 0x1

    sput-boolean v12, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_IsRead:Z

    const/4 v12, 0x0

    sput-boolean v12, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_IsExist:Z

    const-string/jumbo v12, "File Not Found."

    return-object v12

    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/FileReader;

    const-string/jumbo v13, "/data/misc/conn/.softap.info"

    invoke-direct {v12, v13}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v12, 0x1

    :try_start_2
    sput-boolean v12, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_IsExist:Z

    const/4 v12, 0x1

    sput-boolean v12, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_IsRead:Z

    const-string/jumbo v9, ""

    const/4 v8, -0x1

    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_f

    if-eqz v9, :cond_1

    const-string/jumbo v12, ""

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_1

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v12, Landroid/net/wifi/WifiApCust;->DBG:Z

    if-eqz v12, :cond_2

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/wifi/WifiApCust;->addMHSClientHistoryLog(Ljava/lang/String;)V

    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v12, "#"

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    const/16 v12, 0x3d

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v12, -0x1

    if-eq v8, v12, :cond_1

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "DualBandConcurrency"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string/jumbo v12, "yes"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const-string/jumbo v12, "true"

    sput-object v12, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_SupportWifiSharing:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    move-object v6, v7

    move-object v1, v2

    :goto_1
    const/4 v12, 0x0

    :try_start_3
    sput-boolean v12, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_IsExist:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_3
    :goto_2
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_4
    :try_start_5
    const-string/jumbo v12, "false"

    sput-object v12, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_SupportWifiSharing:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v5

    move-object v6, v7

    move-object v1, v2

    :goto_3
    const/4 v12, 0x0

    :try_start_6
    sput-boolean v12, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_IsExist:Z

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    :catch_2
    move-exception v4

    goto :goto_2

    :cond_5
    :try_start_8
    const-string/jumbo v12, "5G"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const-string/jumbo v12, "yes"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const-string/jumbo v12, "true"

    sput-object v12, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_Support5g:Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v12

    move-object v6, v7

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_6

    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_6
    :goto_5
    throw v12

    :cond_7
    :try_start_a
    const-string/jumbo v12, "false"

    sput-object v12, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_Support5g:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v12, "maxClient"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    sput-object v11, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_MaxClient:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v12, "HalFn_setCountryCodeHal"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const-string/jumbo v12, "yes"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const-string/jumbo v12, "true"

    sput-object v12, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_HalFn_setCountryCodeHal:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v12, "false"

    sput-object v12, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_HalFn_setCountryCodeHal:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v12, "HalFn_getValidChannels"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const-string/jumbo v12, "yes"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const-string/jumbo v12, "true"

    sput-object v12, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_HalFn_getValidChannels:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v12, "false"

    sput-object v12, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_HalFn_getValidChannels:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v12, "PowerSave"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-string/jumbo v12, "yes"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    const-string/jumbo v12, "true"

    sput-object v12, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_PowerSave:Ljava/lang/String;

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v12, "false"

    sput-object v12, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_PowerSave:Ljava/lang/String;

    goto/16 :goto_0

    :cond_f
    sget-object v12, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_HalFn_setCountryCodeHal:Ljava/lang/String;

    const-string/jumbo v13, "true"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    sget-object v12, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_HalFn_getValidChannels:Ljava/lang/String;

    const-string/jumbo v13, "true"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    const-string/jumbo v12, "true"

    sput-object v12, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_Support5gBasedOnCountry:Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_10
    :goto_6
    if-eqz v2, :cond_11

    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    :cond_11
    :goto_7
    move-object v6, v7

    move-object v1, v2

    goto/16 :goto_2

    :cond_12
    :try_start_c
    sget-object v12, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_HalFn_setCountryCodeHal:Ljava/lang/String;

    const-string/jumbo v13, "na"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    sget-object v12, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_HalFn_getValidChannels:Ljava/lang/String;

    const-string/jumbo v13, "na"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    const-string/jumbo v12, "na"

    sput-object v12, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->SoftAp_Support5gBasedOnCountry:Ljava/lang/String;
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_6

    :catch_3
    move-exception v4

    goto :goto_7

    :catch_4
    move-exception v4

    goto/16 :goto_2

    :catch_5
    move-exception v4

    goto/16 :goto_5

    :catchall_1
    move-exception v12

    goto/16 :goto_4

    :catchall_2
    move-exception v12

    move-object v6, v7

    goto/16 :goto_4

    :catch_6
    move-exception v3

    goto/16 :goto_1

    :catch_7
    move-exception v3

    move-object v6, v7

    goto/16 :goto_1

    :catch_8
    move-exception v5

    goto/16 :goto_3

    :catch_9
    move-exception v5

    move-object v6, v7

    goto/16 :goto_3
.end method

.method public readWifiVersion()Ljava/lang/String;
    .locals 11

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Ljava/io/File;

    const-string/jumbo v9, "/data/misc/conn/.wifiver.info"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "File Not Found."

    return-object v9

    :cond_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string/jumbo v10, "/data/misc/conn/.wifiver.info"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v6, :cond_2

    :try_start_3
    const-string/jumbo v9, "Can not open file."
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v6, :cond_1

    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    return-object v9

    :catch_0
    move-exception v2

    const-string/jumbo v9, "File Close error"

    return-object v9

    :cond_2
    :goto_0
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v3, v4

    move-object v5, v6

    move-object v7, v8

    :goto_1
    :try_start_6
    const-string/jumbo v9, "exception"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v5, :cond_3

    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_3
    return-object v9

    :cond_4
    if-eqz v6, :cond_5

    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :cond_5
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    :catch_2
    move-exception v2

    const-string/jumbo v9, "File Close error"

    return-object v9

    :catch_3
    move-exception v2

    const-string/jumbo v9, "File Close error"

    return-object v9

    :catchall_0
    move-exception v9

    :goto_2
    if-eqz v5, :cond_6

    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :cond_6
    throw v9

    :catch_4
    move-exception v2

    const-string/jumbo v9, "File Close error"

    return-object v9

    :catchall_1
    move-exception v9

    move-object v7, v8

    goto :goto_2

    :catchall_2
    move-exception v9

    move-object v3, v4

    move-object v7, v8

    goto :goto_2

    :catchall_3
    move-exception v9

    move-object v3, v4

    move-object v5, v6

    move-object v7, v8

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    move-object v7, v8

    goto :goto_1

    :catch_7
    move-exception v1

    move-object v3, v4

    move-object v7, v8

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->mFirmwareVer:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->getFirmwareVer(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->mFirmwareVer:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->mDriverVer:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->getDriverVer()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->mDriverVer:Ljava/lang/String;

    :cond_1
    sget-object v1, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->mChipsetName:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->getChipsetName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->mChipsetName:Ljava/lang/String;

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ld_fwv"

    invoke-static {v2}, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->mFirmwareVer:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ld_drv"

    invoke-static {v2}, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->mDriverVer:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ld_cnm"

    invoke-static {v2}, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->mChipsetName:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/bigdata/WifiChipInfo;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.class public Lcom/android/server/wifi/util/InformationElementUtil;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;,
        Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;,
        Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;,
        Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;,
        Lcom/android/server/wifi/util/InformationElementUtil$Interworking;,
        Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;,
        Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;,
        Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;,
        Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;,
        Lcom/android/server/wifi/util/InformationElementUtil$Vsa;,
        Lcom/android/server/wifi/util/InformationElementUtil$WifiMode;
    }
.end annotation


# static fields
.field private static final CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "InformationElementUtil"


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/wifi/util/InformationElementUtil;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigOpBranding"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/util/InformationElementUtil;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHS2VendorSpecificIE([Landroid/net/wifi/ScanResult$InformationElement;)Lcom/android/server/wifi/util/InformationElementUtil$Vsa;
    .locals 8

    new-instance v2, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;

    invoke-direct {v2}, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;-><init>()V

    if-eqz p0, :cond_1

    const/4 v3, 0x0

    array-length v4, p0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, p0, v3

    iget v5, v1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v6, 0xdd

    if-ne v5, v6, :cond_0

    :try_start_0
    invoke-virtual {v2, v1}, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->from(Landroid/net/wifi/ScanResult$InformationElement;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "InformationElementUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to parse Vendor Specific IE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public static getInterworkingIE([Landroid/net/wifi/ScanResult$InformationElement;)Lcom/android/server/wifi/util/InformationElementUtil$Interworking;
    .locals 8

    new-instance v2, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;

    invoke-direct {v2}, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;-><init>()V

    if-eqz p0, :cond_1

    const/4 v3, 0x0

    array-length v4, p0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, p0, v3

    iget v5, v1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v6, 0x6b

    if-ne v5, v6, :cond_0

    :try_start_0
    invoke-virtual {v2, v1}, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->from(Landroid/net/wifi/ScanResult$InformationElement;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "InformationElementUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to parse Interworking IE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public static getRoamingConsortiumIE([Landroid/net/wifi/ScanResult$InformationElement;)Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;
    .locals 8

    new-instance v2, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;

    invoke-direct {v2}, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;-><init>()V

    if-eqz p0, :cond_1

    const/4 v3, 0x0

    array-length v4, p0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, p0, v3

    iget v5, v1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v6, 0x6f

    if-ne v5, v6, :cond_0

    :try_start_0
    invoke-virtual {v2, v1}, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->from(Landroid/net/wifi/ScanResult$InformationElement;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "InformationElementUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to parse Roaming Consortium IE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private static makeHex([B)Ljava/lang/String;
    .locals 8

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, p0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-byte v0, p0, v2

    const-string/jumbo v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static parseInformationElements([B)[Landroid/net/wifi/ScanResult$InformationElement;
    .locals 8

    const/4 v6, 0x0

    if-nez p0, :cond_0

    new-array v6, v6, [Landroid/net/wifi/ScanResult$InformationElement;

    return-object v6

    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v1, v6, 0xff

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v2, v6, 0xff

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-gt v2, v6, :cond_1

    if-nez v1, :cond_2

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/net/wifi/ScanResult$InformationElement;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/net/wifi/ScanResult$InformationElement;

    return-object v6

    :cond_2
    if-nez v1, :cond_3

    const/4 v3, 0x1

    :cond_3
    new-instance v4, Landroid/net/wifi/ScanResult$InformationElement;

    invoke-direct {v4}, Landroid/net/wifi/ScanResult$InformationElement;-><init>()V

    iput v1, v4, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    new-array v6, v2, [B

    iput-object v6, v4, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    iget-object v6, v4, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

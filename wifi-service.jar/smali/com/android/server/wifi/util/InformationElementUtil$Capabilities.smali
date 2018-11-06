.class public Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/InformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Capabilities"
.end annotation


# static fields
.field private static final AKM_WAPI_CERT:I = 0x1721400

.field private static final AKM_WAPI_PSK:I = 0x2721400

.field private static final CAP_ESS_BIT_OFFSET:I = 0x0

.field private static final CAP_IBSS_BIT_OFFSET:I = 0x1

.field private static final CAP_PRIVACY_BIT_OFFSET:I = 0x4

.field private static final RSNE_VERSION:S = 0x1s

.field private static final RSN_CIPHER_CCMP:I = 0x4ac0f00

.field private static final RSN_CIPHER_NONE:I = 0xac0f00

.field private static final RSN_CIPHER_NO_GROUP_ADDRESSED:I = 0x7ac0f00

.field private static final RSN_CIPHER_TKIP:I = 0x2ac0f00

.field private static final WPA2_AKM_CCKM:I = 0x964000

.field private static final WPA2_AKM_EAP:I = 0x1ac0f00

.field private static final WPA2_AKM_EAP_SHA256:I = 0x5ac0f00

.field private static final WPA2_AKM_FT_EAP:I = 0x3ac0f00

.field private static final WPA2_AKM_FT_PSK:I = 0x4ac0f00

.field private static final WPA2_AKM_PSK:I = 0x2ac0f00

.field private static final WPA2_AKM_PSK_SHA256:I = 0x6ac0f00

.field private static final WPA_AKM_EAP:I = 0x1f25000

.field private static final WPA_AKM_PSK:I = 0x2f25000

.field private static final WPA_CIPHER_CCMP:I = 0x4f25000

.field private static final WPA_CIPHER_NONE:I = 0xf25000

.field private static final WPA_CIPHER_TKIP:I = 0x2f25000

.field private static final WPA_VENDOR_OUI_TYPE_ONE:I = 0x1f25000

.field private static final WPA_VENDOR_OUI_VERSION:S = 0x1s

.field private static final WPS_VENDOR_OUI_TYPE:I = 0x4f25000


# instance fields
.field private final KT_HOMEAP_VSD_02:B

.field private final KT_VSI_VSD_26:B

.field public groupCipher:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public isESS:Z

.field public isIBSS:Z

.field public isKTHomeAP:Z

.field public isKTVSI:Z

.field public isPrivacy:Z

.field public isWPS:Z

.field public keyManagement:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mKtVsData:Ljava/lang/String;

.field public pairwiseCipher:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public protocol:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private semVsData:[B

.field private semVsOuiType:B


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->KT_HOMEAP_VSD_02:B

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->KT_VSI_VSD_26:B

    iput-byte v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->semVsOuiType:B

    iput-object v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->semVsData:[B

    iput-object v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->mKtVsData:Ljava/lang/String;

    return-void
.end method

.method private cipherToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "?"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "None"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "CCMP"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "TKIP"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static isWpaOneElement(Landroid/net/wifi/ScanResult$InformationElement;)Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const v4, 0x1f25000

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "IE_Capabilities"

    const-string/jumbo v4, "Couldn\'t parse VSA IE, buffer underflow"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private static isWpsElement(Landroid/net/wifi/ScanResult$InformationElement;)Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const v4, 0x4f25000

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "IE_Capabilities"

    const-string/jumbo v4, "Couldn\'t parse VSA IE, buffer underflow"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private keyManagementToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "?"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "None"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "PSK"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "PSK-SHA256"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "EAP"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "FT/EAP"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "FT/PSK"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "EAP-SHA256"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "WAPI-PSK"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "WAPI-CERT"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "CCKM"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private static parseRsnCipher(I)I
    .locals 4

    const/4 v3, 0x0

    sparse-switch p0, :sswitch_data_0

    const-string/jumbo v0, "IE_Capabilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown RSN cipher suite: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :sswitch_0
    return v3

    :sswitch_1
    const/4 v0, 0x2

    return v0

    :sswitch_2
    const/4 v0, 0x3

    return v0

    :sswitch_3
    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0xac0f00 -> :sswitch_0
        0x2ac0f00 -> :sswitch_1
        0x4ac0f00 -> :sswitch_2
        0x7ac0f00 -> :sswitch_3
    .end sparse-switch
.end method

.method private parseRsnElement(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 11

    const/4 v10, 0x1

    iget-object v8, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    if-eq v8, v10, :cond_0

    return-void

    :cond_0
    iget-object v8, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->protocol:Ljava/util/ArrayList;

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->groupCipher:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    invoke-static {v9}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->parseRsnCipher(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->parseRsnCipher(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->pairwiseCipher:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :sswitch_0
    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    const-string/jumbo v8, "IE_Capabilities"

    const-string/jumbo v9, "Couldn\'t parse RSNE, buffer underflow"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :sswitch_1
    const/4 v8, 0x1

    :try_start_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :sswitch_2
    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :sswitch_3
    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :sswitch_4
    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :sswitch_5
    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :sswitch_6
    const/16 v8, 0xe

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v8, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->keyManagement:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x964000 -> :sswitch_6
        0x1ac0f00 -> :sswitch_0
        0x2ac0f00 -> :sswitch_1
        0x3ac0f00 -> :sswitch_2
        0x4ac0f00 -> :sswitch_3
        0x5ac0f00 -> :sswitch_4
        0x6ac0f00 -> :sswitch_5
    .end sparse-switch
.end method

.method private parseWapiElement(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 9

    iget-object v6, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    const-string/jumbo v6, "InformationElementUtil"

    const-string/jumbo v7, "parseWapiElement() incorrect version. return"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->protocol:Ljava/util/ArrayList;

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const-string/jumbo v6, "InformationElementUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parseWapiElement() akmCount : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const-string/jumbo v6, "InformationElementUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parseWapiElement() akm : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch v0, :sswitch_data_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :sswitch_0
    const/16 v6, 0xc

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string/jumbo v6, "IE_Capabilities"

    const-string/jumbo v7, "Couldn\'t parse WAPI IE, buffer underflow"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :sswitch_1
    const/16 v6, 0xd

    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "InformationElementUtil"

    const-string/jumbo v7, "parseWapiElement() set Default AKM to KEY_MGMT_EAP"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->keyManagement:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1721400 -> :sswitch_1
        0x2721400 -> :sswitch_0
    .end sparse-switch
.end method

.method private static parseWpaCipher(I)I
    .locals 4

    const/4 v3, 0x0

    sparse-switch p0, :sswitch_data_0

    const-string/jumbo v0, "IE_Capabilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown WPA cipher suite: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :sswitch_0
    return v3

    :sswitch_1
    const/4 v0, 0x2

    return v0

    :sswitch_2
    const/4 v0, 0x3

    return v0

    :sswitch_data_0
    .sparse-switch
        0xf25000 -> :sswitch_0
        0x2f25000 -> :sswitch_1
        0x4f25000 -> :sswitch_2
    .end sparse-switch
.end method

.method private parseWpaOneElement(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 11

    const/4 v10, 0x1

    iget-object v8, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    if-eq v8, v10, :cond_0

    return-void

    :cond_0
    iget-object v8, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->protocol:Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->groupCipher:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    invoke-static {v9}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->parseWpaCipher(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->parseWpaCipher(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->pairwiseCipher:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :sswitch_0
    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    const-string/jumbo v8, "IE_Capabilities"

    const-string/jumbo v9, "Couldn\'t parse type 1 WPA, buffer underflow"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :sswitch_1
    const/4 v8, 0x1

    :try_start_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v8, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->keyManagement:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x1f25000 -> :sswitch_0
        0x2f25000 -> :sswitch_1
    .end sparse-switch
.end method

.method private protocolToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "?"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "None"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "WPA"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "WPA2"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "WAPI"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public from([Landroid/net/wifi/ScanResult$InformationElement;Ljava/util/BitSet;)V
    .locals 12

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->protocol:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->keyManagement:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->groupCipher:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->pairwiseCipher:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->isESS:Z

    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->isIBSS:Z

    const/4 v5, 0x4

    invoke-virtual {p2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->isPrivacy:Z

    const/4 v5, 0x0

    array-length v6, p1

    :goto_0
    if-ge v5, v6, :cond_a

    aget-object v3, p1, v5

    iget v7, v3, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v8, 0x30

    if-ne v7, v8, :cond_2

    invoke-direct {p0, v3}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->parseRsnElement(Landroid/net/wifi/ScanResult$InformationElement;)V

    :cond_2
    iget v7, v3, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v8, 0x44

    if-ne v7, v8, :cond_3

    const-string/jumbo v7, "InformationElementUtil"

    const-string/jumbo v8, "from() ie.id == InformationElement.EID_WAPI. call parseWapiElement()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->parseWapiElement(Landroid/net/wifi/ScanResult$InformationElement;)V

    :cond_3
    iget v7, v3, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v8, 0xdd

    if-ne v7, v8, :cond_6

    invoke-static {v3}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->isWpaOneElement(Landroid/net/wifi/ScanResult$InformationElement;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-direct {p0, v3}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->parseWpaOneElement(Landroid/net/wifi/ScanResult$InformationElement;)V

    :cond_4
    invoke-static {v3}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->isWpsElement(Landroid/net/wifi/ScanResult$InformationElement;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->isWPS:Z

    :cond_5
    iget-object v7, v3, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    const v7, 0xffffff

    and-int/2addr v7, v2

    const v8, 0x321600

    if-ne v7, v8, :cond_7

    ushr-int/lit8 v7, v2, 0x18

    int-to-byte v7, v7

    iput-byte v7, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->semVsOuiType:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    new-array v7, v7, [B

    iput-object v7, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->semVsData:[B

    iget-object v7, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->semVsData:[B

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :cond_6
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    const-string/jumbo v7, "KTT"

    invoke-static {}, Lcom/android/server/wifi/util/InformationElementUtil;->-get0()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    and-int/lit8 v7, v2, -0x1

    const v8, 0x11c31700

    if-ne v7, v8, :cond_6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    new-array v4, v7, [B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_6

    array-length v7, v4

    if-lez v7, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "VSD[2] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "%02x"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aget-byte v10, v4, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->mKtVsData:Ljava/lang/String;

    array-length v7, v4

    const/16 v8, 0x18

    if-le v7, v8, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->mKtVsData:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "VSD[26] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "%02x"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v10, 0x18

    aget-byte v10, v4, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->mKtVsData:Ljava/lang/String;

    :cond_8
    array-length v7, v4

    if-lez v7, :cond_9

    const/4 v7, 0x0

    aget-byte v7, v4, v7

    if-nez v7, :cond_9

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->isKTHomeAP:Z

    :cond_9
    array-length v7, v4

    const/16 v8, 0x18

    if-le v7, v8, :cond_6

    const/16 v7, 0x18

    aget-byte v7, v4, v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->isKTVSI:Z
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v7, "IE_Capabilities"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Couldn\'t parse VSA IE, buffer underflow"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    return-void
.end method

.method public generateCapabilitiesString()Ljava/lang/String;
    .locals 11

    const/4 v8, 0x1

    const/4 v10, 0x0

    const-string/jumbo v1, ""

    iget-object v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->protocol:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v4, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->isPrivacy:Z

    :goto_0
    if-eqz v4, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "[WEP]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget-object v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->protocol:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->protocol:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->protocolToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->keyManagement:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    const/4 v5, 0x0

    :goto_2
    iget-object v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->keyManagement:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v5, :cond_2

    const-string/jumbo v6, "-"

    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->keyManagement:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->keyManagementToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v6, "+"

    goto :goto_3

    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->pairwiseCipher:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_5

    const/4 v5, 0x0

    :goto_4
    iget-object v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->pairwiseCipher:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v5, :cond_4

    const-string/jumbo v6, "-"

    :goto_5
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->pairwiseCipher:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->cipherToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    const-string/jumbo v6, "+"

    goto :goto_5

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_6
    iget-boolean v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->isESS:Z

    if-eqz v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "[ESS]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_7
    iget-boolean v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->isIBSS:Z

    if-eqz v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "[IBSS]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_8
    iget-boolean v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->isWPS:Z

    if-eqz v6, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "[WPS]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_9
    iget-boolean v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->isKTVSI:Z

    if-eqz v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "[VSI]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_a
    iget-boolean v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->isKTHomeAP:Z

    if-eqz v6, :cond_b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "[KTH]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_b
    iget-byte v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->semVsOuiType:B

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->semVsData:[B

    if-eqz v6, :cond_d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "[SEC%02x]"

    new-array v8, v8, [Ljava/lang/Object;

    iget-byte v9, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->semVsOuiType:B

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "[SECD"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->semVsData:[B

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v3, 0x0

    :goto_6
    iget-object v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->semVsData:[B

    array-length v6, v6

    if-ge v3, v6, :cond_c

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "%02x"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :catch_0
    move-exception v2

    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_d
    return-object v1
.end method

.method public getKTVsd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->mKtVsData:Ljava/lang/String;

    return-object v0
.end method

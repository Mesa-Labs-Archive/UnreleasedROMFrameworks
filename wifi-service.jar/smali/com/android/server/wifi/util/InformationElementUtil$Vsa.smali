.class public Lcom/android/server/wifi/util/InformationElementUtil$Vsa;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/InformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vsa"
.end annotation


# static fields
.field private static final ANQP_DOMID_BIT:I = 0x4


# instance fields
.field public anqpDomainID:I

.field public hsRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

.field public semKtVsData:[B

.field public semKtVsOuiType:B

.field public semVsData:[B

.field public semVsOuiType:B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->hsRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->anqpDomainID:I

    iput-byte v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->semVsOuiType:B

    iput-object v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->semVsData:[B

    iput-byte v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->semKtVsOuiType:B

    iput-object v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->semKtVsData:[B

    return-void
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 7

    const/4 v6, 0x4

    iget-object v4, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iget-object v4, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v4, v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_2

    const v4, 0x109a6f50

    if-ne v2, v4, :cond_2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v3, v4, 0xff

    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    packed-switch v4, :pswitch_data_0

    sget-object v4, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->Unknown:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    iput-object v4, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->hsRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    :goto_0
    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v4, v4

    const/4 v5, 0x7

    if-ge v4, v5, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "HS20 indication element too short: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "IE_Vsa"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Couldn\'t parse VSA IE, buffer underflow"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :pswitch_0
    :try_start_1
    sget-object v4, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R1:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    iput-object v4, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->hsRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    goto :goto_0

    :pswitch_1
    sget-object v4, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R2:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    iput-object v4, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->hsRelease:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    const v5, 0xffff

    and-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->anqpDomainID:I

    goto :goto_1

    :cond_2
    iget-object v4, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v4, v4

    if-lt v4, v6, :cond_3

    const/high16 v4, 0xff00000

    if-ne v2, v4, :cond_3

    const/16 v4, 0xf

    iput-byte v4, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->semVsOuiType:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->semVsData:[B

    iget-object v4, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->semVsData:[B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "KTT"

    invoke-static {}, Lcom/android/server/wifi/util/InformationElementUtil;->-get0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v4, v4

    if-lt v4, v6, :cond_0

    and-int/lit8 v4, v2, -0x1

    const v5, 0x11c31700

    if-ne v4, v5, :cond_0

    ushr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->semKtVsOuiType:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->semKtVsData:[B

    iget-object v4, p0, Lcom/android/server/wifi/util/InformationElementUtil$Vsa;->semKtVsData:[B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

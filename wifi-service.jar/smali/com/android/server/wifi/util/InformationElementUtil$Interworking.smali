.class public Lcom/android/server/wifi/util/InformationElementUtil$Interworking;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/InformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Interworking"
.end annotation


# instance fields
.field public ant:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public hessid:J

.field public internet:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->ant:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->internet:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->hessid:J

    return-void
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 8

    const/16 v7, 0x9

    const/4 v6, 0x7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v4, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v5, 0x6b

    if-eq v4, v5, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Element id is not INTERWORKING, : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v4, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v0, v4, 0xff

    invoke-static {}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->values()[Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    move-result-object v4

    and-int/lit8 v5, v0, 0xf

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->ant:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->internet:Z

    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v2, v2

    if-eq v2, v3, :cond_2

    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v2, v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v2, v2

    if-eq v2, v6, :cond_2

    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v2, v2

    if-eq v2, v7, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bad Interworking element length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v2, v2

    if-eq v2, v6, :cond_3

    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v2, v2

    if-ne v2, v7, :cond_4

    :cond_3
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/ByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$Interworking;->hessid:J

    :cond_4
    return-void
.end method

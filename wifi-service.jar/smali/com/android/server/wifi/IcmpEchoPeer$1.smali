.class Lcom/android/server/wifi/IcmpEchoPeer$1;
.super Ljava/lang/Object;
.source "IcmpEchoPeer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/IcmpEchoPeer;->doPingPipeLine(II)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/IcmpEchoPeer;

.field final synthetic val$TAG:Ljava/lang/String;

.field final synthetic val$finalPayloadSize:I

.field final synthetic val$timeoutMillis:I

.field final synthetic val$totalNumOfPackets:I

.field final synthetic val$txPingIdMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/IcmpEchoPeer;Ljava/lang/String;ILjava/util/HashMap;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/IcmpEchoPeer$1;->this$0:Lcom/android/server/wifi/IcmpEchoPeer;

    iput-object p2, p0, Lcom/android/server/wifi/IcmpEchoPeer$1;->val$TAG:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/wifi/IcmpEchoPeer$1;->val$finalPayloadSize:I

    iput-object p4, p0, Lcom/android/server/wifi/IcmpEchoPeer$1;->val$txPingIdMap:Ljava/util/HashMap;

    iput p5, p0, Lcom/android/server/wifi/IcmpEchoPeer$1;->val$totalNumOfPackets:I

    iput p6, p0, Lcom/android/server/wifi/IcmpEchoPeer$1;->val$timeoutMillis:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    invoke-static {}, Lcom/android/server/wifi/IcmpEchoPeer;->-get1()Z

    move-result v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/IcmpEchoPeer$1;->val$TAG:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string/jumbo v23, "[Start TX]"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/IcmpEchoPeer$1;->val$finalPayloadSize:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/IcmpEchoPeer$1;->this$0:Lcom/android/server/wifi/IcmpEchoPeer;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/IcmpEchoPeer;->-get2(Lcom/android/server/wifi/IcmpEchoPeer;)I

    move-result v22

    add-int/lit8 v15, v22, -0x8

    new-instance v17, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    move-object/from16 v0, v17

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    invoke-virtual/range {v17 .. v17}, Ljava/util/Random;->nextInt()I

    move-result v22

    const/high16 v23, 0x10000

    rem-int v22, v22, v23

    move/from16 v0, v22

    int-to-short v13, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Random;->nextInt()I

    move-result v22

    const/high16 v23, 0x10000

    div-int v22, v22, v23

    move/from16 v0, v22

    int-to-short v10, v0

    const/16 v19, 0x0

    :cond_1
    add-int/lit8 v22, v19, 0x1

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v19, v0

    move/from16 v0, v16

    if-lt v0, v15, :cond_5

    move v11, v15

    :goto_0
    sub-int v16, v16, v11

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/IcmpEchoPeer$1;->this$0:Lcom/android/server/wifi/IcmpEchoPeer;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/IcmpEchoPeer;->-get2(Lcom/android/server/wifi/IcmpEchoPeer;)I

    move-result v22

    add-int/lit8 v22, v22, 0x14

    invoke-static/range {v22 .. v22}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    add-int/lit8 v22, v11, 0x8

    invoke-static/range {v22 .. v22}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/IcmpEchoPeer$1;->this$0:Lcom/android/server/wifi/IcmpEchoPeer;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/IcmpEchoPeer;->-get3(Lcom/android/server/wifi/IcmpEchoPeer;)Ljava/net/InetAddress;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/IcmpEchoPeer$1;->this$0:Lcom/android/server/wifi/IcmpEchoPeer;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/IcmpEchoPeer;->-get6(Lcom/android/server/wifi/IcmpEchoPeer;)Ljava/net/InetAddress;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/IcmpEchoPeer$1;->val$txPingIdMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-static {v13}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v23

    invoke-static/range {v19 .. v19}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    sget-object v22, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move/from16 v18, v11

    :goto_1
    invoke-static {}, Lcom/android/server/wifi/IcmpEchoPeer;->-get4()I

    move-result v22

    move/from16 v0, v18

    move/from16 v1, v22

    if-gt v0, v1, :cond_6

    const-string/jumbo v22, "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ__"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-virtual {v9, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/IcmpEchoPeer$1;->this$0:Lcom/android/server/wifi/IcmpEchoPeer;

    move-object/from16 v22, v0

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v23

    add-int/lit8 v24, v11, 0x8

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v25

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/IcmpEchoPeer;->checksum([BII)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v11, 0x8

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    sget-object v22, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v22, 0x45

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v22, v6, 0x14

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/16 v22, 0x4000

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/16 v22, 0x40

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/IcmpEchoPeer$1;->this$0:Lcom/android/server/wifi/IcmpEchoPeer;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/IcmpEchoPeer;->-get3(Lcom/android/server/wifi/IcmpEchoPeer;)Ljava/net/InetAddress;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/IcmpEchoPeer$1;->this$0:Lcom/android/server/wifi/IcmpEchoPeer;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/IcmpEchoPeer;->-get6(Lcom/android/server/wifi/IcmpEchoPeer;)Ljava/net/InetAddress;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/IcmpEchoPeer$1;->this$0:Lcom/android/server/wifi/IcmpEchoPeer;

    move-object/from16 v22, v0

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x14

    invoke-virtual/range {v22 .. v25}, Lcom/android/server/wifi/IcmpEchoPeer;->checksum([BII)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    const/16 v23, 0xa

    move/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/IcmpEchoPeer$1;->this$0:Lcom/android/server/wifi/IcmpEchoPeer;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/IcmpEchoPeer;->-get5(Lcom/android/server/wifi/IcmpEchoPeer;)Llibcore/net/RawSocket;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/IcmpEchoPeer$1;->this$0:Lcom/android/server/wifi/IcmpEchoPeer;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/IcmpEchoPeer;->-get7(Lcom/android/server/wifi/IcmpEchoPeer;)[B

    move-result-object v23

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v24

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v25

    const/16 v26, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v26

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Llibcore/net/RawSocket;->write([B[BII)I

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-static {}, Lcom/android/server/wifi/IcmpEchoPeer;->-get1()Z

    move-result v22

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/IcmpEchoPeer$1;->val$TAG:Ljava/lang/String;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/IcmpEchoPeer$1;->this$0:Lcom/android/server/wifi/IcmpEchoPeer;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/IcmpEchoPeer;->-wrap0(Lcom/android/server/wifi/IcmpEchoPeer;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "ICMP Echo Request Sent. ALL/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ", ipId / icmpId / seqNum : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " / "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " / "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v16, :cond_7

    invoke-static {}, Lcom/android/server/wifi/IcmpEchoPeer;->-get0()Z

    move-result v22

    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/IcmpEchoPeer$1;->val$TAG:Ljava/lang/String;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/IcmpEchoPeer$1;->this$0:Lcom/android/server/wifi/IcmpEchoPeer;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/IcmpEchoPeer;->-wrap0(Lcom/android/server/wifi/IcmpEchoPeer;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "ICMP Echo Request Sent. ALL "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/IcmpEchoPeer$1;->val$totalNumOfPackets:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " packet(s)."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/server/wifi/IcmpEchoPeer;->-get1()Z

    move-result v22

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/IcmpEchoPeer$1;->val$TAG:Ljava/lang/String;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "[TX complete] "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    sub-long v24, v24, v20

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " msec"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    move/from16 v11, v16

    goto/16 :goto_0

    :cond_6
    :try_start_1
    const-string/jumbo v22, "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ__"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    const-string/jumbo v23, "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ__"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v9, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const-string/jumbo v22, "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ__"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    sub-int v18, v18, v22

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v22, v13, 0x1

    move/from16 v0, v22

    int-to-short v13, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v22, v22, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/IcmpEchoPeer$1;->val$timeoutMillis:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-lez v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/IcmpEchoPeer$1;->val$TAG:Ljava/lang/String;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Failed to send all packets within the timeout/2. "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/IcmpEchoPeer$1;->val$txPingIdMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " / "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/IcmpEchoPeer$1;->val$totalNumOfPackets:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/IcmpEchoPeer$1;->val$TAG:Ljava/lang/String;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Failed to send all packets due to Exception. "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

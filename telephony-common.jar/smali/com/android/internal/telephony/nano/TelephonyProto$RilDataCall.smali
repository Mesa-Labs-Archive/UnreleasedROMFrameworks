.class public final Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RilDataCall"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;


# instance fields
.field public cid:I

.field public iframe:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    sput-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->cid:I

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->type:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->iframe:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->cid:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->cid:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->type:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->type:I

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->iframe:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->iframe:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->cid:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    :pswitch_0
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->type:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->iframe:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->cid:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->cid:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->type:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->type:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->iframe:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->iframe:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method

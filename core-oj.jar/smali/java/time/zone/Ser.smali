.class final Ljava/time/zone/Ser;
.super Ljava/lang/Object;
.source "Ser.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final ZOT:B = 0x2t

.field static final ZOTRULE:B = 0x3t

.field static final ZRULES:B = 0x1t

.field private static final serialVersionUID:J = -0x7b4f011483e5ac42L


# instance fields
.field private object:Ljava/lang/Object;

.field private type:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(BLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/time/zone/Ser;->type:B

    iput-object p2, p0, Ljava/time/zone/Ser;->object:Ljava/lang/Object;

    return-void
.end method

.method static read(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    invoke-static {v0, p0}, Ljava/time/zone/Ser;->readInternal(BLjava/io/DataInput;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method static readEpochSec(Ljava/io/DataInput;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    and-int/lit16 v0, v3, 0xff

    const/16 v3, 0xff

    if-ne v0, v3, :cond_0

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v6

    return-wide v6

    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    and-int/lit16 v2, v3, 0xff

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v3, v0, 0x10

    shl-int/lit8 v6, v2, 0x8

    add-int/2addr v3, v6

    add-int/2addr v3, v1

    int-to-long v4, v3

    const-wide/16 v6, 0x384

    mul-long/2addr v6, v4

    const-wide v8, 0x110bc5000L

    sub-long/2addr v6, v8

    return-wide v6
.end method

.method private static readInternal(BLjava/io/DataInput;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/io/StreamCorruptedException;

    const-string/jumbo v1, "Unknown serialized type"

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Ljava/time/zone/ZoneRules;->readExternal(Ljava/io/DataInput;)Ljava/time/zone/ZoneRules;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {p1}, Ljava/time/zone/ZoneOffsetTransition;->readExternal(Ljava/io/DataInput;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-static {p1}, Ljava/time/zone/ZoneOffsetTransitionRule;->readExternal(Ljava/io/DataInput;)Ljava/time/zone/ZoneOffsetTransitionRule;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static readOffset(Ljava/io/DataInput;)Ljava/time/ZoneOffset;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    mul-int/lit16 v1, v0, 0x384

    invoke-static {v1}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v1

    goto :goto_0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/time/zone/Ser;->object:Ljava/lang/Object;

    return-object v0
.end method

.method static write(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Ljava/time/zone/Ser;->writeInternal(BLjava/lang/Object;Ljava/io/DataOutput;)V

    return-void
.end method

.method static writeEpochSec(JLjava/io/DataOutput;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x384

    const-wide v2, -0x110bc5000L

    cmp-long v1, p0, v2

    if-ltz v1, :cond_0

    const-wide v2, 0x26cb5db00L

    cmp-long v1, p0, v2

    if-gez v1, :cond_0

    rem-long v2, p0, v6

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const-wide v2, 0x110bc5000L

    add-long/2addr v2, p0

    div-long/2addr v2, v6

    long-to-int v0, v2

    ushr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeByte(I)V

    ushr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeByte(I)V

    and-int/lit16 v1, v0, 0xff

    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeByte(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0xff

    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeByte(I)V

    invoke-interface {p2, p0, p1}, Ljava/io/DataOutput;->writeLong(J)V

    goto :goto_0
.end method

.method private static writeInternal(BLjava/lang/Object;Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2, p0}, Ljava/io/DataOutput;->writeByte(I)V

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/io/InvalidClassException;

    const-string/jumbo v1, "Unknown serialized type"

    invoke-direct {v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    check-cast p1, Ljava/time/zone/ZoneRules;

    invoke-virtual {p1, p2}, Ljava/time/zone/ZoneRules;->writeExternal(Ljava/io/DataOutput;)V

    :goto_0
    return-void

    :pswitch_1
    check-cast p1, Ljava/time/zone/ZoneOffsetTransition;

    invoke-virtual {p1, p2}, Ljava/time/zone/ZoneOffsetTransition;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    :pswitch_2
    check-cast p1, Ljava/time/zone/ZoneOffsetTransitionRule;

    invoke-virtual {p1, p2}, Ljava/time/zone/ZoneOffsetTransitionRule;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static writeOffset(Ljava/time/ZoneOffset;Ljava/io/DataOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    rem-int/lit16 v2, v1, 0x384

    if-nez v2, :cond_1

    div-int/lit16 v0, v1, 0x384

    :goto_0
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    const/16 v2, 0x7f

    if-ne v0, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x7f

    goto :goto_0
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Ljava/time/zone/Ser;->type:B

    iget-byte v0, p0, Ljava/time/zone/Ser;->type:B

    invoke-static {v0, p1}, Ljava/time/zone/Ser;->readInternal(BLjava/io/DataInput;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/time/zone/Ser;->object:Ljava/lang/Object;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Ljava/time/zone/Ser;->type:B

    iget-object v1, p0, Ljava/time/zone/Ser;->object:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Ljava/time/zone/Ser;->writeInternal(BLjava/lang/Object;Ljava/io/DataOutput;)V

    return-void
.end method

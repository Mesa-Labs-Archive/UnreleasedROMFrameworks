.class final Ljava/time/Ser;
.super Ljava/lang/Object;
.source "Ser.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final DURATION_TYPE:B = 0x1t

.field static final INSTANT_TYPE:B = 0x2t

.field static final LOCAL_DATE_TIME_TYPE:B = 0x5t

.field static final LOCAL_DATE_TYPE:B = 0x3t

.field static final LOCAL_TIME_TYPE:B = 0x4t

.field static final MONTH_DAY_TYPE:B = 0xdt

.field static final OFFSET_DATE_TIME_TYPE:B = 0xat

.field static final OFFSET_TIME_TYPE:B = 0x9t

.field static final PERIOD_TYPE:B = 0xet

.field static final YEAR_MONTH_TYPE:B = 0xct

.field static final YEAR_TYPE:B = 0xbt

.field static final ZONE_DATE_TIME_TYPE:B = 0x6t

.field static final ZONE_OFFSET_TYPE:B = 0x8t

.field static final ZONE_REGION_TYPE:B = 0x7t

.field private static final serialVersionUID:J = -0x6aa27b45e4ddb74eL


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

    iput-byte p1, p0, Ljava/time/Ser;->type:B

    iput-object p2, p0, Ljava/time/Ser;->object:Ljava/lang/Object;

    return-void
.end method

.method static read(Ljava/io/ObjectInput;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    invoke-static {v0, p0}, Ljava/time/Ser;->readInternal(BLjava/io/ObjectInput;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static readInternal(BLjava/io/ObjectInput;)Ljava/lang/Object;
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
    invoke-static {p1}, Ljava/time/Duration;->readExternal(Ljava/io/DataInput;)Ljava/time/Duration;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {p1}, Ljava/time/Instant;->readExternal(Ljava/io/DataInput;)Ljava/time/Instant;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-static {p1}, Ljava/time/LocalDate;->readExternal(Ljava/io/DataInput;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-static {p1}, Ljava/time/LocalDateTime;->readExternal(Ljava/io/DataInput;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-static {p1}, Ljava/time/LocalTime;->readExternal(Ljava/io/DataInput;)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-static {p1}, Ljava/time/ZonedDateTime;->readExternal(Ljava/io/ObjectInput;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-static {p1}, Ljava/time/ZoneOffset;->readExternal(Ljava/io/DataInput;)Ljava/time/ZoneOffset;

    move-result-object v0

    return-object v0

    :pswitch_7
    invoke-static {p1}, Ljava/time/ZoneRegion;->readExternal(Ljava/io/DataInput;)Ljava/time/ZoneId;

    move-result-object v0

    return-object v0

    :pswitch_8
    invoke-static {p1}, Ljava/time/OffsetTime;->readExternal(Ljava/io/ObjectInput;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0

    :pswitch_9
    invoke-static {p1}, Ljava/time/OffsetDateTime;->readExternal(Ljava/io/ObjectInput;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0

    :pswitch_a
    invoke-static {p1}, Ljava/time/Year;->readExternal(Ljava/io/DataInput;)Ljava/time/Year;

    move-result-object v0

    return-object v0

    :pswitch_b
    invoke-static {p1}, Ljava/time/YearMonth;->readExternal(Ljava/io/DataInput;)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0

    :pswitch_c
    invoke-static {p1}, Ljava/time/MonthDay;->readExternal(Ljava/io/DataInput;)Ljava/time/MonthDay;

    move-result-object v0

    return-object v0

    :pswitch_d
    invoke-static {p1}, Ljava/time/Period;->readExternal(Ljava/io/DataInput;)Ljava/time/Period;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/time/Ser;->object:Ljava/lang/Object;

    return-object v0
.end method

.method static writeInternal(BLjava/lang/Object;Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2, p0}, Ljava/io/ObjectOutput;->writeByte(I)V

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/io/InvalidClassException;

    const-string/jumbo v1, "Unknown serialized type"

    invoke-direct {v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    check-cast p1, Ljava/time/Duration;

    invoke-virtual {p1, p2}, Ljava/time/Duration;->writeExternal(Ljava/io/DataOutput;)V

    :goto_0
    return-void

    :pswitch_1
    check-cast p1, Ljava/time/Instant;

    invoke-virtual {p1, p2}, Ljava/time/Instant;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    :pswitch_2
    check-cast p1, Ljava/time/LocalDate;

    invoke-virtual {p1, p2}, Ljava/time/LocalDate;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    :pswitch_3
    check-cast p1, Ljava/time/LocalDateTime;

    invoke-virtual {p1, p2}, Ljava/time/LocalDateTime;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    :pswitch_4
    check-cast p1, Ljava/time/LocalTime;

    invoke-virtual {p1, p2}, Ljava/time/LocalTime;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    :pswitch_5
    check-cast p1, Ljava/time/ZoneRegion;

    invoke-virtual {p1, p2}, Ljava/time/ZoneRegion;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    :pswitch_6
    check-cast p1, Ljava/time/ZoneOffset;

    invoke-virtual {p1, p2}, Ljava/time/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    :pswitch_7
    check-cast p1, Ljava/time/ZonedDateTime;

    invoke-virtual {p1, p2}, Ljava/time/ZonedDateTime;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    :pswitch_8
    check-cast p1, Ljava/time/OffsetTime;

    invoke-virtual {p1, p2}, Ljava/time/OffsetTime;->writeExternal(Ljava/io/ObjectOutput;)V

    goto :goto_0

    :pswitch_9
    check-cast p1, Ljava/time/OffsetDateTime;

    invoke-virtual {p1, p2}, Ljava/time/OffsetDateTime;->writeExternal(Ljava/io/ObjectOutput;)V

    goto :goto_0

    :pswitch_a
    check-cast p1, Ljava/time/Year;

    invoke-virtual {p1, p2}, Ljava/time/Year;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    :pswitch_b
    check-cast p1, Ljava/time/YearMonth;

    invoke-virtual {p1, p2}, Ljava/time/YearMonth;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    :pswitch_c
    check-cast p1, Ljava/time/MonthDay;

    invoke-virtual {p1, p2}, Ljava/time/MonthDay;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    :pswitch_d
    check-cast p1, Ljava/time/Period;

    invoke-virtual {p1, p2}, Ljava/time/Period;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
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

    iput-byte v0, p0, Ljava/time/Ser;->type:B

    iget-byte v0, p0, Ljava/time/Ser;->type:B

    invoke-static {v0, p1}, Ljava/time/Ser;->readInternal(BLjava/io/ObjectInput;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/time/Ser;->object:Ljava/lang/Object;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Ljava/time/Ser;->type:B

    iget-object v1, p0, Ljava/time/Ser;->object:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Ljava/time/Ser;->writeInternal(BLjava/lang/Object;Ljava/io/ObjectOutput;)V

    return-void
.end method

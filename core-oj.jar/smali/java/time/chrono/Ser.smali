.class final Ljava/time/chrono/Ser;
.super Ljava/lang/Object;
.source "Ser.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final CHRONO_LOCAL_DATE_TIME_TYPE:B = 0x2t

.field static final CHRONO_PERIOD_TYPE:B = 0x9t

.field static final CHRONO_TYPE:B = 0x1t

.field static final CHRONO_ZONE_DATE_TIME_TYPE:B = 0x3t

.field static final HIJRAH_DATE_TYPE:B = 0x6t

.field static final JAPANESE_DATE_TYPE:B = 0x4t

.field static final JAPANESE_ERA_TYPE:B = 0x5t

.field static final MINGUO_DATE_TYPE:B = 0x7t

.field static final THAIBUDDHIST_DATE_TYPE:B = 0x8t

.field private static final serialVersionUID:J = -0x54b386e71d87ec81L


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

    iput-byte p1, p0, Ljava/time/chrono/Ser;->type:B

    iput-object p2, p0, Ljava/time/chrono/Ser;->object:Ljava/lang/Object;

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

    invoke-static {v0, p0}, Ljava/time/chrono/Ser;->readInternal(BLjava/io/ObjectInput;)Ljava/lang/Object;

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
    invoke-static {p1}, Ljava/time/chrono/AbstractChronology;->readExternal(Ljava/io/DataInput;)Ljava/time/chrono/Chronology;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {p1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->readExternal(Ljava/io/ObjectInput;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-static {p1}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->readExternal(Ljava/io/ObjectInput;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-static {p1}, Ljava/time/chrono/JapaneseDate;->readExternal(Ljava/io/DataInput;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-static {p1}, Ljava/time/chrono/JapaneseEra;->readExternal(Ljava/io/DataInput;)Ljava/time/chrono/JapaneseEra;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-static {p1}, Ljava/time/chrono/HijrahDate;->readExternal(Ljava/io/ObjectInput;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-static {p1}, Ljava/time/chrono/MinguoDate;->readExternal(Ljava/io/DataInput;)Ljava/time/chrono/MinguoDate;

    move-result-object v0

    return-object v0

    :pswitch_7
    invoke-static {p1}, Ljava/time/chrono/ThaiBuddhistDate;->readExternal(Ljava/io/DataInput;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0

    :pswitch_8
    invoke-static {p1}, Ljava/time/chrono/ChronoPeriodImpl;->readExternal(Ljava/io/DataInput;)Ljava/time/chrono/ChronoPeriodImpl;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/time/chrono/Ser;->object:Ljava/lang/Object;

    return-object v0
.end method

.method private static writeInternal(BLjava/lang/Object;Ljava/io/ObjectOutput;)V
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
    check-cast p1, Ljava/time/chrono/AbstractChronology;

    invoke-virtual {p1, p2}, Ljava/time/chrono/AbstractChronology;->writeExternal(Ljava/io/DataOutput;)V

    :goto_0
    return-void

    :pswitch_1
    check-cast p1, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    invoke-virtual {p1, p2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->writeExternal(Ljava/io/ObjectOutput;)V

    goto :goto_0

    :pswitch_2
    check-cast p1, Ljava/time/chrono/ChronoZonedDateTimeImpl;

    invoke-virtual {p1, p2}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->writeExternal(Ljava/io/ObjectOutput;)V

    goto :goto_0

    :pswitch_3
    check-cast p1, Ljava/time/chrono/JapaneseDate;

    invoke-virtual {p1, p2}, Ljava/time/chrono/JapaneseDate;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    :pswitch_4
    check-cast p1, Ljava/time/chrono/JapaneseEra;

    invoke-virtual {p1, p2}, Ljava/time/chrono/JapaneseEra;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    :pswitch_5
    check-cast p1, Ljava/time/chrono/HijrahDate;

    invoke-virtual {p1, p2}, Ljava/time/chrono/HijrahDate;->writeExternal(Ljava/io/ObjectOutput;)V

    goto :goto_0

    :pswitch_6
    check-cast p1, Ljava/time/chrono/MinguoDate;

    invoke-virtual {p1, p2}, Ljava/time/chrono/MinguoDate;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    :pswitch_7
    check-cast p1, Ljava/time/chrono/ThaiBuddhistDate;

    invoke-virtual {p1, p2}, Ljava/time/chrono/ThaiBuddhistDate;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    :pswitch_8
    check-cast p1, Ljava/time/chrono/ChronoPeriodImpl;

    invoke-virtual {p1, p2}, Ljava/time/chrono/ChronoPeriodImpl;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
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

    iput-byte v0, p0, Ljava/time/chrono/Ser;->type:B

    iget-byte v0, p0, Ljava/time/chrono/Ser;->type:B

    invoke-static {v0, p1}, Ljava/time/chrono/Ser;->readInternal(BLjava/io/ObjectInput;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/time/chrono/Ser;->object:Ljava/lang/Object;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Ljava/time/chrono/Ser;->type:B

    iget-object v1, p0, Ljava/time/chrono/Ser;->object:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Ljava/time/chrono/Ser;->writeInternal(BLjava/lang/Object;Ljava/io/ObjectOutput;)V

    return-void
.end method

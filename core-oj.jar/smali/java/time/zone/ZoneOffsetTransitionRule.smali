.class public final Ljava/time/zone/ZoneOffsetTransitionRule;
.super Ljava/lang/Object;
.source "ZoneOffsetTransitionRule.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5f9acf201199524bL


# instance fields
.field private final dom:B

.field private final dow:Ljava/time/DayOfWeek;

.field private final month:Ljava/time/Month;

.field private final offsetAfter:Ljava/time/ZoneOffset;

.field private final offsetBefore:Ljava/time/ZoneOffset;

.field private final standardOffset:Ljava/time/ZoneOffset;

.field private final time:Ljava/time/LocalTime;

.field private final timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field private final timeEndOfDay:Z


# direct methods
.method constructor <init>(Ljava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    int-to-byte v0, p2

    iput-byte v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    iput-object p3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    iput-object p4, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    iput-boolean p5, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    iput-object p6, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    iput-object p7, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    iput-object p8, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    iput-object p9, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    return-void
.end method

.method public static of(Ljava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/zone/ZoneOffsetTransitionRule;
    .locals 11

    const-string/jumbo v1, "month"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "time"

    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "timeDefnition"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "standardOffset"

    move-object/from16 v0, p6

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "offsetBefore"

    move-object/from16 v0, p7

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "offsetAfter"

    move-object/from16 v0, p8

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v1, -0x1c

    if-lt p1, v1, :cond_0

    const/16 v1, 0x1f

    if-le p1, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Day of month indicator must be between -28 and 31 inclusive excluding zero"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-eqz p1, :cond_0

    if-eqz p4, :cond_2

    sget-object v1, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    invoke-virtual {p3, v1}, Ljava/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Time must be midnight when end of day flag is true"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/time/zone/ZoneOffsetTransitionRule;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Ljava/time/zone/ZoneOffsetTransitionRule;-><init>(Ljava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    return-object v1
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/zone/ZoneOffsetTransitionRule;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v13

    ushr-int/lit8 v6, v13, 0x1c

    invoke-static {v6}, Ljava/time/Month;->of(I)Ljava/time/Month;

    move-result-object v2

    const/high16 v6, 0xfc00000

    and-int/2addr v6, v13

    ushr-int/lit8 v6, v6, 0x16

    add-int/lit8 v3, v6, -0x20

    const/high16 v6, 0x380000

    and-int/2addr v6, v13

    ushr-int/lit8 v14, v6, 0x13

    if-nez v14, :cond_0

    const/4 v4, 0x0

    :goto_0
    const v6, 0x7c000

    and-int/2addr v6, v13

    ushr-int/lit8 v16, v6, 0xe

    invoke-static {}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->values()[Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-result-object v6

    and-int/lit16 v0, v13, 0x3000

    move/from16 v17, v0

    ushr-int/lit8 v17, v17, 0xc

    aget-object v7, v6, v17

    and-int/lit16 v6, v13, 0xff0

    ushr-int/lit8 v15, v6, 0x4

    and-int/lit8 v6, v13, 0xc

    ushr-int/lit8 v12, v6, 0x2

    and-int/lit8 v11, v13, 0x3

    const/16 v6, 0x1f

    move/from16 v0, v16

    if-ne v0, v6, :cond_1

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v5

    :goto_1
    const/16 v6, 0xff

    if-ne v15, v6, :cond_2

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v8

    :goto_2
    const/4 v6, 0x3

    if-ne v12, v6, :cond_3

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v9

    :goto_3
    const/4 v6, 0x3

    if-ne v11, v6, :cond_4

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v10

    :goto_4
    const/16 v6, 0x18

    move/from16 v0, v16

    if-ne v0, v6, :cond_5

    const/4 v6, 0x1

    :goto_5
    invoke-static/range {v2 .. v10}, Ljava/time/zone/ZoneOffsetTransitionRule;->of(Ljava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/zone/ZoneOffsetTransitionRule;

    move-result-object v6

    return-object v6

    :cond_0
    invoke-static {v14}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v4

    goto :goto_0

    :cond_1
    rem-int/lit8 v6, v16, 0x18

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v6, v0}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v5

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v15, -0x80

    mul-int/lit16 v6, v6, 0x384

    invoke-static {v6}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v8

    goto :goto_2

    :cond_3
    invoke-virtual {v8}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v6

    mul-int/lit16 v0, v12, 0x708

    move/from16 v17, v0

    add-int v6, v6, v17

    invoke-static {v6}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v9

    goto :goto_3

    :cond_4
    invoke-virtual {v8}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v6

    mul-int/lit16 v0, v11, 0x708

    move/from16 v17, v0

    add-int v6, v6, v17

    invoke-static {v6}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v10

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    goto :goto_5
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/time/zone/Ser;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Ljava/time/zone/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public createTransition(I)Ljava/time/zone/ZoneOffsetTransition;
    .locals 8

    iget-byte v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    if-gez v3, :cond_2

    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    iget-object v4, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    sget-object v5, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    int-to-long v6, p1

    invoke-virtual {v5, v6, v7}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/time/Month;->length(Z)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget-byte v5, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    add-int/2addr v4, v5

    invoke-static {p1, v3, v4}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v0

    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    invoke-static {v3}, Ljava/time/temporal/TemporalAdjusters;->previousOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;

    move-result-object v0

    :cond_0
    :goto_0
    iget-boolean v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v3, :cond_1

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    :cond_1
    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    invoke-static {v0, v3}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    iget-object v4, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    iget-object v5, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v3, v1, v4, v5}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->createDateTime(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v2

    new-instance v3, Ljava/time/zone/ZoneOffsetTransition;

    iget-object v4, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    iget-object v5, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-direct {v3, v2, v4, v5}, Ljava/time/zone/ZoneOffsetTransition;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    return-object v3

    :cond_2
    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    iget-byte v4, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    invoke-static {p1, v3, v4}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v0

    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    invoke-static {v3}, Ljava/time/temporal/TemporalAdjusters;->nextOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v2, p1, Ljava/time/zone/ZoneOffsetTransitionRule;

    if-eqz v2, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/time/zone/ZoneOffsetTransitionRule;

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    iget-object v3, v0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    if-ne v2, v3, :cond_1

    iget-byte v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    iget-byte v3, v0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    iget-object v3, v0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    iget-object v3, v0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    iget-object v3, v0, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    invoke-virtual {v2, v3}, Ljava/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    iget-boolean v3, v0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    iget-object v3, v0, Ljava/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    invoke-virtual {v2, v3}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    iget-object v3, v0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v2, v3}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    iget-object v2, v0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public getDayOfMonthIndicator()I
    .locals 1

    iget-byte v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    return v0
.end method

.method public getDayOfWeek()Ljava/time/DayOfWeek;
    .locals 1

    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    return-object v0
.end method

.method public getLocalTime()Ljava/time/LocalTime;
    .locals 1

    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    return-object v0
.end method

.method public getMonth()Ljava/time/Month;
    .locals 1

    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    return-object v0
.end method

.method public getOffsetAfter()Ljava/time/ZoneOffset;
    .locals 1

    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method public getOffsetBefore()Ljava/time/ZoneOffset;
    .locals 1

    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method public getStandardOffset()Ljava/time/ZoneOffset;
    .locals 1

    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method public getTimeDefinition()Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .locals 1

    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    invoke-virtual {v1}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v2

    iget-boolean v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0xf

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    invoke-virtual {v2}, Ljava/time/Month;->ordinal()I

    move-result v2

    shl-int/lit8 v2, v2, 0xb

    add-int/2addr v1, v2

    iget-byte v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    add-int/lit8 v2, v2, 0x20

    shl-int/lit8 v2, v2, 0x5

    add-int/2addr v2, v1

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    if-nez v1, :cond_1

    const/4 v1, 0x7

    :goto_1
    shl-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v2}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->ordinal()I

    move-result v2

    add-int v0, v1, v2

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    invoke-virtual {v1}, Ljava/time/DayOfWeek;->ordinal()I

    move-result v1

    goto :goto_1
.end method

.method public isMidnightEndOfDay()Z
    .locals 1

    iget-boolean v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TransitionRule["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-virtual {v1, v3}, Ljava/time/ZoneOffset;->compareTo(Ljava/time/ZoneOffset;)I

    move-result v1

    if-lez v1, :cond_0

    const-string/jumbo v1, "Gap "

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    if-eqz v1, :cond_3

    iget-byte v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    invoke-virtual {v1}, Ljava/time/DayOfWeek;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " on or before last day of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    invoke-virtual {v2}, Ljava/time/Month;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string/jumbo v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "24:00"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", standard offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "Overlap "

    goto :goto_0

    :cond_1
    iget-byte v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    if-gez v1, :cond_2

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    invoke-virtual {v1}, Ljava/time/DayOfWeek;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " on or before last day minus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    neg-int v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    invoke-virtual {v2}, Ljava/time/Month;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    invoke-virtual {v1}, Ljava/time/DayOfWeek;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " on or after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    invoke-virtual {v2}, Ljava/time/Month;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_3
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    invoke-virtual {v1}, Ljava/time/Month;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_4
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    invoke-virtual {v1}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v13, 0xe10

    const/16 v11, 0x708

    const/4 v12, 0x3

    iget-boolean v10, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v10, :cond_6

    const v9, 0x15180

    :goto_0
    iget-object v10, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    invoke-virtual {v10}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v6

    iget-object v10, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v10}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v10

    sub-int v4, v10, v6

    iget-object v10, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-virtual {v10}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v10

    sub-int v1, v10, v6

    rem-int/lit16 v10, v9, 0xe10

    if-nez v10, :cond_8

    iget-boolean v10, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v10, :cond_7

    const/16 v8, 0x18

    :goto_1
    rem-int/lit16 v10, v6, 0x384

    if-nez v10, :cond_9

    div-int/lit16 v10, v6, 0x384

    add-int/lit16 v7, v10, 0x80

    :goto_2
    if-eqz v4, :cond_0

    if-ne v4, v11, :cond_a

    :cond_0
    div-int/lit16 v3, v4, 0x708

    :goto_3
    if-eqz v1, :cond_1

    if-ne v1, v11, :cond_b

    :cond_1
    div-int/lit16 v0, v1, 0x708

    :goto_4
    iget-object v10, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    if-nez v10, :cond_c

    const/4 v5, 0x0

    :goto_5
    iget-object v10, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    invoke-virtual {v10}, Ljava/time/Month;->getValue()I

    move-result v10

    shl-int/lit8 v10, v10, 0x1c

    iget-byte v11, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    add-int/lit8 v11, v11, 0x20

    shl-int/lit8 v11, v11, 0x16

    add-int/2addr v10, v11

    shl-int/lit8 v11, v5, 0x13

    add-int/2addr v10, v11

    shl-int/lit8 v11, v8, 0xe

    add-int/2addr v10, v11

    iget-object v11, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v11}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->ordinal()I

    move-result v11

    shl-int/lit8 v11, v11, 0xc

    add-int/2addr v10, v11

    shl-int/lit8 v11, v7, 0x4

    add-int/2addr v10, v11

    shl-int/lit8 v11, v3, 0x2

    add-int/2addr v10, v11

    add-int v2, v10, v0

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    const/16 v10, 0x1f

    if-ne v8, v10, :cond_2

    invoke-interface {p1, v9}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_2
    const/16 v10, 0xff

    if-ne v7, v10, :cond_3

    invoke-interface {p1, v6}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_3
    if-ne v3, v12, :cond_4

    iget-object v10, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v10}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v10

    invoke-interface {p1, v10}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_4
    if-ne v0, v12, :cond_5

    iget-object v10, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-virtual {v10}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v10

    invoke-interface {p1, v10}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_5
    return-void

    :cond_6
    iget-object v10, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    invoke-virtual {v10}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v9

    goto/16 :goto_0

    :cond_7
    iget-object v10, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    invoke-virtual {v10}, Ljava/time/LocalTime;->getHour()I

    move-result v8

    goto :goto_1

    :cond_8
    const/16 v8, 0x1f

    goto :goto_1

    :cond_9
    const/16 v7, 0xff

    goto :goto_2

    :cond_a
    if-eq v4, v13, :cond_0

    const/4 v3, 0x3

    goto :goto_3

    :cond_b
    if-eq v1, v13, :cond_1

    const/4 v0, 0x3

    goto :goto_4

    :cond_c
    iget-object v10, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    invoke-virtual {v10}, Ljava/time/DayOfWeek;->getValue()I

    move-result v5

    goto :goto_5
.end method

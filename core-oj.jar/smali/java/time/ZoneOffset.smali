.class public final Ljava/time/ZoneOffset;
.super Ljava/time/ZoneId;
.source "ZoneOffset.java"

# interfaces
.implements Ljava/time/temporal/TemporalAccessor;
.implements Ljava/time/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/time/ZoneId;",
        "Ljava/time/temporal/TemporalAccessor;",
        "Ljava/time/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/time/ZoneOffset;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ID_CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/time/ZoneOffset;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:Ljava/time/ZoneOffset;

.field private static final MAX_SECONDS:I = 0xfd20

.field public static final MIN:Ljava/time/ZoneOffset;

.field private static final SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/time/ZoneOffset;",
            ">;"
        }
    .end annotation
.end field

.field public static final UTC:Ljava/time/ZoneOffset;

.field private static final serialVersionUID:J = 0x20b8141d7a029c21L


# instance fields
.field private final transient id:Ljava/lang/String;

.field private final totalSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x10

    const/4 v2, 0x4

    const/high16 v1, 0x3f400000    # 0.75f

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Ljava/time/ZoneOffset;->SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Ljava/time/ZoneOffset;->ID_CACHE:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v0

    sput-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    const v0, -0xfd20

    invoke-static {v0}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v0

    sput-object v0, Ljava/time/ZoneOffset;->MIN:Ljava/time/ZoneOffset;

    const v0, 0xfd20

    invoke-static {v0}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v0

    sput-object v0, Ljava/time/ZoneOffset;->MAX:Ljava/time/ZoneOffset;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/time/ZoneId;-><init>()V

    iput p1, p0, Ljava/time/ZoneOffset;->totalSeconds:I

    invoke-static {p1}, Ljava/time/ZoneOffset;->buildId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/time/ZoneOffset;->id:Ljava/lang/String;

    return-void
.end method

.method private static buildId(I)Ljava/lang/String;
    .locals 8

    const/16 v7, 0xa

    if-nez p0, :cond_0

    const-string/jumbo v5, "Z"

    return-object v5

    :cond_0
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v0, v3, 0xe10

    div-int/lit8 v5, v3, 0x3c

    rem-int/lit8 v1, v5, 0x3c

    if-gez p0, :cond_2

    const-string/jumbo v5, "-"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ge v0, v7, :cond_3

    const-string/jumbo v5, "0"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ge v1, v7, :cond_4

    const-string/jumbo v5, ":0"

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    rem-int/lit8 v2, v3, 0x3c

    if-eqz v2, :cond_1

    if-ge v2, v7, :cond_5

    const-string/jumbo v5, ":0"

    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_2
    const-string/jumbo v5, "+"

    goto :goto_0

    :cond_3
    const-string/jumbo v5, ""

    goto :goto_1

    :cond_4
    const-string/jumbo v5, ":"

    goto :goto_2

    :cond_5
    const-string/jumbo v5, ":"

    goto :goto_3
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneOffset;
    .locals 4

    const-string/jumbo v1, "temporal"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneOffset;

    if-nez v0, :cond_0

    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to obtain ZoneOffset from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method public static of(Ljava/lang/String;)Ljava/time/ZoneOffset;
    .locals 11

    const/16 v10, 0x2d

    const/4 v9, 0x4

    const/4 v6, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v5, "offsetId"

    invoke-static {p0, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v5, Ljava/time/ZoneOffset;->ID_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/ZoneOffset;

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    new-instance v5, Ljava/time/DateTimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid ID for ZoneOffset, invalid format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :pswitch_2
    invoke-static {p0, v8, v7}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x2b

    if-eq v0, v5, :cond_1

    if-eq v0, v10, :cond_1

    new-instance v5, Ljava/time/DateTimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid ID for ZoneOffset, plus/minus not found when expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_3
    invoke-static {p0, v8, v7}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v1

    invoke-static {p0, v6, v7}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v2

    const/4 v4, 0x0

    goto :goto_0

    :pswitch_4
    invoke-static {p0, v8, v7}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v1

    invoke-static {p0, v9, v8}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v2

    const/4 v4, 0x0

    goto :goto_0

    :pswitch_5
    invoke-static {p0, v8, v7}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v1

    invoke-static {p0, v6, v7}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v2

    const/4 v5, 0x5

    invoke-static {p0, v5, v7}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v4

    goto :goto_0

    :pswitch_6
    invoke-static {p0, v8, v7}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v1

    invoke-static {p0, v9, v8}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v2

    const/4 v5, 0x7

    invoke-static {p0, v5, v8}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v4

    goto :goto_0

    :cond_1
    if-ne v0, v10, :cond_2

    neg-int v5, v1

    neg-int v6, v2

    neg-int v7, v4

    invoke-static {v5, v6, v7}, Ljava/time/ZoneOffset;->ofHoursMinutesSeconds(III)Ljava/time/ZoneOffset;

    move-result-object v5

    return-object v5

    :cond_2
    invoke-static {v1, v2, v4}, Ljava/time/ZoneOffset;->ofHoursMinutesSeconds(III)Ljava/time/ZoneOffset;

    move-result-object v5

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public static ofHours(I)Ljava/time/ZoneOffset;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Ljava/time/ZoneOffset;->ofHoursMinutesSeconds(III)Ljava/time/ZoneOffset;

    move-result-object v0

    return-object v0
.end method

.method public static ofHoursMinutes(II)Ljava/time/ZoneOffset;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/time/ZoneOffset;->ofHoursMinutesSeconds(III)Ljava/time/ZoneOffset;

    move-result-object v0

    return-object v0
.end method

.method public static ofHoursMinutesSeconds(III)Ljava/time/ZoneOffset;
    .locals 2

    invoke-static {p0, p1, p2}, Ljava/time/ZoneOffset;->validate(III)V

    invoke-static {p0, p1, p2}, Ljava/time/ZoneOffset;->totalSeconds(III)I

    move-result v0

    invoke-static {v0}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v1

    return-object v1
.end method

.method public static ofTotalSeconds(I)Ljava/time/ZoneOffset;
    .locals 4

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const v3, 0xfd20

    if-le v2, v3, :cond_0

    new-instance v2, Ljava/time/DateTimeException;

    const-string/jumbo v3, "Zone offset not in valid range: -18:00 to +18:00"

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    rem-int/lit16 v2, p0, 0x384

    if-nez v2, :cond_2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/time/ZoneOffset;->SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneOffset;

    if-nez v0, :cond_1

    new-instance v0, Ljava/time/ZoneOffset;

    invoke-direct {v0, p0}, Ljava/time/ZoneOffset;-><init>(I)V

    sget-object v2, Ljava/time/ZoneOffset;->SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljava/time/ZoneOffset;->SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneOffset;

    sget-object v2, Ljava/time/ZoneOffset;->ID_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    new-instance v2, Ljava/time/ZoneOffset;

    invoke-direct {v2, p0}, Ljava/time/ZoneOffset;-><init>(I)V

    return-object v2
.end method

.method private static parseNumber(Ljava/lang/CharSequence;IZ)I
    .locals 6

    const/16 v5, 0x39

    const/16 v4, 0x30

    if-eqz p2, :cond_0

    add-int/lit8 v2, p1, -0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid ID for ZoneOffset, colon not found when expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-lt v0, v4, :cond_1

    if-le v0, v5, :cond_2

    :cond_1
    new-instance v2, Ljava/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid ID for ZoneOffset, non numeric characters found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-lt v1, v4, :cond_1

    if-gt v1, v5, :cond_1

    add-int/lit8 v2, v0, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v1, -0x30

    add-int/2addr v2, v3

    return v2
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/ZoneOffset;
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

.method private static totalSeconds(III)I
    .locals 2

    mul-int/lit16 v0, p0, 0xe10

    mul-int/lit8 v1, p1, 0x3c

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    return v0
.end method

.method private static validate(III)V
    .locals 3

    const/16 v2, 0x3b

    const/16 v1, 0x12

    const/16 v0, -0x12

    if-lt p0, v0, :cond_0

    if-le p0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Zone offset hours not in valid range: value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not in the range -18 to 18"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-lez p0, :cond_3

    if-ltz p1, :cond_2

    if-gez p2, :cond_8

    :cond_2
    new-instance v0, Ljava/time/DateTimeException;

    const-string/jumbo v1, "Zone offset minutes and seconds must be positive because hours is positive"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-gez p0, :cond_5

    if-gtz p1, :cond_4

    if-lez p2, :cond_8

    :cond_4
    new-instance v0, Ljava/time/DateTimeException;

    const-string/jumbo v1, "Zone offset minutes and seconds must be negative because hours is negative"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-lez p1, :cond_7

    if-gez p2, :cond_7

    :cond_6
    new-instance v0, Ljava/time/DateTimeException;

    const-string/jumbo v1, "Zone offset minutes and seconds must have the same sign"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-gez p1, :cond_8

    if-gtz p2, :cond_6

    :cond_8
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v2, :cond_9

    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Zone offset minutes not in valid range: abs(value) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not in the range 0 to 59"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v2, :cond_a

    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Zone offset seconds not in valid range: abs(value) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not in the range 0 to 59"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ne v0, v1, :cond_c

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gtz v0, :cond_b

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_c

    :cond_b
    new-instance v0, Ljava/time/DateTimeException;

    const-string/jumbo v1, "Zone offset not in valid range: -18:00 to +18:00"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/time/Ser;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 4

    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    iget v1, p0, Ljava/time/ZoneOffset;->totalSeconds:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/time/ZoneOffset;

    invoke-virtual {p0, p1}, Ljava/time/ZoneOffset;->compareTo(Ljava/time/ZoneOffset;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/time/ZoneOffset;)I
    .locals 2

    iget v0, p1, Ljava/time/ZoneOffset;->totalSeconds:I

    iget v1, p0, Ljava/time/ZoneOffset;->totalSeconds:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v2, p1, Ljava/time/ZoneOffset;

    if-eqz v2, :cond_2

    iget v2, p0, Ljava/time/ZoneOffset;->totalSeconds:I

    check-cast p1, Ljava/time/ZoneOffset;

    iget v3, p1, Ljava/time/ZoneOffset;->totalSeconds:I

    if-ne v2, v3, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public get(Ljava/time/temporal/TemporalField;)I
    .locals 4

    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    iget v0, p0, Ljava/time/ZoneOffset;->totalSeconds:I

    return v0

    :cond_0
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/time/ZoneOffset;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljava/time/ZoneOffset;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/time/ZoneOffset;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 3

    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    iget v0, p0, Ljava/time/ZoneOffset;->totalSeconds:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRules()Ljava/time/zone/ZoneRules;
    .locals 1

    invoke-static {p0}, Ljava/time/zone/ZoneRules;->of(Ljava/time/ZoneOffset;)Ljava/time/zone/ZoneRules;

    move-result-object v0

    return-object v0
.end method

.method public getTotalSeconds()I
    .locals 1

    iget v0, p0, Ljava/time/ZoneOffset;->totalSeconds:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Ljava/time/ZoneOffset;->totalSeconds:I

    return v0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_1

    sget-object v1, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    :cond_2
    return v0
.end method

.method public query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/time/temporal/TemporalQuery",
            "<TR;>;)TR;"
        }
    .end annotation

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_0

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    invoke-super {p0, p1}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .locals 1

    invoke-super {p0, p1}, Ljava/time/temporal/TemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/time/ZoneOffset;->id:Ljava/lang/String;

    return-object v0
.end method

.method write(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    invoke-virtual {p0, p1}, Ljava/time/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    return-void
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v1, p0, Ljava/time/ZoneOffset;->totalSeconds:I

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

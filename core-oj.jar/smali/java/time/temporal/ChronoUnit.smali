.class public final enum Ljava/time/temporal/ChronoUnit;
.super Ljava/lang/Enum;
.source "ChronoUnit.java"

# interfaces
.implements Ljava/time/temporal/TemporalUnit;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/temporal/ChronoUnit;",
        ">;",
        "Ljava/time/temporal/TemporalUnit;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/temporal/ChronoUnit;

.field public static final enum CENTURIES:Ljava/time/temporal/ChronoUnit;

.field public static final enum DAYS:Ljava/time/temporal/ChronoUnit;

.field public static final enum DECADES:Ljava/time/temporal/ChronoUnit;

.field public static final enum ERAS:Ljava/time/temporal/ChronoUnit;

.field public static final enum FOREVER:Ljava/time/temporal/ChronoUnit;

.field public static final enum HALF_DAYS:Ljava/time/temporal/ChronoUnit;

.field public static final enum HOURS:Ljava/time/temporal/ChronoUnit;

.field public static final enum MICROS:Ljava/time/temporal/ChronoUnit;

.field public static final enum MILLENNIA:Ljava/time/temporal/ChronoUnit;

.field public static final enum MILLIS:Ljava/time/temporal/ChronoUnit;

.field public static final enum MINUTES:Ljava/time/temporal/ChronoUnit;

.field public static final enum MONTHS:Ljava/time/temporal/ChronoUnit;

.field public static final enum NANOS:Ljava/time/temporal/ChronoUnit;

.field public static final enum SECONDS:Ljava/time/temporal/ChronoUnit;

.field public static final enum WEEKS:Ljava/time/temporal/ChronoUnit;

.field public static final enum YEARS:Ljava/time/temporal/ChronoUnit;


# instance fields
.field private final duration:Ljava/time/Duration;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v0, Ljava/time/temporal/ChronoUnit;

    const-string/jumbo v1, "NANOS"

    const-string/jumbo v2, "Nanos"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v3

    invoke-direct {v0, v1, v8, v2, v3}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v0, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    new-instance v0, Ljava/time/temporal/ChronoUnit;

    const-string/jumbo v1, "MICROS"

    const-string/jumbo v2, "Micros"

    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v3

    invoke-direct {v0, v1, v9, v2, v3}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v0, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    new-instance v0, Ljava/time/temporal/ChronoUnit;

    const-string/jumbo v1, "MILLIS"

    const-string/jumbo v2, "Millis"

    const-wide/32 v4, 0xf4240

    invoke-static {v4, v5}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v3

    invoke-direct {v0, v1, v10, v2, v3}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v0, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    new-instance v0, Ljava/time/temporal/ChronoUnit;

    const-string/jumbo v1, "SECONDS"

    const-string/jumbo v2, "Seconds"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v3

    invoke-direct {v0, v1, v11, v2, v3}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v0, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    new-instance v0, Ljava/time/temporal/ChronoUnit;

    const-string/jumbo v1, "MINUTES"

    const-string/jumbo v2, "Minutes"

    const-wide/16 v4, 0x3c

    invoke-static {v4, v5}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v3

    invoke-direct {v0, v1, v12, v2, v3}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v0, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    new-instance v0, Ljava/time/temporal/ChronoUnit;

    const-string/jumbo v1, "HOURS"

    const-string/jumbo v2, "Hours"

    const-wide/16 v4, 0xe10

    invoke-static {v4, v5}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v3

    const/4 v4, 0x5

    invoke-direct {v0, v1, v4, v2, v3}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v0, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    new-instance v0, Ljava/time/temporal/ChronoUnit;

    const-string/jumbo v1, "HALF_DAYS"

    const-string/jumbo v2, "HalfDays"

    const-wide/32 v4, 0xa8c0

    invoke-static {v4, v5}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v3

    const/4 v4, 0x6

    invoke-direct {v0, v1, v4, v2, v3}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v0, Ljava/time/temporal/ChronoUnit;->HALF_DAYS:Ljava/time/temporal/ChronoUnit;

    new-instance v0, Ljava/time/temporal/ChronoUnit;

    const-string/jumbo v1, "DAYS"

    const-string/jumbo v2, "Days"

    const-wide/32 v4, 0x15180

    invoke-static {v4, v5}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v3

    const/4 v4, 0x7

    invoke-direct {v0, v1, v4, v2, v3}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v0, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    new-instance v0, Ljava/time/temporal/ChronoUnit;

    const-string/jumbo v1, "WEEKS"

    const-string/jumbo v2, "Weeks"

    const-wide/32 v4, 0x93a80

    invoke-static {v4, v5}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v3

    const/16 v4, 0x8

    invoke-direct {v0, v1, v4, v2, v3}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v0, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    new-instance v0, Ljava/time/temporal/ChronoUnit;

    const-string/jumbo v1, "MONTHS"

    const-string/jumbo v2, "Months"

    const-wide/32 v4, 0x282072

    invoke-static {v4, v5}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v3

    const/16 v4, 0x9

    invoke-direct {v0, v1, v4, v2, v3}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v0, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    new-instance v0, Ljava/time/temporal/ChronoUnit;

    const-string/jumbo v1, "YEARS"

    const-string/jumbo v2, "Years"

    const-wide/32 v4, 0x1e18558

    invoke-static {v4, v5}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v3

    const/16 v4, 0xa

    invoke-direct {v0, v1, v4, v2, v3}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v0, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    new-instance v0, Ljava/time/temporal/ChronoUnit;

    const-string/jumbo v1, "DECADES"

    const-string/jumbo v2, "Decades"

    const-wide/32 v4, 0x12cf3570

    invoke-static {v4, v5}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v3

    const/16 v4, 0xb

    invoke-direct {v0, v1, v4, v2, v3}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v0, Ljava/time/temporal/ChronoUnit;->DECADES:Ljava/time/temporal/ChronoUnit;

    new-instance v0, Ljava/time/temporal/ChronoUnit;

    const-string/jumbo v1, "CENTURIES"

    const-string/jumbo v2, "Centuries"

    const-wide v4, 0xbc181660L

    invoke-static {v4, v5}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v3

    const/16 v4, 0xc

    invoke-direct {v0, v1, v4, v2, v3}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v0, Ljava/time/temporal/ChronoUnit;->CENTURIES:Ljava/time/temporal/ChronoUnit;

    new-instance v0, Ljava/time/temporal/ChronoUnit;

    const-string/jumbo v1, "MILLENNIA"

    const-string/jumbo v2, "Millennia"

    const-wide v4, 0x758f0dfc0L

    invoke-static {v4, v5}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v3

    const/16 v4, 0xd

    invoke-direct {v0, v1, v4, v2, v3}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v0, Ljava/time/temporal/ChronoUnit;->MILLENNIA:Ljava/time/temporal/ChronoUnit;

    new-instance v0, Ljava/time/temporal/ChronoUnit;

    const-string/jumbo v1, "ERAS"

    const-string/jumbo v2, "Eras"

    const-wide v4, 0x701ce172277000L

    invoke-static {v4, v5}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v3

    const/16 v4, 0xe

    invoke-direct {v0, v1, v4, v2, v3}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v0, Ljava/time/temporal/ChronoUnit;->ERAS:Ljava/time/temporal/ChronoUnit;

    new-instance v0, Ljava/time/temporal/ChronoUnit;

    const-string/jumbo v1, "FOREVER"

    const-string/jumbo v2, "Forever"

    const-wide/32 v4, 0x3b9ac9ff

    const-wide v6, 0x7fffffffffffffffL

    invoke-static {v6, v7, v4, v5}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object v3

    const/16 v4, 0xf

    invoke-direct {v0, v1, v4, v2, v3}, Ljava/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    sput-object v0, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/time/temporal/ChronoUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    aput-object v1, v0, v8

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    aput-object v1, v0, v9

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    aput-object v1, v0, v10

    sget-object v1, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    aput-object v1, v0, v11

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    aput-object v1, v0, v12

    sget-object v1, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoUnit;->HALF_DAYS:Ljava/time/temporal/ChronoUnit;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoUnit;->DECADES:Ljava/time/temporal/ChronoUnit;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoUnit;->CENTURIES:Ljava/time/temporal/ChronoUnit;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MILLENNIA:Ljava/time/temporal/ChronoUnit;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoUnit;->ERAS:Ljava/time/temporal/ChronoUnit;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Ljava/time/temporal/ChronoUnit;->$VALUES:[Ljava/time/temporal/ChronoUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ljava/time/temporal/ChronoUnit;->name:Ljava/lang/String;

    iput-object p4, p0, Ljava/time/temporal/ChronoUnit;->duration:Ljava/time/Duration;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/temporal/ChronoUnit;
    .locals 1

    const-class v0, Ljava/time/temporal/ChronoUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/temporal/ChronoUnit;

    return-object v0
.end method

.method public static values()[Ljava/time/temporal/ChronoUnit;
    .locals 1

    sget-object v0, Ljava/time/temporal/ChronoUnit;->$VALUES:[Ljava/time/temporal/ChronoUnit;

    return-object v0
.end method


# virtual methods
.method public addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    invoke-interface {p1, p2, p3, p0}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J
    .locals 2

    invoke-interface {p1, p2, p0}, Ljava/time/temporal/Temporal;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()Ljava/time/Duration;
    .locals 1

    iget-object v0, p0, Ljava/time/temporal/ChronoUnit;->duration:Ljava/time/Duration;

    return-object v0
.end method

.method public isDateBased()Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p0, v1}, Ljava/time/temporal/ChronoUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_0

    sget-object v1, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    if-eq p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isDurationEstimated()Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p0, v1}, Ljava/time/temporal/ChronoUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSupportedBy(Ljava/time/temporal/Temporal;)Z
    .locals 1

    invoke-interface {p1, p0}, Ljava/time/temporal/Temporal;->isSupported(Ljava/time/temporal/TemporalUnit;)Z

    move-result v0

    return v0
.end method

.method public isTimeBased()Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p0, v1}, Ljava/time/temporal/ChronoUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/time/temporal/ChronoUnit;->name:Ljava/lang/String;

    return-object v0
.end method

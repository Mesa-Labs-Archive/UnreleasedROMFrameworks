.class public final enum Ljava/time/chrono/HijrahEra;
.super Ljava/lang/Enum;
.source "HijrahEra.java"

# interfaces
.implements Ljava/time/chrono/Era;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/chrono/HijrahEra;",
        ">;",
        "Ljava/time/chrono/Era;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/chrono/HijrahEra;

.field public static final enum AH:Ljava/time/chrono/HijrahEra;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/time/chrono/HijrahEra;

    const-string/jumbo v1, "AH"

    invoke-direct {v0, v1, v2}, Ljava/time/chrono/HijrahEra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/chrono/HijrahEra;->AH:Ljava/time/chrono/HijrahEra;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/time/chrono/HijrahEra;

    sget-object v1, Ljava/time/chrono/HijrahEra;->AH:Ljava/time/chrono/HijrahEra;

    aput-object v1, v0, v2

    sput-object v0, Ljava/time/chrono/HijrahEra;->$VALUES:[Ljava/time/chrono/HijrahEra;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static of(I)Ljava/time/chrono/HijrahEra;
    .locals 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object v0, Ljava/time/chrono/HijrahEra;->AH:Ljava/time/chrono/HijrahEra;

    return-object v0

    :cond_0
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid era: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/chrono/HijrahEra;
    .locals 1

    const-class v0, Ljava/time/chrono/HijrahEra;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahEra;

    return-object v0
.end method

.method public static values()[Ljava/time/chrono/HijrahEra;
    .locals 1

    sget-object v0, Ljava/time/chrono/HijrahEra;->$VALUES:[Ljava/time/chrono/HijrahEra;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .locals 4

    const-wide/16 v2, 0x1

    sget-object v0, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    invoke-static {v2, v3, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Ljava/time/chrono/Era;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.class abstract enum Ljava/time/temporal/IsoFields$Field;
.super Ljava/lang/Enum;
.source "IsoFields.java"

# interfaces
.implements Ljava/time/temporal/TemporalField;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/temporal/IsoFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/temporal/IsoFields$Field$1;,
        Ljava/time/temporal/IsoFields$Field$2;,
        Ljava/time/temporal/IsoFields$Field$3;,
        Ljava/time/temporal/IsoFields$Field$4;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/temporal/IsoFields$Field;",
        ">;",
        "Ljava/time/temporal/TemporalField;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/temporal/IsoFields$Field;

.field public static final enum DAY_OF_QUARTER:Ljava/time/temporal/IsoFields$Field;

.field private static final QUARTER_DAYS:[I

.field public static final enum QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

.field public static final enum WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

.field public static final enum WEEK_OF_WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;


# direct methods
.method static synthetic -get0()[I
    .locals 1

    sget-object v0, Ljava/time/temporal/IsoFields$Field;->QUARTER_DAYS:[I

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/time/temporal/TemporalAccessor;)Z
    .locals 1

    invoke-static {p0}, Ljava/time/temporal/IsoFields$Field;->isIso(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/time/LocalDate;)I
    .locals 1

    invoke-static {p0}, Ljava/time/temporal/IsoFields$Field;->getWeekBasedYear(Ljava/time/LocalDate;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(I)I
    .locals 1

    invoke-static {p0}, Ljava/time/temporal/IsoFields$Field;->getWeekRange(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Ljava/time/LocalDate;)I
    .locals 1

    invoke-static {p0}, Ljava/time/temporal/IsoFields$Field;->getWeek(Ljava/time/LocalDate;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Ljava/time/LocalDate;)Ljava/time/temporal/ValueRange;
    .locals 1

    invoke-static {p0}, Ljava/time/temporal/IsoFields$Field;->getWeekRange(Ljava/time/LocalDate;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Ljava/time/temporal/TemporalAccessor;)V
    .locals 0

    invoke-static {p0}, Ljava/time/temporal/IsoFields$Field;->ensureIso(Ljava/time/temporal/TemporalAccessor;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/time/temporal/IsoFields$Field$1;

    const-string/jumbo v1, "DAY_OF_QUARTER"

    invoke-direct {v0, v1, v2}, Ljava/time/temporal/IsoFields$Field$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/temporal/IsoFields$Field;->DAY_OF_QUARTER:Ljava/time/temporal/IsoFields$Field;

    new-instance v0, Ljava/time/temporal/IsoFields$Field$2;

    const-string/jumbo v1, "QUARTER_OF_YEAR"

    invoke-direct {v0, v1, v3}, Ljava/time/temporal/IsoFields$Field$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/temporal/IsoFields$Field;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    new-instance v0, Ljava/time/temporal/IsoFields$Field$3;

    const-string/jumbo v1, "WEEK_OF_WEEK_BASED_YEAR"

    invoke-direct {v0, v1, v4}, Ljava/time/temporal/IsoFields$Field$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/temporal/IsoFields$Field;->WEEK_OF_WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    new-instance v0, Ljava/time/temporal/IsoFields$Field$4;

    const-string/jumbo v1, "WEEK_BASED_YEAR"

    invoke-direct {v0, v1, v5}, Ljava/time/temporal/IsoFields$Field$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/temporal/IsoFields$Field;->WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/time/temporal/IsoFields$Field;

    sget-object v1, Ljava/time/temporal/IsoFields$Field;->DAY_OF_QUARTER:Ljava/time/temporal/IsoFields$Field;

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/IsoFields$Field;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    aput-object v1, v0, v3

    sget-object v1, Ljava/time/temporal/IsoFields$Field;->WEEK_OF_WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    aput-object v1, v0, v4

    sget-object v1, Ljava/time/temporal/IsoFields$Field;->WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    aput-object v1, v0, v5

    sput-object v0, Ljava/time/temporal/IsoFields$Field;->$VALUES:[Ljava/time/temporal/IsoFields$Field;

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljava/time/temporal/IsoFields$Field;->QUARTER_DAYS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x5a
        0xb5
        0x111
        0x0
        0x5b
        0xb6
        0x112
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/time/temporal/IsoFields$Field;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/time/temporal/IsoFields$Field;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static ensureIso(Ljava/time/temporal/TemporalAccessor;)V
    .locals 2

    invoke-static {p0}, Ljava/time/temporal/IsoFields$Field;->isIso(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/time/DateTimeException;

    const-string/jumbo v1, "Resolve requires IsoChronology"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static getWeek(Ljava/time/LocalDate;)I
    .locals 10

    const/4 v8, -0x3

    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/DayOfWeek;->ordinal()I

    move-result v1

    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    rsub-int/lit8 v7, v1, 0x3

    add-int v3, v2, v7

    div-int/lit8 v0, v3, 0x7

    mul-int/lit8 v7, v0, 0x7

    sub-int v5, v3, v7

    add-int/lit8 v4, v5, -0x3

    if-ge v4, v8, :cond_0

    add-int/lit8 v4, v4, 0x7

    :cond_0
    if-ge v2, v4, :cond_1

    const/16 v7, 0xb4

    invoke-virtual {p0, v7}, Ljava/time/LocalDate;->withDayOfYear(I)Ljava/time/LocalDate;

    move-result-object v7

    const-wide/16 v8, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/time/LocalDate;->minusYears(J)Ljava/time/LocalDate;

    move-result-object v7

    invoke-static {v7}, Ljava/time/temporal/IsoFields$Field;->getWeekRange(Ljava/time/LocalDate;)Ljava/time/temporal/ValueRange;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v8

    long-to-int v7, v8

    return v7

    :cond_1
    sub-int v7, v2, v4

    div-int/lit8 v7, v7, 0x7

    add-int/lit8 v6, v7, 0x1

    const/16 v7, 0x35

    if-ne v6, v7, :cond_2

    if-eq v4, v8, :cond_3

    const/4 v7, -0x2

    if-ne v4, v7, :cond_4

    invoke-virtual {p0}, Ljava/time/LocalDate;->isLeapYear()Z

    move-result v7

    :goto_0
    if-nez v7, :cond_2

    const/4 v6, 0x1

    :cond_2
    return v6

    :cond_3
    const/4 v7, 0x1

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private static getWeekBasedYear(Ljava/time/LocalDate;)I
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/time/LocalDate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v1

    const/4 v4, 0x3

    if-gt v1, v4, :cond_1

    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/DayOfWeek;->ordinal()I

    move-result v0

    sub-int v3, v1, v0

    const/4 v4, -0x2

    if-ge v3, v4, :cond_0

    add-int/lit8 v2, v2, -0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/16 v4, 0x16b

    if-lt v1, v4, :cond_0

    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/DayOfWeek;->ordinal()I

    move-result v0

    add-int/lit16 v4, v1, -0x16b

    invoke-virtual {p0}, Ljava/time/LocalDate;->isLeapYear()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    :cond_2
    sub-int v1, v4, v3

    sub-int v3, v1, v0

    if-ltz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static getWeekRange(I)I
    .locals 3

    const/4 v1, 0x1

    invoke-static {p0, v1, v1}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v1

    sget-object v2, Ljava/time/DayOfWeek;->THURSDAY:Ljava/time/DayOfWeek;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v1

    sget-object v2, Ljava/time/DayOfWeek;->WEDNESDAY:Ljava/time/DayOfWeek;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/time/LocalDate;->isLeapYear()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/16 v1, 0x35

    return v1

    :cond_1
    const/16 v1, 0x34

    return v1
.end method

.method private static getWeekRange(Ljava/time/LocalDate;)Ljava/time/temporal/ValueRange;
    .locals 6

    invoke-static {p0}, Ljava/time/temporal/IsoFields$Field;->getWeekBasedYear(Ljava/time/LocalDate;)I

    move-result v0

    const-wide/16 v2, 0x1

    invoke-static {v0}, Ljava/time/temporal/IsoFields$Field;->getWeekRange(I)I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1
.end method

.method private static isIso(Ljava/time/temporal/TemporalAccessor;)Z
    .locals 2

    invoke-static {p0}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v0

    sget-object v1, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-interface {v0, v1}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/temporal/IsoFields$Field;
    .locals 1

    const-class v0, Ljava/time/temporal/IsoFields$Field;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/temporal/IsoFields$Field;

    return-object v0
.end method

.method public static values()[Ljava/time/temporal/IsoFields$Field;
    .locals 1

    sget-object v0, Ljava/time/temporal/IsoFields$Field;->$VALUES:[Ljava/time/temporal/IsoFields$Field;

    return-object v0
.end method


# virtual methods
.method public isDateBased()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTimeBased()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;
    .locals 1

    invoke-virtual {p0}, Ljava/time/temporal/IsoFields$Field;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

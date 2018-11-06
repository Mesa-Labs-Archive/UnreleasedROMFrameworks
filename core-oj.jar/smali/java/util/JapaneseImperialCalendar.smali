.class Ljava/util/JapaneseImperialCalendar;
.super Ljava/util/Calendar;
.source "JapaneseImperialCalendar.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final BEFORE_MEIJI:I = 0x0

.field private static final BEFORE_MEIJI_ERA:Lsun/util/calendar/Era;

.field private static final EPOCH_OFFSET:I = 0xaf93b

.field private static final EPOCH_YEAR:I = 0x7b2

.field public static final HEISEI:I = 0x4

.field static final LEAST_MAX_VALUES:[I

.field static final MAX_VALUES:[I

.field public static final MEIJI:I = 0x1

.field static final MIN_VALUES:[I

.field private static final ONE_DAY:J = 0x5265c00L

.field private static final ONE_HOUR:I = 0x36ee80

.field private static final ONE_MINUTE:I = 0xea60

.field private static final ONE_SECOND:I = 0x3e8

.field private static final ONE_WEEK:J = 0x240c8400L

.field public static final SHOWA:I = 0x3

.field public static final TAISHO:I = 0x2

.field private static final eras:[Lsun/util/calendar/Era;

.field private static final gcal:Lsun/util/calendar/Gregorian;

.field private static final jcal:Lsun/util/calendar/LocalGregorianCalendar;

.field private static final serialVersionUID:J = -0x2eb15d25e1c59a19L

.field private static final sinceFixedDates:[J


# instance fields
.field private transient cachedFixedDate:J

.field private transient jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

.field private transient originalFields:[I

.field private transient zoneOffsets:[I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    const-class v3, Ljava/util/JapaneseImperialCalendar;

    invoke-virtual {v3}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    sput-boolean v3, Ljava/util/JapaneseImperialCalendar;->-assertionsDisabled:Z

    const-string/jumbo v3, "japanese"

    invoke-static {v3}, Lsun/util/calendar/CalendarSystem;->forName(Ljava/lang/String;)Lsun/util/calendar/CalendarSystem;

    move-result-object v3

    check-cast v3, Lsun/util/calendar/LocalGregorianCalendar;

    sput-object v3, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-static {}, Lsun/util/calendar/CalendarSystem;->getGregorianCalendar()Lsun/util/calendar/Gregorian;

    move-result-object v3

    sput-object v3, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    new-instance v3, Lsun/util/calendar/Era;

    const-string/jumbo v4, "BeforeMeiji"

    const-string/jumbo v5, "BM"

    const-wide/high16 v6, -0x8000000000000000L

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lsun/util/calendar/Era;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    sput-object v3, Ljava/util/JapaneseImperialCalendar;->BEFORE_MEIJI_ERA:Lsun/util/calendar/Era;

    const/16 v3, 0x11

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    sput-object v3, Ljava/util/JapaneseImperialCalendar;->MIN_VALUES:[I

    const/16 v3, 0x11

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    sput-object v3, Ljava/util/JapaneseImperialCalendar;->LEAST_MAX_VALUES:[I

    const/16 v3, 0x11

    new-array v3, v3, [I

    fill-array-data v3, :array_2

    sput-object v3, Ljava/util/JapaneseImperialCalendar;->MAX_VALUES:[I

    sget-object v3, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar;->getEras()[Lsun/util/calendar/Era;

    move-result-object v12

    array-length v3, v12

    add-int/lit8 v20, v3, 0x1

    move/from16 v0, v20

    new-array v3, v0, [Lsun/util/calendar/Era;

    sput-object v3, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    move/from16 v0, v20

    new-array v3, v0, [J

    sput-object v3, Ljava/util/JapaneseImperialCalendar;->sinceFixedDates:[J

    const/16 v18, 0x0

    sget-object v3, Ljava/util/JapaneseImperialCalendar;->sinceFixedDates:[J

    sget-object v4, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    sget-object v5, Ljava/util/JapaneseImperialCalendar;->BEFORE_MEIJI_ERA:Lsun/util/calendar/Era;

    invoke-virtual {v5}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/util/calendar/Gregorian;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v4

    aput-wide v4, v3, v18

    sget-object v3, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    const/4 v4, 0x0

    const/16 v18, 0x1

    sget-object v5, Ljava/util/JapaneseImperialCalendar;->BEFORE_MEIJI_ERA:Lsun/util/calendar/Era;

    aput-object v5, v3, v4

    const/4 v3, 0x0

    array-length v4, v12

    move/from16 v19, v18

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v11, v12, v3

    invoke-virtual {v11}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v2

    sget-object v5, Ljava/util/JapaneseImperialCalendar;->sinceFixedDates:[J

    sget-object v6, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v6, v2}, Lsun/util/calendar/Gregorian;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v6

    aput-wide v6, v5, v19

    sget-object v5, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    add-int/lit8 v18, v19, 0x1

    aput-object v11, v5, v19

    add-int/lit8 v3, v3, 0x1

    move/from16 v19, v18

    goto :goto_0

    :cond_0
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->LEAST_MAX_VALUES:[I

    sget-object v4, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    sget-object v5, Ljava/util/JapaneseImperialCalendar;->MAX_VALUES:[I

    const/4 v6, 0x0

    aput v4, v5, v6

    const/4 v5, 0x0

    aput v4, v3, v5

    const v24, 0x7fffffff

    const v10, 0x7fffffff

    sget-object v3, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    sget-object v4, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v3, v4}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v9

    const/4 v13, 0x1

    :goto_1
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v3, v3

    if-ge v13, v3, :cond_5

    sget-object v3, Ljava/util/JapaneseImperialCalendar;->sinceFixedDates:[J

    aget-wide v14, v3, v13

    sget-object v3, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v3, v3, v13

    invoke-virtual {v3}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v9, v3, v4, v5}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    sget-object v3, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v3, v9}, Lsun/util/calendar/Gregorian;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v16

    cmp-long v3, v14, v16

    if-eqz v3, :cond_1

    sub-long v4, v14, v16

    long-to-int v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    :cond_1
    invoke-virtual/range {v22 .. v22}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v3

    const/16 v4, 0xc

    const/16 v5, 0x1f

    invoke-virtual {v9, v3, v4, v5}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    sget-object v3, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v3, v9}, Lsun/util/calendar/Gregorian;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v16

    cmp-long v3, v14, v16

    if-eqz v3, :cond_2

    sub-long v4, v16, v14

    long-to-int v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    :cond_2
    const-wide/16 v4, 0x1

    sub-long v4, v14, v4

    invoke-static {v4, v5}, Ljava/util/JapaneseImperialCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v23

    invoke-virtual/range {v21 .. v21}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    invoke-virtual/range {v21 .. v21}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    :cond_3
    add-int/lit8 v23, v23, -0x1

    :cond_4
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v24

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_5
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->LEAST_MAX_VALUES:[I

    const/4 v4, 0x1

    aput v24, v3, v4

    sget-object v3, Ljava/util/JapaneseImperialCalendar;->LEAST_MAX_VALUES:[I

    const/4 v4, 0x6

    aput v10, v3, v4

    return-void

    :array_0
    .array-data 4
        0x0
        -0x116bc36f
        0x0
        0x1
        0x0
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x2ca1c80
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x4
        0x1c
        0x0
        0x7
        0x4
        0x1
        0xb
        0x17
        0x3b
        0x3b
        0x3e7
        0x3010b00
        0x124f80
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x116bd2d2
        0xb
        0x35
        0x6
        0x1f
        0x16e
        0x7
        0x6
        0x1
        0xb
        0x17
        0x3b
        0x3b
        0x3e7
        0x3010b00
        0x6ddd00
    .end array-data
.end method

.method constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    sget-object v0, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v0, p1}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    iput-object v0, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/JapaneseImperialCalendar;->setTimeInMillis(J)V

    return-void
.end method

.method constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;Z)V
    .locals 2

    invoke-direct {p0, p1, p2}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    sget-object v0, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v0, p1}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    iput-object v0, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    return-void
.end method

.method private actualMonthLength()I
    .locals 8

    sget-object v3, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    iget-object v6, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v3, v6}, Lsun/util/calendar/LocalGregorianCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v2

    iget-object v3, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-static {v3}, Ljava/util/JapaneseImperialCalendar;->getTransitionEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    sget-object v3, Ljava/util/JapaneseImperialCalendar;->sinceFixedDates:[J

    aget-wide v4, v3, v1

    sget-object v3, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v0

    iget-wide v6, p0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    goto :goto_0
.end method

.method private computeFields(II)I
    .locals 44

    const/16 v39, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    move-object/from16 v40, v0

    if-nez v40, :cond_0

    const/16 v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [I

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    :cond_0
    const v40, 0x18000

    move/from16 v0, p2

    move/from16 v1, v40

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    move-wide/from16 v40, v0

    move-object/from16 v0, v36

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v39

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    move-object/from16 v40, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v41

    const/16 v42, 0x0

    aput v41, v40, v42

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    move-object/from16 v41, v0

    const/16 v42, 0x0

    aget v41, v41, v42

    sub-int v41, v39, v41

    const/16 v42, 0x1

    aput v41, v40, v42

    :cond_1
    if-eqz p2, :cond_4

    const/16 v40, 0xf

    move/from16 v0, p2

    move/from16 v1, v40

    invoke-static {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v40

    if-eqz v40, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    move-object/from16 v40, v0

    const/16 v41, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v41

    const/16 v42, 0x0

    aput v41, v40, v42

    :cond_2
    const/16 v40, 0x10

    move/from16 v0, p2

    move/from16 v1, v40

    invoke-static {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v40

    if-eqz v40, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    move-object/from16 v40, v0

    const/16 v41, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v41

    const/16 v42, 0x1

    aput v41, v40, v42

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aget v40, v40, v41

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    move-object/from16 v41, v0

    const/16 v42, 0x1

    aget v41, v41, v42

    add-int v39, v40, v41

    :cond_4
    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v40, v0

    const-wide/32 v42, 0x5265c00

    div-long v12, v40, v42

    const v40, 0x5265c00

    rem-int v34, v39, v40

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    move-wide/from16 v40, v0

    const-wide/32 v42, 0x5265c00

    div-long v40, v40, v42

    add-long v12, v12, v40

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    move-wide/from16 v40, v0

    const-wide/32 v42, 0x5265c00

    rem-long v40, v40, v42

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v40, v0

    add-int v34, v34, v40

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v40, v0

    const-wide/32 v42, 0x5265c00

    cmp-long v40, v40, v42

    if-ltz v40, :cond_e

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v40, v0

    const-wide/32 v42, 0x5265c00

    sub-long v40, v40, v42

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v34, v0

    const-wide/16 v40, 0x1

    add-long v12, v12, v40

    :cond_5
    const-wide/32 v40, 0xaf93b

    add-long v12, v12, v40

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    move-wide/from16 v40, v0

    cmp-long v40, v12, v40

    if-nez v40, :cond_6

    const-wide/16 v40, 0x0

    cmp-long v40, v12, v40

    if-gez v40, :cond_7

    :cond_6
    sget-object v40, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v12, v13}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    move-object/from16 v0, p0

    iput-wide v12, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v38

    const/16 v40, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1, v11}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    const/16 v40, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    or-int/lit8 v21, p1, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v40

    add-int/lit8 v22, v40, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v8

    move/from16 v0, p1

    and-int/lit16 v0, v0, 0xa4

    move/from16 v40, v0

    if-eqz v40, :cond_8

    const/16 v40, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    const/16 v40, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1, v8}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfWeek()I

    move-result v40

    const/16 v41, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    move/from16 v0, v21

    or-int/lit16 v0, v0, 0xa4

    move/from16 v21, v0

    :cond_8
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x7e00

    move/from16 v40, v0

    if-eqz v40, :cond_9

    if-eqz v34, :cond_f

    const v40, 0x36ee80

    div-int v20, v34, v40

    const/16 v40, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    div-int/lit8 v40, v20, 0xc

    const/16 v41, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    rem-int/lit8 v40, v20, 0xc

    const/16 v41, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    const v40, 0x36ee80

    rem-int v31, v34, v40

    const v40, 0xea60

    div-int v40, v31, v40

    const/16 v41, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    const v40, 0xea60

    rem-int v31, v31, v40

    move/from16 v0, v31

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v40, v0

    const/16 v41, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    move/from16 v0, v31

    rem-int/lit16 v0, v0, 0x3e8

    move/from16 v40, v0

    const/16 v41, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    :goto_0
    move/from16 v0, v21

    or-int/lit16 v0, v0, 0x7e00

    move/from16 v21, v0

    :cond_9
    const v40, 0x18000

    and-int v40, v40, p1

    if-eqz v40, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aget v40, v40, v41

    const/16 v41, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    move-object/from16 v40, v0

    const/16 v41, 0x1

    aget v40, v40, v41

    const/16 v41, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    const v40, 0x18000

    or-int v21, v21, v40

    :cond_a
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x158

    move/from16 v40, v0

    if-eqz v40, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v40

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v35

    if-eqz v35, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v12, v13}, Ljava/util/JapaneseImperialCalendar;->getFixedDateJan1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J

    move-result-wide v14

    sub-long v40, v12, v14

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v40, v0

    add-int/lit8 v9, v40, 0x1

    :goto_1
    if-eqz v35, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v12, v13}, Ljava/util/JapaneseImperialCalendar;->getFixedDateMonth1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J

    move-result-wide v16

    :goto_2
    const/16 v40, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1, v9}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    add-int/lit8 v40, v8, -0x1

    div-int/lit8 v40, v40, 0x7

    add-int/lit8 v40, v40, 0x1

    const/16 v41, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v12, v13}, Ljava/util/JapaneseImperialCalendar;->getWeekNumber(JJ)I

    move-result v37

    if-nez v37, :cond_19

    const-wide/16 v40, 0x1

    sub-long v18, v14, v40

    invoke-static/range {v18 .. v19}, Ljava/util/JapaneseImperialCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v7

    if-nez v35, :cond_13

    invoke-virtual {v7}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v40

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v40

    :goto_3
    if-nez v40, :cond_14

    const-wide/16 v40, 0x16d

    sub-long v32, v14, v40

    invoke-virtual {v7}, Lsun/util/calendar/LocalGregorianCalendar$Date;->isLeapYear()Z

    move-result v40

    if-eqz v40, :cond_b

    const-wide/16 v40, 0x1

    sub-long v32, v32, v40

    :cond_b
    :goto_4
    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    move-wide/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/JapaneseImperialCalendar;->getWeekNumber(JJ)I

    move-result v37

    :cond_c
    :goto_5
    const/16 v40, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2, v12, v13}, Ljava/util/JapaneseImperialCalendar;->getWeekNumber(JJ)I

    move-result v40

    const/16 v41, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    move/from16 v0, v21

    or-int/lit16 v0, v0, 0x158

    move/from16 v21, v0

    :cond_d
    return v21

    :cond_e
    :goto_6
    if-gez v34, :cond_5

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v40, v0

    const-wide/32 v42, 0x5265c00

    add-long v40, v40, v42

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v34, v0

    const-wide/16 v40, 0x1

    sub-long v12, v12, v40

    goto :goto_6

    :cond_f
    const/16 v40, 0xb

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    const/16 v40, 0x9

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    const/16 v40, 0xa

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    const/16 v40, 0xc

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    const/16 v40, 0xd

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    const/16 v40, 0xe

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    goto/16 :goto_0

    :cond_10
    sget-object v40, Ljava/util/JapaneseImperialCalendar;->MIN_VALUES:[I

    const/16 v41, 0x1

    aget v40, v40, v41

    move/from16 v0, v25

    move/from16 v1, v40

    if-ne v0, v1, :cond_11

    sget-object v40, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v41

    const-wide/high16 v42, -0x8000000000000000L

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v10

    sget-object v40, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v14

    sub-long v40, v12, v14

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v40, v0

    add-int/lit8 v9, v40, 0x1

    goto/16 :goto_1

    :cond_11
    sget-object v40, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfYear(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v40

    move-wide/from16 v0, v40

    long-to-int v9, v0

    int-to-long v0, v9

    move-wide/from16 v40, v0

    sub-long v40, v12, v40

    const-wide/16 v42, 0x1

    add-long v14, v40, v42

    goto/16 :goto_1

    :cond_12
    int-to-long v0, v8

    move-wide/from16 v40, v0

    sub-long v40, v12, v40

    const-wide/16 v42, 0x1

    add-long v16, v40, v42

    goto/16 :goto_2

    :cond_13
    const/16 v40, 0x1

    goto/16 :goto_3

    :cond_14
    if-eqz v35, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_17

    const/16 v40, 0x4

    move/from16 v0, v40

    if-le v11, v0, :cond_16

    sget-object v40, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    add-int/lit8 v41, v11, -0x1

    aget-object v40, v40, v41

    invoke-virtual/range {v40 .. v40}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v40

    move/from16 v0, v25

    move/from16 v1, v40

    if-ne v0, v1, :cond_15

    invoke-virtual/range {v30 .. v30}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v40

    move/from16 v0, v40

    invoke-virtual {v7, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    move-result-object v40

    invoke-virtual/range {v30 .. v30}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    :cond_15
    :goto_7
    sget-object v40, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    sget-object v40, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v32

    goto/16 :goto_4

    :cond_16
    const/16 v40, 0x1

    move/from16 v0, v40

    invoke-virtual {v7, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    move-result-object v40

    const/16 v41, 0x1

    invoke-virtual/range {v40 .. v41}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    goto :goto_7

    :cond_17
    const-wide/16 v40, 0x16d

    sub-long v32, v14, v40

    invoke-virtual {v7}, Lsun/util/calendar/LocalGregorianCalendar$Date;->isLeapYear()Z

    move-result v40

    if-eqz v40, :cond_b

    const-wide/16 v40, 0x1

    sub-long v32, v32, v40

    goto/16 :goto_4

    :cond_18
    sget-object v40, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v41

    aget-object v40, v40, v41

    invoke-virtual/range {v40 .. v40}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v6

    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v40

    move/from16 v0, v40

    invoke-virtual {v7, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    move-result-object v40

    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    sget-object v40, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    sget-object v40, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v32

    goto/16 :goto_4

    :cond_19
    if-nez v35, :cond_1b

    const/16 v40, 0x34

    move/from16 v0, v37

    move/from16 v1, v40

    if-lt v0, v1, :cond_c

    const-wide/16 v40, 0x16d

    add-long v26, v14, v40

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lsun/util/calendar/LocalGregorianCalendar$Date;->isLeapYear()Z

    move-result v40

    if-eqz v40, :cond_1a

    const-wide/16 v40, 0x1

    add-long v26, v26, v40

    :cond_1a
    const-wide/16 v40, 0x6

    add-long v40, v40, v26

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v42

    invoke-static/range {v40 .. v42}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v28

    sub-long v40, v28, v26

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v40

    move/from16 v0, v23

    move/from16 v1, v40

    if-lt v0, v1, :cond_c

    const-wide/16 v40, 0x7

    sub-long v40, v28, v40

    cmp-long v40, v12, v40

    if-ltz v40, :cond_c

    const/16 v37, 0x1

    goto/16 :goto_5

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lsun/util/calendar/LocalGregorianCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_1c

    const/16 v40, 0x1

    move/from16 v0, v40

    invoke-virtual {v7, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->addYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    const/16 v40, 0x1

    move/from16 v0, v40

    invoke-virtual {v7, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    move-result-object v40

    const/16 v41, 0x1

    invoke-virtual/range {v40 .. v41}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    sget-object v40, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v26

    :goto_8
    const-wide/16 v40, 0x6

    add-long v40, v40, v26

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v42

    invoke-static/range {v40 .. v42}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v28

    sub-long v40, v28, v26

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v40

    move/from16 v0, v23

    move/from16 v1, v40

    if-lt v0, v1, :cond_c

    const-wide/16 v40, 0x7

    sub-long v40, v28, v40

    cmp-long v40, v12, v40

    if-ltz v40, :cond_c

    const/16 v37, 0x1

    goto/16 :goto_5

    :cond_1c
    invoke-static {v7}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v40

    add-int/lit8 v24, v40, 0x1

    sget-object v40, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v40, v40, v24

    invoke-virtual/range {v40 .. v40}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v6

    sget-object v40, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v40, v40, v24

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v40

    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v42

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v7, v0, v1, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    sget-object v40, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    sget-object v40, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v26

    goto :goto_8
.end method

.method private static getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 4

    sget-object v1, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    sget-object v2, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    sget-object v1, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v1, v0, p0, p1}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    return-object v0
.end method

.method private static getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v0

    sget-object v2, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-lez v1, :cond_1

    sget-object v2, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v2, v2, v1

    if-ne v2, v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private getFixedDate(III)J
    .locals 22

    const/16 v16, 0x0

    const/4 v9, 0x1

    const/16 v18, 0x2

    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v18

    if-eqz v18, :cond_5

    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v16

    const/16 v18, 0xb

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    div-int/lit8 v18, v16, 0xc

    add-int p2, p2, v18

    rem-int/lit8 v16, v16, 0xc

    :cond_0
    :goto_0
    sget-object v18, Ljava/util/JapaneseImperialCalendar;->MIN_VALUES:[I

    const/16 v19, 0x1

    aget v18, v18, v19

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    sget-object v18, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v19

    const-wide/high16 v20, -0x8000000000000000L

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v8

    invoke-virtual {v8}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v18

    add-int/lit8 v15, v18, -0x1

    move/from16 v0, v16

    if-ge v0, v15, :cond_1

    move/from16 v16, v15

    :cond_1
    move/from16 v0, v16

    if-ne v0, v15, :cond_2

    invoke-virtual {v8}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v9

    :cond_2
    sget-object v18, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    sget-object v19, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual/range {v18 .. v19}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v5

    if-lez p1, :cond_6

    sget-object v18, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v18, v18, p1

    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    add-int/lit8 v18, v16, 0x1

    move/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1, v9}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    sget-object v18, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    sget-object v18, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v12

    const/16 v18, 0x2

    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v18

    if-eqz v18, :cond_e

    const/16 v18, 0x5

    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v18

    if-eqz v18, :cond_7

    const/16 v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isSet(I)Z

    move-result v18

    if-eqz v18, :cond_3

    const/16 v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v12, v12, v18

    int-to-long v0, v9

    move-wide/from16 v18, v0

    sub-long v12, v12, v18

    :cond_3
    :goto_2
    return-wide v12

    :cond_4
    if-gez v16, :cond_0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0xc

    move/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lsun/util/calendar/CalendarUtils;->floorDivide(II[I)I

    move-result v18

    add-int p2, p2, v18

    const/16 v18, 0x0

    aget v16, v17, v18

    goto/16 :goto_0

    :cond_5
    const/16 v18, 0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    sget-object v18, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v18, v18, p1

    invoke-virtual/range {v18 .. v18}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v4

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v18

    add-int/lit8 v16, v18, -0x1

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v9

    goto/16 :goto_0

    :cond_6
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_7
    const/16 v18, 0x4

    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v18

    if-eqz v18, :cond_a

    const-wide/16 v18, 0x6

    add-long v18, v18, v12

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v20

    invoke-static/range {v18 .. v20}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v10

    sub-long v18, v10, v12

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-ltz v18, :cond_8

    const-wide/16 v18, 0x7

    sub-long v10, v10, v18

    :cond_8
    const/16 v18, 0x7

    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v18

    if-eqz v18, :cond_9

    const-wide/16 v18, 0x6

    add-long v18, v18, v10

    const/16 v20, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v20

    invoke-static/range {v18 .. v20}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v10

    :cond_9
    const/16 v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    mul-int/lit8 v18, v18, 0x7

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v12, v10, v18

    goto/16 :goto_2

    :cond_a
    const/16 v18, 0x7

    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v18

    if-eqz v18, :cond_b

    const/16 v18, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v6

    :goto_3
    const/16 v18, 0x8

    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v18

    if-eqz v18, :cond_c

    const/16 v18, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v7

    :goto_4
    if-ltz v7, :cond_d

    mul-int/lit8 v18, v7, 0x7

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v18, v18, v12

    const-wide/16 v20, 0x1

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v6}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v12

    goto/16 :goto_2

    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v6

    goto :goto_3

    :cond_c
    const/4 v7, 0x1

    goto :goto_4

    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->monthLength(II)I

    move-result v18

    add-int/lit8 v19, v7, 0x1

    mul-int/lit8 v19, v19, 0x7

    add-int v14, v18, v19

    int-to-long v0, v14

    move-wide/from16 v18, v0

    add-long v18, v18, v12

    const-wide/16 v20, 0x1

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v6}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v12

    goto/16 :goto_2

    :cond_e
    const/16 v18, 0x6

    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v18

    if-eqz v18, :cond_10

    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v18

    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12, v13}, Ljava/util/JapaneseImperialCalendar;->getFixedDateJan1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J

    move-result-wide v12

    :cond_f
    const/16 v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v12, v12, v18

    const-wide/16 v18, 0x1

    sub-long v12, v12, v18

    goto/16 :goto_2

    :cond_10
    const-wide/16 v18, 0x6

    add-long v18, v18, v12

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v20

    invoke-static/range {v18 .. v20}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v10

    sub-long v18, v10, v12

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-ltz v18, :cond_11

    const-wide/16 v18, 0x7

    sub-long v10, v10, v18

    :cond_11
    const/16 v18, 0x7

    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v18

    if-eqz v18, :cond_12

    const/16 v18, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v18

    move/from16 v0, v18

    if-eq v6, v0, :cond_12

    const-wide/16 v18, 0x6

    add-long v18, v18, v10

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v6}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v10

    :cond_12
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x1

    sub-long v18, v18, v20

    const-wide/16 v20, 0x7

    mul-long v18, v18, v20

    add-long v12, v10, v18

    goto/16 :goto_2
.end method

.method private getFixedDateJan1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v1

    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v3

    if-ne v3, v7, :cond_1

    invoke-static {p1}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v2

    :goto_0
    if-lez v2, :cond_1

    sget-object v3, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v0

    sget-object v3, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v3, v0}, Lsun/util/calendar/Gregorian;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v4

    cmp-long v3, v4, p2

    if-lez v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return-wide v4

    :cond_1
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    sget-object v6, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v3, v6}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v3

    invoke-virtual {v0, v3, v7, v7}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    sget-object v3, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v3, v0}, Lsun/util/calendar/Gregorian;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v6

    return-wide v6
.end method

.method private getFixedDateMonth1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J
    .locals 8

    invoke-static {p1}, Ljava/util/JapaneseImperialCalendar;->getTransitionEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/util/JapaneseImperialCalendar;->sinceFixedDates:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p2

    if-gtz v1, :cond_0

    return-wide v2

    :cond_0
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v1

    int-to-long v4, v1

    sub-long v4, p2, v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    return-wide v4
.end method

.method private getNormalizedCalendar()Ljava/util/JapaneseImperialCalendar;
    .locals 2

    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->isFullyNormalized()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/JapaneseImperialCalendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->setLenient(Z)V

    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->complete()V

    goto :goto_0
.end method

.method private static getRolledValue(IIII)I
    .locals 3

    sget-boolean v2, Ljava/util/JapaneseImperialCalendar;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    if-lt p0, p2, :cond_0

    if-le p0, p3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_1
    sub-int v2, p3, p2

    add-int/lit8 v1, v2, 0x1

    rem-int/2addr p1, v1

    add-int v0, p0, p1

    if-le v0, p3, :cond_4

    sub-int/2addr v0, v1

    :cond_2
    :goto_0
    sget-boolean v2, Ljava/util/JapaneseImperialCalendar;->-assertionsDisabled:Z

    if-nez v2, :cond_5

    if-lt v0, p2, :cond_3

    if-le v0, p3, :cond_5

    :cond_3
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_4
    if-ge v0, p2, :cond_2

    add-int/2addr v0, v1

    goto :goto_0

    :cond_5
    return v0
.end method

.method private static getTransitionEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I
    .locals 4

    invoke-static {p0}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v0

    sget-object v2, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v1

    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v3

    if-ne v2, v3, :cond_0

    return v0

    :cond_0
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    sget-object v2, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    add-int/lit8 v0, v0, 0x1

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v1

    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v3

    if-ne v2, v3, :cond_1

    return v0

    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private getWeekNumber(JJ)I
    .locals 9

    const/4 v7, 0x7

    const-wide/16 v4, 0x6

    add-long/2addr v4, p1

    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v6

    invoke-static {v4, v5, v6}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v0

    sub-long v4, v0, p1

    long-to-int v2, v4

    sget-boolean v4, Ljava/util/JapaneseImperialCalendar;->-assertionsDisabled:Z

    if-nez v4, :cond_0

    if-le v2, v7, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_0
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v4

    if-lt v2, v4, :cond_1

    const-wide/16 v4, 0x7

    sub-long/2addr v0, v4

    :cond_1
    sub-long v4, p3, v0

    long-to-int v3, v4

    if-ltz v3, :cond_2

    div-int/lit8 v4, v3, 0x7

    add-int/lit8 v4, v4, 0x1

    return v4

    :cond_2
    invoke-static {v3, v7}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    return v4
.end method

.method private getYearOffsetInMillis(Lsun/util/calendar/CalendarDate;)J
    .locals 6

    sget-object v2, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v2, p1}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfYear(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    mul-long v0, v2, v4

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getZoneOffset()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    return-wide v2
.end method

.method private internalGetEra()I
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/JapaneseImperialCalendar;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private isTransitionYear(I)Z
    .locals 4

    const/4 v3, 0x0

    sget-object v2, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-lez v0, :cond_1

    sget-object v2, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v2

    invoke-virtual {v2}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    if-le p1, v1, :cond_2

    :cond_1
    return v3

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private monthLength(I)I
    .locals 1

    sget-boolean v0, Ljava/util/JapaneseImperialCalendar;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->isNormalized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/util/GregorianCalendar;->LEAP_MONTH_LENGTH:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_1
    sget-object v0, Ljava/util/GregorianCalendar;->MONTH_LENGTH:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method private monthLength(II)I
    .locals 1

    invoke-static {p2}, Lsun/util/calendar/CalendarUtils;->isGregorianLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/GregorianCalendar;->LEAP_MONTH_LENGTH:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Ljava/util/GregorianCalendar;->MONTH_LENGTH:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method private pinDayOfMonth(Lsun/util/calendar/LocalGregorianCalendar$Date;)V
    .locals 13

    const/4 v12, 0x1

    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v6

    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v1

    invoke-virtual {p0, v12}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v7

    if-eq v6, v7, :cond_1

    invoke-virtual {p1, v12}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    sget-object v7, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v7, p1}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    sget-object v7, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v7, p1}, Lsun/util/calendar/LocalGregorianCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-virtual {p1, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    :goto_0
    sget-object v7, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v7, p1}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1, v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    goto :goto_0

    :cond_1
    sget-object v7, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v8

    const-wide/high16 v10, -0x8000000000000000L

    invoke-virtual {v7, v10, v11, v8}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    sget-object v7, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    iget-wide v8, p0, Ljava/util/JapaneseImperialCalendar;->time:J

    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v3

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getTimeOfDay()J

    move-result-wide v4

    const/16 v7, 0x190

    invoke-virtual {v3, v7}, Lsun/util/calendar/LocalGregorianCalendar$Date;->addYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v7

    invoke-virtual {v3, v7}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    invoke-virtual {v3, v12}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    sget-object v7, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v7, v3}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    sget-object v7, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v7, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v2

    if-le v1, v2, :cond_3

    invoke-virtual {v3, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    :goto_2
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v7

    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v8

    if-ne v7, v8, :cond_2

    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getTimeOfDay()J

    move-result-wide v8

    cmp-long v7, v4, v8

    if-gez v7, :cond_2

    add-int/lit8 v7, v1, 0x1

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v3, v7}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    :cond_2
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v7

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v8

    invoke-virtual {p1, v6, v7, v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v7

    if-ge v1, v7, :cond_4

    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v7

    invoke-virtual {v3, v7}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    goto :goto_2

    :cond_4
    invoke-virtual {v3, v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    goto :goto_2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v0, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    iput-object v0, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    :cond_0
    return-void
.end method


# virtual methods
.method public add(II)V
    .locals 18

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    const/16 v13, 0xf

    move/from16 v0, p1

    if-lt v0, v13, :cond_2

    :cond_1
    new-instance v13, Ljava/lang/IllegalArgumentException;

    invoke-direct {v13}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v13

    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->complete()V

    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v13}, Lsun/util/calendar/LocalGregorianCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/util/calendar/LocalGregorianCalendar$Date;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->addYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljava/util/JapaneseImperialCalendar;->pinDayOfMonth(Lsun/util/calendar/LocalGregorianCalendar$Date;)V

    invoke-static {v2}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    invoke-virtual {v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    invoke-virtual {v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    invoke-virtual {v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v13

    const/4 v14, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/4 v13, 0x2

    move/from16 v0, p1

    if-ne v0, v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v13}, Lsun/util/calendar/LocalGregorianCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/util/calendar/LocalGregorianCalendar$Date;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->addMonth(I)Lsun/util/calendar/CalendarDate;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljava/util/JapaneseImperialCalendar;->pinDayOfMonth(Lsun/util/calendar/LocalGregorianCalendar$Date;)V

    invoke-static {v2}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    invoke-virtual {v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    invoke-virtual {v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    invoke-virtual {v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v13

    const/4 v14, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    goto :goto_0

    :cond_5
    if-nez p1, :cond_8

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v13

    add-int v3, v13, p2

    if-gez v3, :cond_7

    const/4 v3, 0x0

    :cond_6
    :goto_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v3}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    goto :goto_0

    :cond_7
    sget-object v13, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    if-le v3, v13, :cond_6

    sget-object v13, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v13, v13

    add-int/lit8 v3, v13, -0x1

    goto :goto_1

    :cond_8
    move/from16 v0, p2

    int-to-long v4, v0

    const-wide/16 v10, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_2
    :pswitch_0
    const/16 v13, 0xa

    move/from16 v0, p1

    if-lt v0, v13, :cond_9

    move-object/from16 v0, p0

    iget-wide v14, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    add-long/2addr v14, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/util/JapaneseImperialCalendar;->setTimeInMillis(J)V

    return-void

    :pswitch_1
    const-wide/32 v14, 0x36ee80

    mul-long/2addr v4, v14

    goto :goto_2

    :pswitch_2
    const-wide/32 v14, 0xea60

    mul-long/2addr v4, v14

    goto :goto_2

    :pswitch_3
    const-wide/16 v14, 0x3e8

    mul-long/2addr v4, v14

    goto :goto_2

    :pswitch_4
    const-wide/16 v14, 0x7

    mul-long/2addr v4, v14

    goto :goto_2

    :pswitch_5
    div-int/lit8 v13, p2, 0x2

    int-to-long v4, v13

    rem-int/lit8 v13, p2, 0x2

    mul-int/lit8 v13, v13, 0xc

    int-to-long v10, v13

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    const/16 v13, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v13

    int-to-long v14, v13

    add-long/2addr v10, v14

    const-wide/16 v14, 0x3c

    mul-long/2addr v10, v14

    const/16 v13, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v13

    int-to-long v14, v13

    add-long/2addr v10, v14

    const-wide/16 v14, 0x3c

    mul-long/2addr v10, v14

    const/16 v13, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v13

    int-to-long v14, v13

    add-long/2addr v10, v14

    const-wide/16 v14, 0x3e8

    mul-long/2addr v10, v14

    const/16 v13, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v13

    int-to-long v14, v13

    add-long/2addr v10, v14

    const-wide/32 v14, 0x5265c00

    cmp-long v13, v10, v14

    if-ltz v13, :cond_b

    const-wide/16 v14, 0x1

    add-long/2addr v6, v14

    const-wide/32 v14, 0x5265c00

    sub-long/2addr v10, v14

    :cond_a
    :goto_3
    add-long/2addr v6, v4

    const/16 v13, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v13

    const/16 v14, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v14

    add-int v12, v13, v14

    const-wide/32 v14, 0xaf93b

    sub-long v14, v6, v14

    const-wide/32 v16, 0x5265c00

    mul-long v14, v14, v16

    add-long/2addr v14, v10

    int-to-long v0, v12

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/util/JapaneseImperialCalendar;->setTimeInMillis(J)V

    const/16 v13, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v13

    const/16 v14, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v14

    add-int/2addr v13, v14

    sub-int/2addr v12, v13

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-wide v14, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    int-to-long v0, v12

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/util/JapaneseImperialCalendar;->setTimeInMillis(J)V

    move-object/from16 v0, p0

    iget-wide v8, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    cmp-long v13, v8, v6

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-wide v14, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    int-to-long v0, v12

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/util/JapaneseImperialCalendar;->setTimeInMillis(J)V

    goto/16 :goto_0

    :cond_b
    const-wide/16 v14, 0x0

    cmp-long v13, v10, v14

    if-gez v13, :cond_a

    const-wide/16 v14, 0x1

    sub-long/2addr v6, v14

    const-wide/32 v14, 0x5265c00

    add-long/2addr v10, v14

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/JapaneseImperialCalendar;

    iget-object v1, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/LocalGregorianCalendar$Date;

    iput-object v1, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    iput-object v2, v0, Ljava/util/JapaneseImperialCalendar;->originalFields:[I

    iput-object v2, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    return-object v0
.end method

.method protected computeFields()V
    .locals 7

    const v6, 0x1ffff

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->isPartiallyNormalized()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getSetStateFields()I

    move-result v1

    not-int v2, v1

    and-int v0, v2, v6

    if-nez v0, :cond_0

    iget-wide v2, p0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    :cond_0
    const v2, 0x18000

    and-int/2addr v2, v1

    invoke-direct {p0, v0, v2}, Ljava/util/JapaneseImperialCalendar;->computeFields(II)I

    move-result v2

    or-int/2addr v1, v2

    sget-boolean v2, Ljava/util/JapaneseImperialCalendar;->-assertionsDisabled:Z

    if-nez v2, :cond_2

    if-eq v1, v6, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_1
    const v1, 0x1ffff

    invoke-direct {p0, v1, v3}, Ljava/util/JapaneseImperialCalendar;->computeFields(II)I

    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/JapaneseImperialCalendar;->setFieldsComputed(I)V

    return-void
.end method

.method protected computeTime()V
    .locals 26

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->isLenient()Z

    move-result v21

    if-nez v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->originalFields:[I

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    const/16 v21, 0x11

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/JapaneseImperialCalendar;->originalFields:[I

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/16 v21, 0x11

    move/from16 v0, v21

    if-ge v7, v0, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/JapaneseImperialCalendar;->isExternallySet(I)Z

    move-result v21

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v21

    move/from16 v0, v17

    move/from16 v1, v21

    if-lt v0, v1, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/JapaneseImperialCalendar;->getMaximum(I)I

    move-result v21

    move/from16 v0, v17

    move/from16 v1, v21

    if-le v0, v1, :cond_2

    :cond_1
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-static {v7}, Ljava/util/JapaneseImperialCalendar;->getFieldName(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->originalFields:[I

    move-object/from16 v21, v0

    aput v17, v21, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->selectFields()I

    move-result v8

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isSet(I)Z

    move-result v21

    if-eqz v21, :cond_6

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v6

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isSet(I)Z

    move-result v21

    if-eqz v21, :cond_5

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v19

    :goto_1
    const-wide/16 v14, 0x0

    const/16 v21, 0xb

    move/from16 v0, v21

    invoke-static {v8, v0}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v21

    if-eqz v21, :cond_8

    const/16 v21, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    add-long v14, v24, v22

    :cond_4
    :goto_2
    const-wide/16 v22, 0x3c

    mul-long v14, v14, v22

    const/16 v21, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v14, v14, v22

    const-wide/16 v22, 0x3c

    mul-long v14, v14, v22

    const/16 v21, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v14, v14, v22

    const-wide/16 v22, 0x3e8

    mul-long v14, v14, v22

    const/16 v21, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v14, v14, v22

    const-wide/32 v22, 0x5265c00

    div-long v10, v14, v22

    const-wide/32 v22, 0x5265c00

    rem-long v14, v14, v22

    :goto_3
    const-wide/16 v22, 0x0

    cmp-long v21, v14, v22

    if-gez v21, :cond_9

    const-wide/32 v22, 0x5265c00

    add-long v14, v14, v22

    const-wide/16 v22, 0x1

    sub-long v10, v10, v22

    goto :goto_3

    :cond_5
    const/16 v19, 0x1

    goto :goto_1

    :cond_6
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isSet(I)Z

    move-result v21

    if-eqz v21, :cond_7

    sget-object v21, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v6, v21, -0x1

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v19

    goto/16 :goto_1

    :cond_7
    const/4 v6, 0x3

    const/16 v19, 0x2d

    goto/16 :goto_1

    :cond_8
    const/16 v21, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    add-long v14, v24, v22

    const/16 v21, 0x9

    move/from16 v0, v21

    invoke-static {v8, v0}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v21

    if-eqz v21, :cond_4

    const/16 v21, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v21

    mul-int/lit8 v21, v21, 0xc

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v14, v14, v22

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v6, v1, v8}, Ljava/util/JapaneseImperialCalendar;->getFixedDate(III)J

    move-result-wide v22

    add-long v10, v10, v22

    const-wide/32 v22, 0xaf93b

    sub-long v22, v10, v22

    const-wide/32 v24, 0x5265c00

    mul-long v22, v22, v24

    add-long v12, v22, v14

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    move-object/from16 v21, v0

    if-nez v21, :cond_a

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    :cond_a
    const v21, 0x18000

    and-int v16, v8, v21

    const v21, 0x18000

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    invoke-virtual/range {v20 .. v20}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v22, v12, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/TimeZone;->getOffsets(J[I)I

    :cond_b
    if-eqz v16, :cond_d

    const/16 v21, 0xf

    move/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v21

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    move-object/from16 v21, v0

    const/16 v22, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v22

    const/16 v23, 0x0

    aput v22, v21, v23

    :cond_c
    const/16 v21, 0x10

    move/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v21

    if-eqz v21, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    move-object/from16 v21, v0

    const/16 v22, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v22

    const/16 v23, 0x1

    aput v22, v21, v23

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v12, v12, v22

    move-object/from16 v0, p0

    iput-wide v12, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getSetStateFields()I

    move-result v21

    or-int v21, v21, v8

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->computeFields(II)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->isLenient()Z

    move-result v21

    if-nez v21, :cond_10

    const/4 v7, 0x0

    :goto_4
    const/16 v21, 0x11

    move/from16 v0, v21

    if-ge v7, v0, :cond_10

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/JapaneseImperialCalendar;->isExternallySet(I)Z

    move-result v21

    if-nez v21, :cond_f

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->originalFields:[I

    move-object/from16 v21, v0

    aget v21, v21, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->originalFields:[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->fields:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->fields:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move-object/from16 v2, v22

    move/from16 v3, v25

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/util/JapaneseImperialCalendar;->getFieldName(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", expected "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->originalFields:[I

    move-object/from16 v23, v0

    aget v23, v23, v7

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/util/JapaneseImperialCalendar;->setFieldsNormalized(I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/JapaneseImperialCalendar;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActualMaximum(I)I
    .locals 50

    const v15, 0x1fe81

    const/16 v44, 0x1

    shl-int v44, v44, p1

    const v45, 0x1fe81

    and-int v44, v44, v45

    if-eqz v44, :cond_0

    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getMaximum(I)I

    move-result v44

    return v44

    :cond_0
    invoke-direct/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getNormalizedCalendar()Ljava/util/JapaneseImperialCalendar;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v10, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v35

    const/16 v42, -0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v44, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object/from16 v0, v44

    move/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v44

    :pswitch_1
    const/16 v42, 0xb

    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v44

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-direct {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v44

    if-eqz v44, :cond_3

    invoke-static {v10}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v14

    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_1

    add-int/lit8 v14, v14, 0x1

    sget-boolean v44, Ljava/util/JapaneseImperialCalendar;->-assertionsDisabled:Z

    if-nez v44, :cond_1

    sget-object v44, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    if-lt v14, v0, :cond_1

    new-instance v44, Ljava/lang/AssertionError;

    invoke-direct/range {v44 .. v44}, Ljava/lang/AssertionError;-><init>()V

    throw v44

    :cond_1
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->sinceFixedDates:[J

    aget-wide v40, v44, v14

    move-object/from16 v0, v24

    iget-wide v0, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    move-wide/from16 v16, v0

    cmp-long v44, v16, v40

    if-gez v44, :cond_2

    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lsun/util/calendar/LocalGregorianCalendar$Date;

    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    const-wide/16 v46, 0x1

    sub-long v46, v40, v46

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    move-wide/from16 v2, v46

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    invoke-virtual/range {v27 .. v27}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v44

    add-int/lit8 v42, v44, -0x1

    :cond_2
    :goto_0
    return v42

    :cond_3
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v45

    const-wide v46, 0x7fffffffffffffffL

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    move-object/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v8

    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v44

    invoke-virtual {v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-ne v0, v1, :cond_2

    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v44

    invoke-virtual {v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_2

    invoke-virtual {v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v44

    add-int/lit8 v42, v44, -0x1

    goto :goto_0

    :pswitch_2
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Lsun/util/calendar/LocalGregorianCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v42

    goto :goto_0

    :pswitch_3
    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v44

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-direct {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v44

    if-eqz v44, :cond_6

    invoke-static {v10}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v14

    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_4

    add-int/lit8 v14, v14, 0x1

    sget-boolean v44, Ljava/util/JapaneseImperialCalendar;->-assertionsDisabled:Z

    if-nez v44, :cond_4

    sget-object v44, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    if-lt v14, v0, :cond_4

    new-instance v44, Ljava/lang/AssertionError;

    invoke-direct/range {v44 .. v44}, Ljava/lang/AssertionError;-><init>()V

    throw v44

    :cond_4
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->sinceFixedDates:[J

    aget-wide v40, v44, v14

    move-object/from16 v0, v24

    iget-wide v0, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    move-wide/from16 v16, v0

    sget-object v44, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    sget-object v45, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual/range {v44 .. v45}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v7

    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v44

    const/16 v45, 0x1

    const/16 v46, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v7, v0, v1, v2}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    cmp-long v44, v16, v40

    if-gez v44, :cond_5

    sget-object v44, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Lsun/util/calendar/Gregorian;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v44

    sub-long v44, v40, v44

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v42, v0

    goto/16 :goto_0

    :cond_5
    const/16 v44, 0x1

    move/from16 v0, v44

    invoke-virtual {v7, v0}, Lsun/util/calendar/CalendarDate;->addYear(I)Lsun/util/calendar/CalendarDate;

    sget-object v44, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Lsun/util/calendar/Gregorian;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v44

    sub-long v44, v44, v40

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v42, v0

    goto/16 :goto_0

    :cond_6
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v45

    const-wide v46, 0x7fffffffffffffffL

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    move-object/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v8

    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v44

    invoke-virtual {v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-ne v0, v1, :cond_7

    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v44

    invoke-virtual {v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_7

    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v44

    invoke-virtual {v0, v8}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v8, v1, v2}, Ljava/util/JapaneseImperialCalendar;->getFixedDateJan1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J

    move-result-wide v22

    sub-long v44, v16, v22

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v44, v0

    add-int/lit8 v42, v44, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v44

    const/16 v45, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_8

    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v45

    const-wide/high16 v46, -0x8000000000000000L

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    move-object/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v9

    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v18

    const/16 v44, 0x1

    move/from16 v0, v44

    invoke-virtual {v9, v0}, Lsun/util/calendar/CalendarDate;->addYear(I)Lsun/util/calendar/CalendarDate;

    const/16 v44, 0x1

    move/from16 v0, v44

    invoke-virtual {v9, v0}, Lsun/util/calendar/CalendarDate;->setMonth(I)Lsun/util/calendar/CalendarDate;

    move-result-object v44

    const/16 v45, 0x1

    invoke-virtual/range {v44 .. v45}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v20

    sub-long v44, v20, v18

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v42, v0

    goto/16 :goto_0

    :cond_8
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Lsun/util/calendar/LocalGregorianCalendar;->getYearLength(Lsun/util/calendar/CalendarDate;)I

    move-result v42

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v44

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-direct {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v44

    if-nez v44, :cond_e

    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v45

    const-wide v46, 0x7fffffffffffffffL

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    move-object/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v26

    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v44

    invoke-virtual/range {v26 .. v26}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-ne v0, v1, :cond_9

    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v44

    invoke-virtual/range {v26 .. v26}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_9

    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v44

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v16

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Ljava/util/JapaneseImperialCalendar;->getFixedDateJan1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-wide/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/JapaneseImperialCalendar;->getWeekNumber(JJ)I

    move-result v42

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v44

    if-nez v44, :cond_b

    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v44

    const/16 v45, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_b

    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v45

    const-wide/high16 v46, -0x8000000000000000L

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    move-object/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v7

    const/16 v44, 0x190

    move/from16 v0, v44

    invoke-virtual {v7, v0}, Lsun/util/calendar/CalendarDate;->addYear(I)Lsun/util/calendar/CalendarDate;

    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    invoke-virtual {v7}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v44

    move-object/from16 v0, v26

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v7}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v44

    add-int/lit8 v44, v44, 0x1

    const/16 v45, 0x1

    const/16 v46, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v44

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v22

    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v44

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v36

    const-wide/16 v44, 0x6

    add-long v44, v44, v36

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v46

    invoke-static/range {v44 .. v46}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v38

    sub-long v44, v38, v36

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v34, v0

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v44

    move/from16 v0, v34

    move/from16 v1, v44

    if-lt v0, v1, :cond_a

    const-wide/16 v44, 0x7

    sub-long v38, v38, v44

    :cond_a
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-wide/from16 v3, v38

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/JapaneseImperialCalendar;->getWeekNumber(JJ)I

    move-result v42

    goto/16 :goto_0

    :cond_b
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    sget-object v45, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual/range {v44 .. v45}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v7

    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v44

    const/16 v45, 0x1

    const/16 v46, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v7, v0, v1, v2}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    sget-object v44, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Lsun/util/calendar/Gregorian;->getDayOfWeek(Lsun/util/calendar/CalendarDate;)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v44

    sub-int v11, v11, v44

    if-gez v11, :cond_c

    add-int/lit8 v11, v11, 0x7

    :cond_c
    const/16 v42, 0x34

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v44

    add-int v44, v44, v11

    add-int/lit8 v28, v44, -0x1

    const/16 v44, 0x6

    move/from16 v0, v28

    move/from16 v1, v44

    if-eq v0, v1, :cond_d

    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->isLeapYear()Z

    move-result v44

    if-eqz v44, :cond_2

    const/16 v44, 0x5

    move/from16 v0, v28

    move/from16 v1, v44

    if-eq v0, v1, :cond_d

    const/16 v44, 0xc

    move/from16 v0, v28

    move/from16 v1, v44

    if-ne v0, v1, :cond_2

    :cond_d
    const/16 v42, 0x35

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_f

    invoke-virtual/range {v24 .. v24}, Ljava/util/JapaneseImperialCalendar;->clone()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/JapaneseImperialCalendar;

    :cond_f
    const/16 v44, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->getActualMaximum(I)I

    move-result v29

    const/16 v44, 0x6

    move-object/from16 v0, v24

    move/from16 v1, v44

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    const/16 v44, 0x3

    move-object/from16 v0, v24

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->get(I)I

    move-result v42

    const/16 v44, 0x1

    move/from16 v0, v42

    move/from16 v1, v44

    if-ne v0, v1, :cond_2

    const/16 v44, 0x7

    move/from16 v0, v29

    move/from16 v1, v44

    if-le v0, v1, :cond_2

    const/16 v44, 0x3

    const/16 v45, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->add(II)V

    const/16 v44, 0x3

    move-object/from16 v0, v24

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->get(I)I

    move-result v42

    goto/16 :goto_0

    :pswitch_5
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v45

    const-wide v46, 0x7fffffffffffffffL

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    move-object/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v26

    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v44

    invoke-virtual/range {v26 .. v26}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-ne v0, v1, :cond_10

    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v44

    invoke-virtual/range {v26 .. v26}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_13

    :cond_10
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    sget-object v45, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual/range {v44 .. v45}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v7

    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v44

    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v45

    const/16 v46, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v7, v0, v1, v2}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    sget-object v44, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Lsun/util/calendar/Gregorian;->getDayOfWeek(Lsun/util/calendar/CalendarDate;)I

    move-result v11

    sget-object v44, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Lsun/util/calendar/Gregorian;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v32

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v44

    sub-int v11, v11, v44

    if-gez v11, :cond_11

    add-int/lit8 v11, v11, 0x7

    :cond_11
    rsub-int/lit8 v33, v11, 0x7

    const/16 v42, 0x3

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v44

    move/from16 v0, v33

    move/from16 v1, v44

    if-lt v0, v1, :cond_12

    const/16 v42, 0x4

    :cond_12
    add-int/lit8 v44, v33, 0x15

    sub-int v32, v32, v44

    if-lez v32, :cond_2

    add-int/lit8 v42, v42, 0x1

    const/16 v44, 0x7

    move/from16 v0, v32

    move/from16 v1, v44

    if-le v0, v1, :cond_2

    add-int/lit8 v42, v42, 0x1

    goto/16 :goto_0

    :cond_13
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v44

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v16

    invoke-virtual/range {v26 .. v26}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v44

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    sub-long v44, v16, v44

    const-wide/16 v46, 0x1

    add-long v30, v44, v46

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    move-wide/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/JapaneseImperialCalendar;->getWeekNumber(JJ)I

    move-result v42

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfWeek()I

    move-result v12

    invoke-virtual {v10}, Lsun/util/calendar/LocalGregorianCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/util/calendar/BaseCalendar$Date;

    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Lsun/util/calendar/LocalGregorianCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v34

    const/16 v44, 0x1

    move/from16 v0, v44

    invoke-virtual {v6, v0}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    invoke-virtual {v6}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v13

    sub-int v43, v12, v13

    if-gez v43, :cond_14

    add-int/lit8 v43, v43, 0x7

    :cond_14
    sub-int v34, v34, v43

    add-int/lit8 v44, v34, 0x6

    div-int/lit8 v42, v44, 0x7

    goto/16 :goto_0

    :pswitch_7
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {v24 .. v24}, Ljava/util/JapaneseImperialCalendar;->getTimeInMillis()J

    move-result-wide v46

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v45

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    move-object/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v25

    invoke-static {v10}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v14

    sget-object v44, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v44, v0

    add-int/lit8 v44, v44, -0x1

    move/from16 v0, v44

    if-ne v14, v0, :cond_16

    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v45

    const-wide v46, 0x7fffffffffffffffL

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    move-object/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v7

    invoke-virtual {v7}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v42

    const/16 v44, 0x190

    move/from16 v0, v42

    move/from16 v1, v44

    if-le v0, v1, :cond_15

    move/from16 v0, v42

    add-int/lit16 v0, v0, -0x190

    move/from16 v44, v0

    move-object/from16 v0, v25

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lsun/util/calendar/CalendarDate;->setYear(I)Lsun/util/calendar/CalendarDate;

    :cond_15
    :goto_1
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v44

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/util/JapaneseImperialCalendar;->getYearOffsetInMillis(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v44

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Ljava/util/JapaneseImperialCalendar;->getYearOffsetInMillis(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v46

    cmp-long v44, v44, v46

    if-lez v44, :cond_2

    add-int/lit8 v42, v42, -0x1

    goto/16 :goto_0

    :cond_16
    sget-object v44, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    sget-object v45, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    add-int/lit8 v46, v14, 0x1

    aget-object v45, v45, v46

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Lsun/util/calendar/Era;->getSince(Ljava/util/TimeZone;)J

    move-result-wide v46

    const-wide/16 v48, 0x1

    sub-long v46, v46, v48

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v45

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    move-object/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v7

    invoke-virtual {v7}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v42

    move-object/from16 v0, v25

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lsun/util/calendar/CalendarDate;->setYear(I)Lsun/util/calendar/CalendarDate;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public getActualMinimum(I)I
    .locals 24

    const/16 v19, 0xe

    move/from16 v0, v19

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v19

    if-nez v19, :cond_0

    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v19

    return v19

    :cond_0
    const/16 v16, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getNormalizedCalendar()Ljava/util/JapaneseImperialCalendar;

    move-result-object v12

    sget-object v19, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v12}, Ljava/util/JapaneseImperialCalendar;->getTimeInMillis()J

    move-result-wide v20

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v22

    invoke-virtual/range {v19 .. v22}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v13

    invoke-static {v13}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v5

    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    return v16

    :pswitch_0
    if-lez v5, :cond_3

    const/16 v16, 0x1

    sget-object v19, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v19, v19, v5

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lsun/util/calendar/Era;->getSince(Ljava/util/TimeZone;)J

    move-result-wide v14

    sget-object v19, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v15, v1}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v4

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    sget-object v19, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    sget-boolean v19, Ljava/util/JapaneseImperialCalendar;->-assertionsDisabled:Z

    if-nez v19, :cond_2

    invoke-virtual {v13}, Lsun/util/calendar/LocalGregorianCalendar$Date;->isLeapYear()Z

    move-result v19

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->isLeapYear()Z

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Ljava/util/JapaneseImperialCalendar;->getYearOffsetInMillis(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v20

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Ljava/util/JapaneseImperialCalendar;->getYearOffsetInMillis(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v22

    cmp-long v19, v20, v22

    if-gez v19, :cond_1

    const/16 v16, 0x2

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v16

    sget-object v19, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v20

    const-wide/high16 v22, -0x8000000000000000L

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v4

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v18

    const/16 v19, 0x190

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    move/from16 v0, v18

    add-int/lit16 v0, v0, -0x190

    move/from16 v18, v0

    :cond_4
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    sget-object v19, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Ljava/util/JapaneseImperialCalendar;->getYearOffsetInMillis(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v20

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Ljava/util/JapaneseImperialCalendar;->getYearOffsetInMillis(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v22

    cmp-long v19, v20, v22

    if-gez v19, :cond_1

    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    :pswitch_1
    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v5, v0, :cond_1

    invoke-virtual {v13}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    sget-object v19, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v19, v19, v5

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lsun/util/calendar/Era;->getSince(Ljava/util/TimeZone;)J

    move-result-wide v14

    sget-object v19, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v15, v1}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v4

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v19

    add-int/lit8 v16, v19, -0x1

    invoke-virtual {v13}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v19

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    :pswitch_2
    const/16 v16, 0x1

    sget-object v19, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v20

    const-wide/high16 v22, -0x8000000000000000L

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v4

    const/16 v19, 0x190

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lsun/util/calendar/CalendarDate;->addYear(I)Lsun/util/calendar/CalendarDate;

    sget-object v19, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    sget-object v19, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    sget-object v19, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v10

    sget-object v19, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v8, v9}, Ljava/util/JapaneseImperialCalendar;->getWeekNumber(JJ)I

    move-result v17

    add-int/lit8 v19, v17, -0x1

    mul-int/lit8 v19, v19, 0x7

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v6, v8, v20

    cmp-long v19, v6, v10

    if-ltz v19, :cond_5

    cmp-long v19, v6, v10

    if-nez v19, :cond_1

    invoke-virtual {v13}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getTimeOfDay()J

    move-result-wide v20

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v22

    cmp-long v19, v20, v22

    if-gez v19, :cond_1

    :cond_5
    const/16 v16, 0x2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCalendarType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "japanese"

    return-object v0
.end method

.method public getDisplayName(IILjava/util/Locale;)Ljava/lang/String;
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/16 v6, 0x287

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Ljava/util/JapaneseImperialCalendar;->checkDisplayNameParams(IIIILjava/util/Locale;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v11

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/JapaneseImperialCalendar;->get(I)I

    move-result v8

    if-ne p1, v3, :cond_3

    invoke-virtual {p0, p2}, Ljava/util/JapaneseImperialCalendar;->getBaseStyle(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-eq v8, v3, :cond_2

    :cond_1
    return-object v11

    :cond_2
    invoke-virtual {p0, v10}, Ljava/util/JapaneseImperialCalendar;->get(I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getCalendarType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, v8, p2, p3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_4

    if-nez p1, :cond_4

    sget-object v0, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v0, v0

    if-ge v8, v0, :cond_4

    sget-object v0, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v7, v0, v8

    if-ne p2, v3, :cond_5

    invoke-virtual {v7}, Lsun/util/calendar/Era;->getAbbreviation()Ljava/lang/String;

    move-result-object v9

    :cond_4
    :goto_0
    return-object v9

    :cond_5
    invoke-virtual {v7}, Lsun/util/calendar/Era;->getName()Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method

.method public getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/16 v9, 0x287

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v9}, Ljava/util/JapaneseImperialCalendar;->checkDisplayNameParams(IIIILjava/util/Locale;I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getCalendarType()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v3, v0, v1, v2}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v15

    if-eqz v15, :cond_8

    if-nez p1, :cond_8

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v16

    if-nez p2, :cond_2

    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v15, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->size()I

    move-result v16

    :cond_2
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v3, v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->getBaseStyle(I)I

    move-result v10

    move/from16 v12, v16

    :goto_1
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v3, v3

    if-ge v12, v3, :cond_8

    sget-object v3, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v11, v3, v12

    if-eqz v10, :cond_3

    const/4 v3, 0x1

    if-ne v10, v3, :cond_7

    :cond_3
    :goto_2
    invoke-virtual {v11}, Lsun/util/calendar/Era;->getAbbreviation()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v15, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v10, :cond_5

    const/4 v3, 0x2

    if-ne v10, v3, :cond_6

    :cond_5
    invoke-virtual {v11}, Lsun/util/calendar/Era;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v15, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_7
    const/4 v3, 0x4

    if-ne v10, v3, :cond_4

    goto :goto_2

    :cond_8
    return-object v15
.end method

.method public getGreatestMinimum(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->MIN_VALUES:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getLeastMaximum(I)I
    .locals 2

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    sget-object v0, Ljava/util/JapaneseImperialCalendar;->LEAST_MAX_VALUES:[I

    aget v0, v0, p1

    return v0

    :pswitch_0
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->LEAST_MAX_VALUES:[I

    aget v0, v0, v1

    invoke-virtual {p0, v1}, Ljava/util/JapaneseImperialCalendar;->getMaximum(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getMaximum(I)I
    .locals 6

    packed-switch p1, :pswitch_data_0

    sget-object v1, Ljava/util/JapaneseImperialCalendar;->MAX_VALUES:[I

    aget v1, v1, p1

    return v1

    :pswitch_0
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v2

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v1, v4, v5, v2}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    sget-object v1, Ljava/util/JapaneseImperialCalendar;->LEAST_MAX_VALUES:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getMinimum(I)I
    .locals 1

    sget-object v0, Ljava/util/JapaneseImperialCalendar;->MIN_VALUES:[I

    aget v0, v0, p1

    return v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 2

    invoke-super {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    iget-object v1, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v1, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Ljava/util/Calendar;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public roll(II)V
    .locals 50

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    const/16 v46, 0xf

    move/from16 v0, p1

    move/from16 v1, v46

    if-lt v0, v1, :cond_2

    :cond_1
    new-instance v46, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v46 .. v46}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v46

    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->complete()V

    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v23

    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getMaximum(I)I

    move-result v22

    packed-switch p1, :pswitch_data_0

    :cond_3
    :goto_0
    :pswitch_0
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    move/from16 v0, v46

    move/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v46

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    return-void

    :pswitch_1
    add-int/lit8 v38, v22, 0x1

    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v13

    add-int v46, v13, p2

    rem-int v34, v46, v38

    if-gez v34, :cond_4

    add-int v34, v34, v38

    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    move-wide/from16 v46, v0

    sub-int v48, v34, v13

    const v49, 0x36ee80

    mul-int v48, v48, v49

    move/from16 v0, v48

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v46, v46, v48

    move-wide/from16 v0, v46

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljava/util/JapaneseImperialCalendar;->time:J

    sget-object v46, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    move-wide/from16 v48, v0

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v47

    move-object/from16 v0, v46

    move-wide/from16 v1, v48

    move-object/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v4

    const/16 v46, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Lsun/util/calendar/CalendarDate;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;

    const/16 v46, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    const/16 v47, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v47

    add-int/lit8 v47, v47, 0x1

    const/16 v48, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v48

    move/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v4, v0, v1, v2}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    const/16 v46, 0xa

    move/from16 v0, p1

    move/from16 v1, v46

    if-ne v0, v1, :cond_6

    sget-boolean v46, Ljava/util/JapaneseImperialCalendar;->-assertionsDisabled:Z

    if-nez v46, :cond_5

    const/16 v46, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_5

    new-instance v46, Ljava/lang/AssertionError;

    invoke-direct/range {v46 .. v46}, Ljava/lang/AssertionError;-><init>()V

    throw v46

    :cond_5
    const/16 v46, 0xc

    move/from16 v0, v46

    invoke-virtual {v4, v0}, Lsun/util/calendar/CalendarDate;->addHours(I)Lsun/util/calendar/CalendarDate;

    :cond_6
    sget-object v46, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lsun/util/calendar/LocalGregorianCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v46

    move-wide/from16 v0, v46

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljava/util/JapaneseImperialCalendar;->time:J

    :cond_7
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getHours()I

    move-result v16

    rem-int v46, v16, v38

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    const/16 v46, 0xa

    move/from16 v0, p1

    move/from16 v1, v46

    if-ne v0, v1, :cond_8

    const/16 v46, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    :goto_1
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getZoneOffset()I

    move-result v45

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDaylightSaving()I

    move-result v36

    sub-int v46, v45, v36

    const/16 v47, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    const/16 v46, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    return-void

    :cond_8
    div-int/lit8 v46, v16, 0xc

    const/16 v47, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    rem-int/lit8 v46, v16, 0xc

    const/16 v47, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    goto :goto_1

    :pswitch_2
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getActualMinimum(I)I

    move-result v23

    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getActualMaximum(I)I

    move-result v22

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v46

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v46

    if-nez v46, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v44

    const/16 v46, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->getMaximum(I)I

    move-result v46

    move/from16 v0, v44

    move/from16 v1, v46

    if-ne v0, v1, :cond_d

    sget-object v46, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    move-wide/from16 v48, v0

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v47

    move-object/from16 v0, v46

    move-wide/from16 v1, v48

    move-object/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v20

    sget-object v46, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v47

    const-wide v48, 0x7fffffffffffffffL

    move-object/from16 v0, v46

    move-wide/from16 v1, v48

    move-object/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v4

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v46

    add-int/lit8 v22, v46, -0x1

    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    move/from16 v0, v46

    move/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v31

    move/from16 v0, v31

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    const/16 v46, -0x190

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lsun/util/calendar/CalendarDate;->addYear(I)Lsun/util/calendar/CalendarDate;

    add-int/lit8 v46, v31, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lsun/util/calendar/CalendarDate;->setMonth(I)Lsun/util/calendar/CalendarDate;

    invoke-virtual/range {v20 .. v20}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v46

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-le v0, v1, :cond_9

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v46

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    sget-object v46, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v46

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    :cond_9
    invoke-virtual/range {v20 .. v20}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v46

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_a

    invoke-virtual/range {v20 .. v20}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v46

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v48

    cmp-long v46, v46, v48

    if-lez v46, :cond_a

    add-int/lit8 v46, v31, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lsun/util/calendar/CalendarDate;->setMonth(I)Lsun/util/calendar/CalendarDate;

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v46

    add-int/lit8 v46, v46, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    sget-object v46, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v46

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    invoke-virtual/range {v20 .. v20}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v46

    add-int/lit8 v31, v46, -0x1

    :cond_a
    invoke-virtual/range {v20 .. v20}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v46

    const/16 v47, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    :cond_b
    const/16 v46, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    :cond_c
    :goto_2
    return-void

    :cond_d
    const/16 v46, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v46

    move/from16 v0, v44

    move/from16 v1, v46

    if-ne v0, v1, :cond_11

    sget-object v46, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    move-wide/from16 v48, v0

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v47

    move-object/from16 v0, v46

    move-wide/from16 v1, v48

    move-object/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v20

    sget-object v46, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v47

    const-wide/high16 v48, -0x8000000000000000L

    move-object/from16 v0, v46

    move-wide/from16 v1, v48

    move-object/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v4

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v46

    add-int/lit8 v23, v46, -0x1

    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    move/from16 v0, v46

    move/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v31

    move/from16 v0, v31

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    const/16 v46, 0x190

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lsun/util/calendar/CalendarDate;->addYear(I)Lsun/util/calendar/CalendarDate;

    add-int/lit8 v46, v31, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lsun/util/calendar/CalendarDate;->setMonth(I)Lsun/util/calendar/CalendarDate;

    invoke-virtual/range {v20 .. v20}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v46

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-ge v0, v1, :cond_e

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v46

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    sget-object v46, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v46

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    :cond_e
    invoke-virtual/range {v20 .. v20}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v46

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_f

    invoke-virtual/range {v20 .. v20}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v46

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v48

    cmp-long v46, v46, v48

    if-gez v46, :cond_f

    add-int/lit8 v46, v31, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lsun/util/calendar/CalendarDate;->setMonth(I)Lsun/util/calendar/CalendarDate;

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v46

    add-int/lit8 v46, v46, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    sget-object v46, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v46

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    invoke-virtual/range {v20 .. v20}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v46

    add-int/lit8 v31, v46, -0x1

    :cond_f
    invoke-virtual/range {v20 .. v20}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v46

    const/16 v47, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    :cond_10
    const/16 v46, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    goto/16 :goto_2

    :cond_11
    const/16 v46, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    add-int v46, v46, p2

    rem-int/lit8 v24, v46, 0xc

    if-gez v24, :cond_12

    add-int/lit8 v24, v24, 0xc

    :cond_12
    const/16 v46, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/JapaneseImperialCalendar;->monthLength(I)I

    move-result v25

    const/16 v46, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    move/from16 v0, v46

    move/from16 v1, v25

    if-le v0, v1, :cond_c

    const/16 v46, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    goto/16 :goto_2

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v12

    const/16 v37, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_15

    sget-object v46, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v46, v46, v12

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v46

    add-int/lit8 v23, v46, -0x1

    :cond_14
    :goto_3
    move/from16 v0, v23

    move/from16 v1, v22

    if-ne v0, v1, :cond_16

    return-void

    :cond_15
    sget-object v46, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    move-object/from16 v0, v46

    array-length v0, v0

    move/from16 v46, v0

    add-int/lit8 v46, v46, -0x1

    move/from16 v0, v46

    if-ge v12, v0, :cond_14

    sget-object v46, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    add-int/lit8 v47, v12, 0x1

    aget-object v46, v46, v47

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_14

    invoke-virtual/range {v37 .. v37}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v46

    add-int/lit8 v22, v46, -0x1

    invoke-virtual/range {v37 .. v37}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_14

    add-int/lit8 v22, v22, -0x1

    goto :goto_3

    :cond_16
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    move/from16 v0, v46

    move/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v31

    const/16 v46, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    move/from16 v0, v31

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    invoke-virtual/range {v37 .. v37}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_17

    invoke-virtual/range {v37 .. v37}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_c

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v46

    invoke-virtual/range {v37 .. v37}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-ge v0, v1, :cond_c

    invoke-virtual/range {v37 .. v37}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v46

    const/16 v47, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    goto/16 :goto_2

    :cond_18
    move/from16 v0, v31

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    invoke-virtual/range {v37 .. v37}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v46

    add-int/lit8 v46, v46, -0x1

    move/from16 v0, v46

    move/from16 v1, v31

    if-ne v0, v1, :cond_c

    invoke-virtual/range {v37 .. v37}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v46

    move/from16 v0, v46

    if-lt v0, v8, :cond_c

    add-int/lit8 v46, v8, -0x1

    const/16 v47, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    goto/16 :goto_2

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v43

    const/16 v46, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->getActualMaximum(I)I

    move-result v22

    const/16 v46, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    const/16 v47, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    const/16 v46, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v41

    add-int v39, v41, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v46

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v46

    if-nez v46, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v44

    const/16 v46, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->getMaximum(I)I

    move-result v46

    move/from16 v0, v44

    move/from16 v1, v46

    if-ne v0, v1, :cond_1a

    const/16 v46, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->getActualMaximum(I)I

    move-result v22

    :cond_19
    move/from16 v0, v39

    move/from16 v1, v23

    if-le v0, v1, :cond_1b

    move/from16 v0, v39

    move/from16 v1, v22

    if-ge v0, v1, :cond_1b

    const/16 v46, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    return-void

    :cond_1a
    const/16 v46, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v46

    move/from16 v0, v44

    move/from16 v1, v46

    if-ne v0, v1, :cond_19

    const/16 v46, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->getActualMinimum(I)I

    move-result v23

    const/16 v46, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->getActualMaximum(I)I

    move-result v22

    move/from16 v0, v39

    move/from16 v1, v23

    if-le v0, v1, :cond_19

    move/from16 v0, v39

    move/from16 v1, v22

    if-ge v0, v1, :cond_19

    const/16 v46, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    return-void

    :cond_1b
    move-object/from16 v0, p0

    iget-wide v14, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    sub-int v46, v41, v23

    mul-int/lit8 v46, v46, 0x7

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    sub-long v6, v14, v46

    const/16 v46, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v46

    move/from16 v0, v44

    move/from16 v1, v46

    if-eq v0, v1, :cond_1d

    sget-object v46, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, v46

    invoke-virtual {v0, v6, v7}, Lsun/util/calendar/Gregorian;->getYearFromFixedDate(J)I

    move-result v46

    move/from16 v0, v46

    move/from16 v1, v43

    if-eq v0, v1, :cond_1c

    add-int/lit8 v23, v23, 0x1

    :cond_1c
    :goto_4
    const/16 v46, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    sub-int v46, v22, v46

    mul-int/lit8 v46, v46, 0x7

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    add-long v14, v14, v46

    sget-object v46, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    move-object/from16 v0, v46

    invoke-virtual {v0, v14, v15}, Lsun/util/calendar/Gregorian;->getYearFromFixedDate(J)I

    move-result v46

    move/from16 v0, v46

    move/from16 v1, v43

    if-eq v0, v1, :cond_3

    add-int/lit8 v22, v22, -0x1

    goto/16 :goto_0

    :cond_1d
    sget-object v46, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v47

    const-wide/high16 v48, -0x8000000000000000L

    move-object/from16 v0, v46

    move-wide/from16 v1, v48

    move-object/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v4

    sget-object v46, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v46

    cmp-long v46, v6, v46

    if-gez v46, :cond_1c

    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    :cond_1e
    move-object/from16 v0, p0

    iget-wide v14, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    sub-int v46, v41, v23

    mul-int/lit8 v46, v46, 0x7

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    sub-long v6, v14, v46

    invoke-static {v6, v7}, Ljava/util/JapaneseImperialCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v5

    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v47

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_1f

    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_20

    :cond_1f
    add-int/lit8 v23, v23, 0x1

    :cond_20
    sub-int v46, v22, v41

    mul-int/lit8 v46, v46, 0x7

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    add-long v14, v14, v46

    sget-object v46, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v46

    invoke-virtual {v0, v5, v14, v15}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v47

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_21

    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_22

    :cond_21
    add-int/lit8 v22, v22, -0x1

    :cond_22
    move/from16 v0, v41

    move/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v46

    add-int/lit8 v39, v46, -0x1

    mul-int/lit8 v46, v39, 0x7

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    add-long v46, v46, v6

    invoke-static/range {v46 .. v47}, Ljava/util/JapaneseImperialCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v5

    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v46

    add-int/lit8 v46, v46, -0x1

    const/16 v47, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v46

    const/16 v47, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    return-void

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v46

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v17

    const/16 v46, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v47

    sub-int v9, v46, v47

    if-gez v9, :cond_23

    add-int/lit8 v9, v9, 0x7

    :cond_23
    move-object/from16 v0, p0

    iget-wide v14, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    if-eqz v17, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v14, v15}, Ljava/util/JapaneseImperialCalendar;->getFixedDateMonth1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J

    move-result-wide v26

    invoke-direct/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->actualMonthLength()I

    move-result v30

    :goto_5
    const-wide/16 v46, 0x6

    add-long v46, v46, v26

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v48

    invoke-static/range {v46 .. v48}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v28

    sub-long v46, v28, v26

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v46, v0

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-lt v0, v1, :cond_24

    const-wide/16 v46, 0x7

    sub-long v28, v28, v46

    :cond_24
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getActualMaximum(I)I

    move-result v22

    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, p2

    move/from16 v2, v47

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v46

    add-int/lit8 v39, v46, -0x1

    mul-int/lit8 v46, v39, 0x7

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    add-long v46, v46, v28

    int-to-long v0, v9

    move-wide/from16 v48, v0

    add-long v32, v46, v48

    cmp-long v46, v32, v26

    if-gez v46, :cond_27

    move-wide/from16 v32, v26

    :cond_25
    :goto_6
    sub-long v46, v32, v26

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v46, v0

    add-int/lit8 v46, v46, 0x1

    const/16 v47, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    return-void

    :cond_26
    const/16 v46, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    sub-long v46, v14, v46

    const-wide/16 v48, 0x1

    add-long v26, v46, v48

    sget-object v46, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Lsun/util/calendar/LocalGregorianCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v30

    goto/16 :goto_5

    :cond_27
    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v46, v0

    add-long v46, v46, v26

    cmp-long v46, v32, v46

    if-ltz v46, :cond_25

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v46, v0

    add-long v46, v46, v26

    const-wide/16 v48, 0x1

    sub-long v32, v46, v48

    goto :goto_6

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v46

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v46

    if-nez v46, :cond_28

    sget-object v46, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Lsun/util/calendar/LocalGregorianCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v22

    goto/16 :goto_0

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    move-wide/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-wide/from16 v2, v48

    invoke-direct {v0, v1, v2, v3}, Ljava/util/JapaneseImperialCalendar;->getFixedDateMonth1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    move-wide/from16 v46, v0

    sub-long v46, v46, v26

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v46, v0

    invoke-direct/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->actualMonthLength()I

    move-result v47

    add-int/lit8 v47, v47, -0x1

    const/16 v48, 0x0

    move/from16 v0, v46

    move/from16 v1, p2

    move/from16 v2, v48

    move/from16 v3, v47

    invoke-static {v0, v1, v2, v3}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v39

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v46, v0

    add-long v46, v46, v26

    invoke-static/range {v46 .. v47}, Ljava/util/JapaneseImperialCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v5

    sget-boolean v46, Ljava/util/JapaneseImperialCalendar;->-assertionsDisabled:Z

    if-nez v46, :cond_2b

    invoke-static {v5}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v46

    invoke-direct/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->internalGetEra()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_29

    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v46

    const/16 v47, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_2a

    :cond_29
    new-instance v46, Ljava/lang/AssertionError;

    invoke-direct/range {v46 .. v46}, Ljava/lang/AssertionError;-><init>()V

    throw v46

    :cond_2a
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v46

    add-int/lit8 v46, v46, -0x1

    const/16 v47, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_29

    :cond_2b
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v46

    const/16 v47, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    return-void

    :pswitch_7
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getActualMaximum(I)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v46

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v46

    if-eqz v46, :cond_3

    const/16 v46, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    move/from16 v0, v46

    move/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v39

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    move-wide/from16 v46, v0

    const/16 v48, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v48

    move/from16 v0, v48

    int-to-long v0, v0

    move-wide/from16 v48, v0

    sub-long v18, v46, v48

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v46, v0

    add-long v46, v46, v18

    invoke-static/range {v46 .. v47}, Ljava/util/JapaneseImperialCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v5

    sget-boolean v46, Ljava/util/JapaneseImperialCalendar;->-assertionsDisabled:Z

    if-nez v46, :cond_2d

    invoke-static {v5}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v46

    invoke-direct/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->internalGetEra()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_2c

    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v46

    const/16 v47, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_2d

    :cond_2c
    new-instance v46, Ljava/lang/AssertionError;

    invoke-direct/range {v46 .. v46}, Ljava/lang/AssertionError;-><init>()V

    throw v46

    :cond_2d
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v46

    add-int/lit8 v46, v46, -0x1

    const/16 v47, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v46

    const/16 v47, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    return-void

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v46

    if-nez v46, :cond_2e

    add-int/lit8 v46, v35, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v46

    xor-int/lit8 v46, v46, 0x1

    if-eqz v46, :cond_2e

    const/16 v46, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v40

    const/16 v46, 0x1

    move/from16 v0, v40

    move/from16 v1, v46

    if-le v0, v1, :cond_2e

    const/16 v46, 0x34

    move/from16 v0, v40

    move/from16 v1, v46

    if-ge v0, v1, :cond_2e

    const/16 v46, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    const/16 v47, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    const/16 v22, 0x7

    goto/16 :goto_0

    :cond_2e
    rem-int/lit8 p2, p2, 0x7

    if-nez p2, :cond_2f

    return-void

    :cond_2f
    move-object/from16 v0, p0

    iget-wide v14, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    invoke-virtual/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v46

    move/from16 v0, v46

    invoke-static {v14, v15, v0}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v10

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v46, v0

    add-long v14, v14, v46

    cmp-long v46, v14, v10

    if-gez v46, :cond_31

    const-wide/16 v46, 0x7

    add-long v14, v14, v46

    :cond_30
    :goto_7
    invoke-static {v14, v15}, Ljava/util/JapaneseImperialCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v5

    invoke-static {v5}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v46

    const/16 v47, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v46

    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v47

    add-int/lit8 v47, v47, -0x1

    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v48

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/JapaneseImperialCalendar;->set(III)V

    return-void

    :cond_31
    const-wide/16 v46, 0x7

    add-long v46, v46, v10

    cmp-long v46, v14, v46

    if-ltz v46, :cond_30

    const-wide/16 v46, 0x7

    sub-long v14, v14, v46

    goto :goto_7

    :pswitch_9
    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v46

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v46

    if-nez v46, :cond_33

    const/16 v46, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v8

    sget-object v46, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Lsun/util/calendar/LocalGregorianCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v30

    rem-int/lit8 v21, v30, 0x7

    div-int/lit8 v22, v30, 0x7

    add-int/lit8 v46, v8, -0x1

    rem-int/lit8 v42, v46, 0x7

    move/from16 v0, v42

    move/from16 v1, v21

    if-ge v0, v1, :cond_32

    add-int/lit8 v22, v22, 0x1

    :cond_32
    const/16 v46, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    const/16 v47, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    goto/16 :goto_0

    :cond_33
    move-object/from16 v0, p0

    iget-wide v14, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v14, v15}, Ljava/util/JapaneseImperialCalendar;->getFixedDateMonth1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J

    move-result-wide v26

    invoke-direct/range {p0 .. p0}, Ljava/util/JapaneseImperialCalendar;->actualMonthLength()I

    move-result v30

    rem-int/lit8 v21, v30, 0x7

    div-int/lit8 v22, v30, 0x7

    sub-long v46, v14, v26

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v46, v0

    rem-int/lit8 v42, v46, 0x7

    move/from16 v0, v42

    move/from16 v1, v21

    if-ge v0, v1, :cond_34

    add-int/lit8 v22, v22, 0x1

    :cond_34
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v46

    move/from16 v0, v46

    move/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v46

    add-int/lit8 v39, v46, -0x1

    mul-int/lit8 v46, v39, 0x7

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    add-long v46, v46, v26

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v48, v0

    add-long v14, v46, v48

    invoke-static {v14, v15}, Ljava/util/JapaneseImperialCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v5

    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v46

    const/16 v47, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public roll(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/util/JapaneseImperialCalendar;->roll(II)V

    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 1

    invoke-super {p0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v0, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v0, p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    return-void
.end method

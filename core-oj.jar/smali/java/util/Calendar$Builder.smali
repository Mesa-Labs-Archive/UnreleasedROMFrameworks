.class public Ljava/util/Calendar$Builder;
.super Ljava/lang/Object;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final NFIELDS:I = 0x12

.field private static final WEEK_YEAR:I = 0x11


# instance fields
.field private fields:[I

.field private firstDayOfWeek:I

.field private instant:J

.field private lenient:Z

.field private locale:Ljava/util/Locale;

.field private maxFieldIndex:I

.field private minimalDaysInFirstWeek:I

.field private nextStamp:I

.field private type:Ljava/lang/String;

.field private zone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Calendar$Builder;->lenient:Z

    return-void
.end method

.method private allocateFields()V
    .locals 1

    iget-object v0, p0, Ljava/util/Calendar$Builder;->fields:[I

    if-nez v0, :cond_0

    const/16 v0, 0x24

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/util/Calendar$Builder;->fields:[I

    const/4 v0, 0x2

    iput v0, p0, Ljava/util/Calendar$Builder;->nextStamp:I

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Calendar$Builder;->maxFieldIndex:I

    :cond_0
    return-void
.end method

.method private internalSet(II)V
    .locals 3

    iget-object v0, p0, Ljava/util/Calendar$Builder;->fields:[I

    iget v1, p0, Ljava/util/Calendar$Builder;->nextStamp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/Calendar$Builder;->nextStamp:I

    aput v1, v0, p1

    iget v0, p0, Ljava/util/Calendar$Builder;->nextStamp:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stamp counter overflow"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/Calendar$Builder;->fields:[I

    add-int/lit8 v1, p1, 0x12

    aput p2, v0, v1

    iget v0, p0, Ljava/util/Calendar$Builder;->maxFieldIndex:I

    if-le p1, v0, :cond_1

    const/16 v0, 0x11

    if-ge p1, v0, :cond_1

    iput p1, p0, Ljava/util/Calendar$Builder;->maxFieldIndex:I

    :cond_1
    return-void
.end method

.method private isInstantSet()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Ljava/util/Calendar$Builder;->nextStamp:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSet(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/util/Calendar$Builder;->fields:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/Calendar$Builder;->fields:[I

    aget v1, v1, p1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isValidWeekParameter(I)Z
    .locals 2

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v1, 0x7

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public build()Ljava/util/Calendar;
    .locals 12

    const/16 v11, 0x11

    const/4 v10, 0x1

    iget-object v7, p0, Ljava/util/Calendar$Builder;->locale:Ljava/util/Locale;

    if-nez v7, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    iput-object v7, p0, Ljava/util/Calendar$Builder;->locale:Ljava/util/Locale;

    :cond_0
    iget-object v7, p0, Ljava/util/Calendar$Builder;->zone:Ljava/util/TimeZone;

    if-nez v7, :cond_1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    iput-object v7, p0, Ljava/util/Calendar$Builder;->zone:Ljava/util/TimeZone;

    :cond_1
    iget-object v7, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    if-nez v7, :cond_2

    iget-object v7, p0, Ljava/util/Calendar$Builder;->locale:Ljava/util/Locale;

    const-string/jumbo v8, "ca"

    invoke-virtual {v7, v8}, Ljava/util/Locale;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    :cond_2
    iget-object v7, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    if-nez v7, :cond_3

    const-string/jumbo v7, "gregory"

    iput-object v7, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    :cond_3
    iget-object v7, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    const-string/jumbo v8, "gregory"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance v0, Ljava/util/GregorianCalendar;

    iget-object v7, p0, Ljava/util/Calendar$Builder;->zone:Ljava/util/TimeZone;

    iget-object v8, p0, Ljava/util/Calendar$Builder;->locale:Ljava/util/Locale;

    invoke-direct {v0, v7, v8, v10}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;Z)V

    :goto_0
    iget-boolean v7, p0, Ljava/util/Calendar$Builder;->lenient:Z

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setLenient(Z)V

    iget v7, p0, Ljava/util/Calendar$Builder;->firstDayOfWeek:I

    if-eqz v7, :cond_4

    iget v7, p0, Ljava/util/Calendar$Builder;->firstDayOfWeek:I

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    iget v7, p0, Ljava/util/Calendar$Builder;->minimalDaysInFirstWeek:I

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    :cond_4
    invoke-direct {p0}, Ljava/util/Calendar$Builder;->isInstantSet()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-wide v8, p0, Ljava/util/Calendar$Builder;->instant:J

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0}, Ljava/util/Calendar;->complete()V

    return-object v0

    :cond_5
    const-string/jumbo v8, "iso8601"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v2, Ljava/util/GregorianCalendar;

    iget-object v7, p0, Ljava/util/Calendar$Builder;->zone:Ljava/util/TimeZone;

    iget-object v8, p0, Ljava/util/Calendar$Builder;->locale:Ljava/util/Locale;

    invoke-direct {v2, v7, v8, v10}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;Z)V

    new-instance v7, Ljava/util/Date;

    const-wide/high16 v8, -0x8000000000000000L

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v7}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    const/4 v7, 0x2

    const/4 v8, 0x4

    invoke-virtual {p0, v7, v8}, Ljava/util/Calendar$Builder;->setWeekDefinition(II)Ljava/util/Calendar$Builder;

    move-object v0, v2

    goto :goto_0

    :cond_6
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unknown calendar type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_7
    iget-object v7, p0, Ljava/util/Calendar$Builder;->fields:[I

    if-eqz v7, :cond_f

    invoke-direct {p0, v11}, Ljava/util/Calendar$Builder;->isSet(I)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Ljava/util/Calendar$Builder;->fields:[I

    aget v7, v7, v11

    iget-object v8, p0, Ljava/util/Calendar$Builder;->fields:[I

    aget v8, v8, v10

    if-le v7, v8, :cond_8

    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_a

    invoke-virtual {v0}, Ljava/util/Calendar;->isWeekDateSupported()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_a

    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "week date is unsupported by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_8
    const/4 v5, 0x0

    goto :goto_1

    :cond_9
    const/4 v5, 0x0

    goto :goto_1

    :cond_a
    const/4 v4, 0x2

    :goto_2
    iget v7, p0, Ljava/util/Calendar$Builder;->nextStamp:I

    if-ge v4, v7, :cond_d

    const/4 v3, 0x0

    :goto_3
    iget v7, p0, Ljava/util/Calendar$Builder;->maxFieldIndex:I

    if-gt v3, v7, :cond_b

    iget-object v7, p0, Ljava/util/Calendar$Builder;->fields:[I

    aget v7, v7, v3

    if-ne v7, v4, :cond_c

    iget-object v7, p0, Ljava/util/Calendar$Builder;->fields:[I

    add-int/lit8 v8, v3, 0x12

    aget v7, v7, v8

    invoke-virtual {v0, v3, v7}, Ljava/util/Calendar;->set(II)V

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_d
    if-eqz v5, :cond_e

    const/4 v7, 0x3

    invoke-direct {p0, v7}, Ljava/util/Calendar$Builder;->isSet(I)Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Ljava/util/Calendar$Builder;->fields:[I

    const/16 v8, 0x15

    aget v6, v7, v8

    :goto_4
    const/4 v7, 0x7

    invoke-direct {p0, v7}, Ljava/util/Calendar$Builder;->isSet(I)Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Ljava/util/Calendar$Builder;->fields:[I

    const/16 v8, 0x19

    aget v1, v7, v8

    :goto_5
    iget-object v7, p0, Ljava/util/Calendar$Builder;->fields:[I

    const/16 v8, 0x23

    aget v7, v7, v8

    invoke-virtual {v0, v7, v6, v1}, Ljava/util/Calendar;->setWeekDate(III)V

    :cond_e
    invoke-virtual {v0}, Ljava/util/Calendar;->complete()V

    :cond_f
    return-object v0

    :cond_10
    const/4 v6, 0x1

    goto :goto_4

    :cond_11
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    goto :goto_5
.end method

.method public set(II)Ljava/util/Calendar$Builder;
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x11

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "field is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0}, Ljava/util/Calendar$Builder;->isInstantSet()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "instant has been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0}, Ljava/util/Calendar$Builder;->allocateFields()V

    invoke-direct {p0, p1, p2}, Ljava/util/Calendar$Builder;->internalSet(II)V

    return-object p0
.end method

.method public setCalendarType(Ljava/lang/String;)Ljava/util/Calendar$Builder;
    .locals 3

    const-string/jumbo v0, "gregorian"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "gregory"

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getAvailableCalendarTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "iso8601"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown calendar type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    if-nez v0, :cond_3

    iput-object p1, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    :cond_2
    return-object p0

    :cond_3
    iget-object v0, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "calendar type override"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDate(III)Ljava/util/Calendar$Builder;
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    aput p1, v0, v2

    aput v3, v0, v3

    const/4 v1, 0x3

    aput p2, v0, v1

    const/4 v1, 0x4

    aput v4, v0, v1

    aput p3, v0, v4

    invoke-virtual {p0, v0}, Ljava/util/Calendar$Builder;->setFields([I)Ljava/util/Calendar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs setFields([I)Ljava/util/Calendar$Builder;
    .locals 6

    array-length v3, p1

    rem-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    :cond_0
    invoke-direct {p0}, Ljava/util/Calendar$Builder;->isInstantSet()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "instant has been set"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget v4, p0, Ljava/util/Calendar$Builder;->nextStamp:I

    div-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    if-gez v4, :cond_2

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "stamp counter overflow"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-direct {p0}, Ljava/util/Calendar$Builder;->allocateFields()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_5

    add-int/lit8 v1, v2, 0x1

    aget v0, p1, v2

    if-ltz v0, :cond_3

    const/16 v4, 0x11

    if-lt v0, v4, :cond_4

    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "field is invalid"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    add-int/lit8 v2, v1, 0x1

    aget v4, p1, v1

    invoke-direct {p0, v0, v4}, Ljava/util/Calendar$Builder;->internalSet(II)V

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public setInstant(J)Ljava/util/Calendar$Builder;
    .locals 1

    iget-object v0, p0, Ljava/util/Calendar$Builder;->fields:[I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iput-wide p1, p0, Ljava/util/Calendar$Builder;->instant:J

    const/4 v0, 0x1

    iput v0, p0, Ljava/util/Calendar$Builder;->nextStamp:I

    return-object p0
.end method

.method public setInstant(Ljava/util/Date;)Ljava/util/Calendar$Builder;
    .locals 2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar$Builder;->setInstant(J)Ljava/util/Calendar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setLenient(Z)Ljava/util/Calendar$Builder;
    .locals 0

    iput-boolean p1, p0, Ljava/util/Calendar$Builder;->lenient:Z

    return-object p0
.end method

.method public setLocale(Ljava/util/Locale;)Ljava/util/Calendar$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/util/Calendar$Builder;->locale:Ljava/util/Locale;

    return-object p0
.end method

.method public setTimeOfDay(III)Ljava/util/Calendar$Builder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/util/Calendar$Builder;->setTimeOfDay(IIII)Ljava/util/Calendar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTimeOfDay(IIII)Ljava/util/Calendar$Builder;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [I

    const/16 v1, 0xb

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v1, 0x3

    aput p2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v1, 0x5

    aput p3, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x6

    aput v1, v0, v2

    const/4 v1, 0x7

    aput p4, v0, v1

    invoke-virtual {p0, v0}, Ljava/util/Calendar$Builder;->setFields([I)Ljava/util/Calendar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)Ljava/util/Calendar$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/util/Calendar$Builder;->zone:Ljava/util/TimeZone;

    return-object p0
.end method

.method public setWeekDate(III)Ljava/util/Calendar$Builder;
    .locals 1

    invoke-direct {p0}, Ljava/util/Calendar$Builder;->allocateFields()V

    const/16 v0, 0x11

    invoke-direct {p0, v0, p1}, Ljava/util/Calendar$Builder;->internalSet(II)V

    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Ljava/util/Calendar$Builder;->internalSet(II)V

    const/4 v0, 0x7

    invoke-direct {p0, v0, p3}, Ljava/util/Calendar$Builder;->internalSet(II)V

    return-object p0
.end method

.method public setWeekDefinition(II)Ljava/util/Calendar$Builder;
    .locals 1

    invoke-direct {p0, p1}, Ljava/util/Calendar$Builder;->isValidWeekParameter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Ljava/util/Calendar$Builder;->isValidWeekParameter(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput p1, p0, Ljava/util/Calendar$Builder;->firstDayOfWeek:I

    iput p2, p0, Ljava/util/Calendar$Builder;->minimalDaysInFirstWeek:I

    return-object p0
.end method

.class public final Ljava/time/temporal/IsoFields;
.super Ljava/lang/Object;
.source "IsoFields.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/temporal/IsoFields$Field;,
        Ljava/time/temporal/IsoFields$Unit;
    }
.end annotation


# static fields
.field public static final DAY_OF_QUARTER:Ljava/time/temporal/TemporalField;

.field public static final QUARTER_OF_YEAR:Ljava/time/temporal/TemporalField;

.field public static final QUARTER_YEARS:Ljava/time/temporal/TemporalUnit;

.field public static final WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

.field public static final WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

.field public static final WEEK_OF_WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/time/temporal/IsoFields$Field;->DAY_OF_QUARTER:Ljava/time/temporal/IsoFields$Field;

    sput-object v0, Ljava/time/temporal/IsoFields;->DAY_OF_QUARTER:Ljava/time/temporal/TemporalField;

    sget-object v0, Ljava/time/temporal/IsoFields$Field;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    sput-object v0, Ljava/time/temporal/IsoFields;->QUARTER_OF_YEAR:Ljava/time/temporal/TemporalField;

    sget-object v0, Ljava/time/temporal/IsoFields$Field;->WEEK_OF_WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    sput-object v0, Ljava/time/temporal/IsoFields;->WEEK_OF_WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

    sget-object v0, Ljava/time/temporal/IsoFields$Field;->WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    sput-object v0, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

    sget-object v0, Ljava/time/temporal/IsoFields$Unit;->WEEK_BASED_YEARS:Ljava/time/temporal/IsoFields$Unit;

    sput-object v0, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    sget-object v0, Ljava/time/temporal/IsoFields$Unit;->QUARTER_YEARS:Ljava/time/temporal/IsoFields$Unit;

    sput-object v0, Ljava/time/temporal/IsoFields;->QUARTER_YEARS:Ljava/time/temporal/TemporalUnit;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Not instantiable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

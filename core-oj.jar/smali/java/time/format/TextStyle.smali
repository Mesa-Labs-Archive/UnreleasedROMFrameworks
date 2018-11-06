.class public final enum Ljava/time/format/TextStyle;
.super Ljava/lang/Enum;
.source "TextStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/format/TextStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/format/TextStyle;

.field public static final enum FULL:Ljava/time/format/TextStyle;

.field public static final enum FULL_STANDALONE:Ljava/time/format/TextStyle;

.field public static final enum NARROW:Ljava/time/format/TextStyle;

.field public static final enum NARROW_STANDALONE:Ljava/time/format/TextStyle;

.field public static final enum SHORT:Ljava/time/format/TextStyle;

.field public static final enum SHORT_STANDALONE:Ljava/time/format/TextStyle;


# instance fields
.field private final calendarStyle:I

.field private final zoneNameStyleIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Ljava/time/format/TextStyle;

    const-string/jumbo v1, "FULL"

    invoke-direct {v0, v1, v5, v6, v5}, Ljava/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    new-instance v0, Ljava/time/format/TextStyle;

    const-string/jumbo v1, "FULL_STANDALONE"

    const v2, 0x8002

    invoke-direct {v0, v1, v4, v2, v5}, Ljava/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljava/time/format/TextStyle;->FULL_STANDALONE:Ljava/time/format/TextStyle;

    new-instance v0, Ljava/time/format/TextStyle;

    const-string/jumbo v1, "SHORT"

    invoke-direct {v0, v1, v6, v4, v4}, Ljava/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    new-instance v0, Ljava/time/format/TextStyle;

    const-string/jumbo v1, "SHORT_STANDALONE"

    const v2, 0x8001

    invoke-direct {v0, v1, v8, v2, v4}, Ljava/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljava/time/format/TextStyle;->SHORT_STANDALONE:Ljava/time/format/TextStyle;

    new-instance v0, Ljava/time/format/TextStyle;

    const-string/jumbo v1, "NARROW"

    invoke-direct {v0, v1, v7, v7, v4}, Ljava/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    new-instance v0, Ljava/time/format/TextStyle;

    const-string/jumbo v1, "NARROW_STANDALONE"

    const/4 v2, 0x5

    const v3, 0x8004

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljava/time/format/TextStyle;->NARROW_STANDALONE:Ljava/time/format/TextStyle;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/time/format/TextStyle;

    sget-object v1, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    aput-object v1, v0, v5

    sget-object v1, Ljava/time/format/TextStyle;->FULL_STANDALONE:Ljava/time/format/TextStyle;

    aput-object v1, v0, v4

    sget-object v1, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    aput-object v1, v0, v6

    sget-object v1, Ljava/time/format/TextStyle;->SHORT_STANDALONE:Ljava/time/format/TextStyle;

    aput-object v1, v0, v8

    sget-object v1, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    aput-object v1, v0, v7

    sget-object v1, Ljava/time/format/TextStyle;->NARROW_STANDALONE:Ljava/time/format/TextStyle;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Ljava/time/format/TextStyle;->$VALUES:[Ljava/time/format/TextStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ljava/time/format/TextStyle;->calendarStyle:I

    iput p4, p0, Ljava/time/format/TextStyle;->zoneNameStyleIndex:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/format/TextStyle;
    .locals 1

    const-class v0, Ljava/time/format/TextStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/format/TextStyle;

    return-object v0
.end method

.method public static values()[Ljava/time/format/TextStyle;
    .locals 1

    sget-object v0, Ljava/time/format/TextStyle;->$VALUES:[Ljava/time/format/TextStyle;

    return-object v0
.end method


# virtual methods
.method public asNormal()Ljava/time/format/TextStyle;
    .locals 2

    invoke-static {}, Ljava/time/format/TextStyle;->values()[Ljava/time/format/TextStyle;

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/format/TextStyle;->ordinal()I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public asStandalone()Ljava/time/format/TextStyle;
    .locals 2

    invoke-static {}, Ljava/time/format/TextStyle;->values()[Ljava/time/format/TextStyle;

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/format/TextStyle;->ordinal()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isStandalone()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/time/format/TextStyle;->ordinal()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method toCalendarStyle()I
    .locals 1

    iget v0, p0, Ljava/time/format/TextStyle;->calendarStyle:I

    return v0
.end method

.method zoneNameStyleIndex()I
    .locals 1

    iget v0, p0, Ljava/time/format/TextStyle;->zoneNameStyleIndex:I

    return v0
.end method

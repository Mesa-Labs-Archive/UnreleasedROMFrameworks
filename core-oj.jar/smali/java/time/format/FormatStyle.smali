.class public final enum Ljava/time/format/FormatStyle;
.super Ljava/lang/Enum;
.source "FormatStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/format/FormatStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/format/FormatStyle;

.field public static final enum FULL:Ljava/time/format/FormatStyle;

.field public static final enum LONG:Ljava/time/format/FormatStyle;

.field public static final enum MEDIUM:Ljava/time/format/FormatStyle;

.field public static final enum SHORT:Ljava/time/format/FormatStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/time/format/FormatStyle;

    const-string/jumbo v1, "FULL"

    invoke-direct {v0, v1, v2}, Ljava/time/format/FormatStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/FormatStyle;->FULL:Ljava/time/format/FormatStyle;

    new-instance v0, Ljava/time/format/FormatStyle;

    const-string/jumbo v1, "LONG"

    invoke-direct {v0, v1, v3}, Ljava/time/format/FormatStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/FormatStyle;->LONG:Ljava/time/format/FormatStyle;

    new-instance v0, Ljava/time/format/FormatStyle;

    const-string/jumbo v1, "MEDIUM"

    invoke-direct {v0, v1, v4}, Ljava/time/format/FormatStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/FormatStyle;->MEDIUM:Ljava/time/format/FormatStyle;

    new-instance v0, Ljava/time/format/FormatStyle;

    const-string/jumbo v1, "SHORT"

    invoke-direct {v0, v1, v5}, Ljava/time/format/FormatStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/FormatStyle;->SHORT:Ljava/time/format/FormatStyle;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/time/format/FormatStyle;

    sget-object v1, Ljava/time/format/FormatStyle;->FULL:Ljava/time/format/FormatStyle;

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/format/FormatStyle;->LONG:Ljava/time/format/FormatStyle;

    aput-object v1, v0, v3

    sget-object v1, Ljava/time/format/FormatStyle;->MEDIUM:Ljava/time/format/FormatStyle;

    aput-object v1, v0, v4

    sget-object v1, Ljava/time/format/FormatStyle;->SHORT:Ljava/time/format/FormatStyle;

    aput-object v1, v0, v5

    sput-object v0, Ljava/time/format/FormatStyle;->$VALUES:[Ljava/time/format/FormatStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/format/FormatStyle;
    .locals 1

    const-class v0, Ljava/time/format/FormatStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/format/FormatStyle;

    return-object v0
.end method

.method public static values()[Ljava/time/format/FormatStyle;
    .locals 1

    sget-object v0, Ljava/time/format/FormatStyle;->$VALUES:[Ljava/time/format/FormatStyle;

    return-object v0
.end method

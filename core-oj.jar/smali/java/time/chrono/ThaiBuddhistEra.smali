.class public final enum Ljava/time/chrono/ThaiBuddhistEra;
.super Ljava/lang/Enum;
.source "ThaiBuddhistEra.java"

# interfaces
.implements Ljava/time/chrono/Era;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/chrono/ThaiBuddhistEra;",
        ">;",
        "Ljava/time/chrono/Era;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/chrono/ThaiBuddhistEra;

.field public static final enum BE:Ljava/time/chrono/ThaiBuddhistEra;

.field public static final enum BEFORE_BE:Ljava/time/chrono/ThaiBuddhistEra;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/time/chrono/ThaiBuddhistEra;

    const-string/jumbo v1, "BEFORE_BE"

    invoke-direct {v0, v1, v2}, Ljava/time/chrono/ThaiBuddhistEra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/chrono/ThaiBuddhistEra;->BEFORE_BE:Ljava/time/chrono/ThaiBuddhistEra;

    new-instance v0, Ljava/time/chrono/ThaiBuddhistEra;

    const-string/jumbo v1, "BE"

    invoke-direct {v0, v1, v3}, Ljava/time/chrono/ThaiBuddhistEra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/chrono/ThaiBuddhistEra;->BE:Ljava/time/chrono/ThaiBuddhistEra;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/time/chrono/ThaiBuddhistEra;

    sget-object v1, Ljava/time/chrono/ThaiBuddhistEra;->BEFORE_BE:Ljava/time/chrono/ThaiBuddhistEra;

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/chrono/ThaiBuddhistEra;->BE:Ljava/time/chrono/ThaiBuddhistEra;

    aput-object v1, v0, v3

    sput-object v0, Ljava/time/chrono/ThaiBuddhistEra;->$VALUES:[Ljava/time/chrono/ThaiBuddhistEra;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static of(I)Ljava/time/chrono/ThaiBuddhistEra;
    .locals 3

    packed-switch p0, :pswitch_data_0

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

    :pswitch_0
    sget-object v0, Ljava/time/chrono/ThaiBuddhistEra;->BEFORE_BE:Ljava/time/chrono/ThaiBuddhistEra;

    return-object v0

    :pswitch_1
    sget-object v0, Ljava/time/chrono/ThaiBuddhistEra;->BE:Ljava/time/chrono/ThaiBuddhistEra;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/chrono/ThaiBuddhistEra;
    .locals 1

    const-class v0, Ljava/time/chrono/ThaiBuddhistEra;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistEra;

    return-object v0
.end method

.method public static values()[Ljava/time/chrono/ThaiBuddhistEra;
    .locals 1

    sget-object v0, Ljava/time/chrono/ThaiBuddhistEra;->$VALUES:[Ljava/time/chrono/ThaiBuddhistEra;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    invoke-virtual {p0}, Ljava/time/chrono/ThaiBuddhistEra;->ordinal()I

    move-result v0

    return v0
.end method

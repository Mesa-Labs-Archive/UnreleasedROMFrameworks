.class public final enum Ljava/time/chrono/IsoEra;
.super Ljava/lang/Enum;
.source "IsoEra.java"

# interfaces
.implements Ljava/time/chrono/Era;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/chrono/IsoEra;",
        ">;",
        "Ljava/time/chrono/Era;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/chrono/IsoEra;

.field public static final enum BCE:Ljava/time/chrono/IsoEra;

.field public static final enum CE:Ljava/time/chrono/IsoEra;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/time/chrono/IsoEra;

    const-string/jumbo v1, "BCE"

    invoke-direct {v0, v1, v2}, Ljava/time/chrono/IsoEra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/chrono/IsoEra;->BCE:Ljava/time/chrono/IsoEra;

    new-instance v0, Ljava/time/chrono/IsoEra;

    const-string/jumbo v1, "CE"

    invoke-direct {v0, v1, v3}, Ljava/time/chrono/IsoEra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/chrono/IsoEra;->CE:Ljava/time/chrono/IsoEra;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/time/chrono/IsoEra;

    sget-object v1, Ljava/time/chrono/IsoEra;->BCE:Ljava/time/chrono/IsoEra;

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/chrono/IsoEra;->CE:Ljava/time/chrono/IsoEra;

    aput-object v1, v0, v3

    sput-object v0, Ljava/time/chrono/IsoEra;->$VALUES:[Ljava/time/chrono/IsoEra;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static of(I)Ljava/time/chrono/IsoEra;
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
    sget-object v0, Ljava/time/chrono/IsoEra;->BCE:Ljava/time/chrono/IsoEra;

    return-object v0

    :pswitch_1
    sget-object v0, Ljava/time/chrono/IsoEra;->CE:Ljava/time/chrono/IsoEra;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/chrono/IsoEra;
    .locals 1

    const-class v0, Ljava/time/chrono/IsoEra;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/IsoEra;

    return-object v0
.end method

.method public static values()[Ljava/time/chrono/IsoEra;
    .locals 1

    sget-object v0, Ljava/time/chrono/IsoEra;->$VALUES:[Ljava/time/chrono/IsoEra;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    invoke-virtual {p0}, Ljava/time/chrono/IsoEra;->ordinal()I

    move-result v0

    return v0
.end method

.class public final enum Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
.super Ljava/lang/Enum;
.source "ZoneOffsetTransitionRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/zone/ZoneOffsetTransitionRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimeDefinition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field private static final synthetic -java-time-zone-ZoneOffsetTransitionRule$TimeDefinitionSwitchesValues:[I

.field public static final enum STANDARD:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field public static final enum UTC:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field public static final enum WALL:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;


# direct methods
.method private static synthetic -getjava-time-zone-ZoneOffsetTransitionRule$TimeDefinitionSwitchesValues()[I
    .locals 3

    sget-object v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->-java-time-zone-ZoneOffsetTransitionRule$TimeDefinitionSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->-java-time-zone-ZoneOffsetTransitionRule$TimeDefinitionSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->values()[Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->STANDARD:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v1}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->UTC:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v1}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->WALL:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v1}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->-java-time-zone-ZoneOffsetTransitionRule$TimeDefinitionSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    const-string/jumbo v1, "UTC"

    invoke-direct {v0, v1, v2}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->UTC:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    new-instance v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    const-string/jumbo v1, "WALL"

    invoke-direct {v0, v1, v3}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->WALL:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    new-instance v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    const-string/jumbo v1, "STANDARD"

    invoke-direct {v0, v1, v4}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->STANDARD:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    sget-object v1, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->UTC:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->WALL:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    aput-object v1, v0, v3

    sget-object v1, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->STANDARD:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    aput-object v1, v0, v4

    sput-object v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->$VALUES:[Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .locals 1

    const-class v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-object v0
.end method

.method public static values()[Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .locals 1

    sget-object v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->$VALUES:[Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-object v0
.end method


# virtual methods
.method public createDateTime(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/LocalDateTime;
    .locals 4

    invoke-static {}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->-getjava-time-zone-ZoneOffsetTransitionRule$TimeDefinitionSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    return-object p1

    :pswitch_0
    invoke-virtual {p3}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    sget-object v2, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    sub-int v0, v1, v2

    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/time/LocalDateTime;->plusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :pswitch_1
    invoke-virtual {p3}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {p2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    sub-int v0, v1, v2

    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/time/LocalDateTime;->plusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

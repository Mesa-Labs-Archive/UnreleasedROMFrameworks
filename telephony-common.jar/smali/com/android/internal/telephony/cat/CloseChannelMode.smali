.class public final enum Lcom/android/internal/telephony/cat/CloseChannelMode;
.super Ljava/lang/Enum;
.source "CloseChannelMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cat/CloseChannelMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/CloseChannelMode;

.field public static final enum CLOSE_TCP_AND_TCP_IN_CLOSED_STATE:Lcom/android/internal/telephony/cat/CloseChannelMode;

.field public static final enum CLOSE_TCP_AND_TCP_IN_LISTEN_STATE:Lcom/android/internal/telephony/cat/CloseChannelMode;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/telephony/cat/CloseChannelMode;

    const-string/jumbo v1, "CLOSE_TCP_AND_TCP_IN_CLOSED_STATE"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/CloseChannelMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/CloseChannelMode;->CLOSE_TCP_AND_TCP_IN_CLOSED_STATE:Lcom/android/internal/telephony/cat/CloseChannelMode;

    new-instance v0, Lcom/android/internal/telephony/cat/CloseChannelMode;

    const-string/jumbo v1, "CLOSE_TCP_AND_TCP_IN_LISTEN_STATE"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/internal/telephony/cat/CloseChannelMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/CloseChannelMode;->CLOSE_TCP_AND_TCP_IN_LISTEN_STATE:Lcom/android/internal/telephony/cat/CloseChannelMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/telephony/cat/CloseChannelMode;

    sget-object v1, Lcom/android/internal/telephony/cat/CloseChannelMode;->CLOSE_TCP_AND_TCP_IN_CLOSED_STATE:Lcom/android/internal/telephony/cat/CloseChannelMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/CloseChannelMode;->CLOSE_TCP_AND_TCP_IN_LISTEN_STATE:Lcom/android/internal/telephony/cat/CloseChannelMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/cat/CloseChannelMode;->$VALUES:[Lcom/android/internal/telephony/cat/CloseChannelMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/internal/telephony/cat/CloseChannelMode;->mValue:I

    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/cat/CloseChannelMode;
    .locals 5

    invoke-static {}, Lcom/android/internal/telephony/cat/CloseChannelMode;->values()[Lcom/android/internal/telephony/cat/CloseChannelMode;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/android/internal/telephony/cat/CloseChannelMode;->mValue:I

    if-ne v4, p0, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/CloseChannelMode;
    .locals 1

    const-class v0, Lcom/android/internal/telephony/cat/CloseChannelMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/CloseChannelMode;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/CloseChannelMode;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/cat/CloseChannelMode;->$VALUES:[Lcom/android/internal/telephony/cat/CloseChannelMode;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/cat/CloseChannelMode;->mValue:I

    return v0
.end method

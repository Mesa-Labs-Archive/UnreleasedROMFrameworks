.class public final enum Lcom/android/internal/telephony/cat/Duration$TimeUnit;
.super Ljava/lang/Enum;
.source "Duration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/Duration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimeUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cat/Duration$TimeUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/Duration$TimeUnit;

.field public static final enum MINUTE:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

.field public static final enum SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

.field public static final enum TENTH_SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    const-string/jumbo v1, "MINUTE"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->MINUTE:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    new-instance v0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    const-string/jumbo v1, "SECOND"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    new-instance v0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    const-string/jumbo v1, "TENTH_SECOND"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->TENTH_SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    sget-object v1, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->MINUTE:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->TENTH_SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->$VALUES:[Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/Duration$TimeUnit;
    .locals 1

    const-class v0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/Duration$TimeUnit;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->$VALUES:[Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->mValue:I

    return v0
.end method

.class final enum Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;
.super Ljava/lang/Enum;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DataCrossState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

.field public static final enum NONE:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

.field public static final enum RESTORE:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

.field public static final enum SEND:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;->NONE:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    new-instance v0, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    const-string/jumbo v1, "SEND"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;->SEND:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    new-instance v0, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    const-string/jumbo v1, "RESTORE"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;->RESTORE:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    sget-object v1, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;->NONE:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;->SEND:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;->RESTORE:Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;->$VALUES:[Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;
    .locals 1

    const-class v0, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;->$VALUES:[Lcom/android/internal/telephony/PhoneSwitcher$DataCrossState;

    return-object v0
.end method

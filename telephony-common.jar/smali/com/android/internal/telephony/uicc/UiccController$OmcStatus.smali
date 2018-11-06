.class public final enum Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;
.super Ljava/lang/Enum;
.source "UiccController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OmcStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;

.field public static final enum DISABLED:Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;

.field public static final enum ENABLED:Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;

.field public static final enum HALF_DISABLED:Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;

    const-string/jumbo v1, "DISABLED"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;->DISABLED:Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;

    new-instance v0, Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;

    const-string/jumbo v1, "HALF_DISABLED"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;->HALF_DISABLED:Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;

    new-instance v0, Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;

    const-string/jumbo v1, "ENABLED"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;->ENABLED:Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;

    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;->DISABLED:Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;->HALF_DISABLED:Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;->ENABLED:Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;->$VALUES:[Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;
    .locals 1

    const-class v0, Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;->$VALUES:[Lcom/android/internal/telephony/uicc/UiccController$OmcStatus;

    return-object v0
.end method

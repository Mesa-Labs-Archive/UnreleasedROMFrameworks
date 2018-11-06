.class public final enum Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;
.super Ljava/lang/Enum;
.source "UiccController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SIMRecordStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

.field public static final enum INEXISTENT:Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

.field public static final enum LOADED:Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

.field public static final enum READY:Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;->UNKNOWN:Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    new-instance v0, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    const-string/jumbo v1, "INEXISTENT"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;->INEXISTENT:Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    new-instance v0, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    const-string/jumbo v1, "READY"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;->READY:Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    new-instance v0, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    const-string/jumbo v1, "LOADED"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;->LOADED:Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;->UNKNOWN:Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;->INEXISTENT:Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;->READY:Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;->LOADED:Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;->$VALUES:[Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;
    .locals 1

    const-class v0, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;->$VALUES:[Lcom/android/internal/telephony/uicc/UiccController$SIMRecordStatus;

    return-object v0
.end method

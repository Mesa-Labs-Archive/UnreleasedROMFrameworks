.class final enum Lcom/android/internal/telephony/dataconnection/DcTracker$CdmaRatOrigin;
.super Ljava/lang/Enum;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CdmaRatOrigin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/dataconnection/DcTracker$CdmaRatOrigin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/dataconnection/DcTracker$CdmaRatOrigin;

.field public static final enum MOBILE_RAT_CDMA:Lcom/android/internal/telephony/dataconnection/DcTracker$CdmaRatOrigin;

.field public static final enum NO_CDMA:Lcom/android/internal/telephony/dataconnection/DcTracker$CdmaRatOrigin;

.field public static final enum RAT_CDMA:Lcom/android/internal/telephony/dataconnection/DcTracker$CdmaRatOrigin;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$CdmaRatOrigin;

    const-string/jumbo v1, "NO_CDMA"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$CdmaRatOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$CdmaRatOrigin;->NO_CDMA:Lcom/android/internal/telephony/dataconnection/DcTracker$CdmaRatOrigin;

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$CdmaRatOrigin;

    const-string/jumbo v1, "RAT_CDMA"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker$CdmaRatOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$CdmaRatOrigin;->RAT_CDMA:Lcom/android/internal/telephony/dataconnection/DcTracker$CdmaRatOrigin;

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$CdmaRatOrigin;

    const-string/jumbo v1, "MOBILE_RAT_CDMA"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker$CdmaRatOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$CdmaRatOrigin;->MOBILE_RAT_CDMA:Lcom/android/internal/telephony/dataconnection/DcTracker$CdmaRatOrigin;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/dataconnection/DcTracker$CdmaRatOrigin;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$CdmaRatOrigin;->NO_CDMA:Lcom/android/internal/telephony/dataconnection/DcTracker$CdmaRatOrigin;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$CdmaRatOrigin;->RAT_CDMA:Lcom/android/internal/telephony/dataconnection/DcTracker$CdmaRatOrigin;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$CdmaRatOrigin;->MOBILE_RAT_CDMA:Lcom/android/internal/telephony/dataconnection/DcTracker$CdmaRatOrigin;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$CdmaRatOrigin;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DcTracker$CdmaRatOrigin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcTracker$CdmaRatOrigin;
    .locals 1

    const-class v0, Lcom/android/internal/telephony/dataconnection/DcTracker$CdmaRatOrigin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker$CdmaRatOrigin;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/dataconnection/DcTracker$CdmaRatOrigin;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$CdmaRatOrigin;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DcTracker$CdmaRatOrigin;

    return-object v0
.end method

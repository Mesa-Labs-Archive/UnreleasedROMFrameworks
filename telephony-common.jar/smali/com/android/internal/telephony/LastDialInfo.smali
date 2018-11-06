.class public final Lcom/android/internal/telephony/LastDialInfo;
.super Ljava/lang/Object;
.source "LastDialInfo.java"


# static fields
.field public static final EXTRA_ALTERNATIVE_EMERGENCY_CATEGORY:Ljava/lang/String; = "alternativeEccCat"

.field public static final EXTRA_ALTERNATIVE_SERVICE_TYPE:Ljava/lang/String; = "alternativeType"

.field public static final EXTRA_LATEST_CALL_DOMAIN:Ljava/lang/String; = "latestDomain"

.field private static final FILTER_EXTRAS:[Ljava/lang/String;


# instance fields
.field public mLastDialString:Ljava/lang/String;

.field public mLastIntentExtras:Landroid/os/Bundle;

.field public mLastVideoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "SecCallExtra"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.telecom.extra.CALL_TELECOM_ROUTING_START_TIME_MILLIS"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.telecom.extra.CALL_TELECOM_ROUTING_END_TIME_MILLIS"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/LastDialInfo;->FILTER_EXTRAS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/LastDialInfo;->mLastDialString:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/LastDialInfo;->mLastVideoState:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/LastDialInfo;->mLastIntentExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public saveDialInfo(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 5

    iput-object p1, p0, Lcom/android/internal/telephony/LastDialInfo;->mLastDialString:Ljava/lang/String;

    iput p2, p0, Lcom/android/internal/telephony/LastDialInfo;->mLastVideoState:I

    iget-object v1, p0, Lcom/android/internal/telephony/LastDialInfo;->mLastIntentExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/LastDialInfo;->mLastIntentExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/LastDialInfo;->mLastIntentExtras:Landroid/os/Bundle;

    invoke-virtual {v1, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    sget-object v2, Lcom/android/internal/telephony/LastDialInfo;->FILTER_EXTRAS:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-object v4, p0, Lcom/android/internal/telephony/LastDialInfo;->mLastIntentExtras:Landroid/os/Bundle;

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/LastDialInfo;->mLastIntentExtras:Landroid/os/Bundle;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LastDialInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v2, :cond_0

    const-string/jumbo v2, "number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/LastDialInfo;->mLastDialString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v2, ", videoState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/LastDialInfo;->mLastVideoState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", intentExtras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/LastDialInfo;->mLastIntentExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const-string/jumbo v2, "numberLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/LastDialInfo;->mLastDialString:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/LastDialInfo;->mLastDialString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

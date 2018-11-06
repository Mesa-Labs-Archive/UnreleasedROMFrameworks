.class public final Lcom/android/internal/telephony/ImsCallList;
.super Ljava/lang/Object;
.source "ImsCallList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ImsCallList$ImsCall;
    }
.end annotation


# static fields
.field public static final CALL_STATE_ACTIVE:I = 0x0

.field public static final CALL_STATE_ALERTING:I = 0x3

.field public static final CALL_STATE_DIALING:I = 0x2

.field public static final CALL_STATE_HOLDING:I = 0x1

.field public static final CALL_STATE_IDLE:I = -0x1

.field public static final CALL_STATE_INCOMING:I = 0x4

.field public static final CALL_STATE_WAITING:I = 0x5

.field public static final CALL_TYPE_EMERGENCY:I = 0x8

.field public static final CALL_TYPE_UNKNOWN:I = 0x0

.field public static final CALL_TYPE_VIDEO:I = 0x2

.field public static final CALL_TYPE_VOICE:I = 0x1

.field static final IMS_CALL_MAX:I = 0x9


# instance fields
.field mImsCall:[Lcom/android/internal/telephony/ImsCallList$ImsCall;

.field mImsCallCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/internal/telephony/ImsCallList$ImsCall;

    iput-object v0, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCall:[Lcom/android/internal/telephony/ImsCallList$ImsCall;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCallCount:I

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v4, 0x9

    new-array v4, v4, [Lcom/android/internal/telephony/ImsCallList$ImsCall;

    iput-object v4, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCall:[Lcom/android/internal/telephony/ImsCallList$ImsCall;

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCallCount:I

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    iget-object v4, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCall:[Lcom/android/internal/telephony/ImsCallList$ImsCall;

    add-int/lit8 v3, v2, 0x1

    new-instance v5, Lcom/android/internal/telephony/ImsCallList$ImsCall;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/ImsCallList$ImsCall;-><init>(Lcom/android/internal/telephony/Connection;)V

    aput-object v5, v4, v2

    move v2, v3

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCallCount:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v1, ""

    iget v2, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCallCount:I

    if-gtz v2, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCallCount:I

    if-ge v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCall:[Lcom/android/internal/telephony/ImsCallList$ImsCall;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.class Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$2;
.super Ljava/lang/Object;
.source "ImsExternalCallTracker.java"

# interfaces
.implements Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ImsCallNotify;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyPreciseCallStateChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->-get1(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    return-void
.end method

.method public notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->-get1(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

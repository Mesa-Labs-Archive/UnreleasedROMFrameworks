.class public Lcom/android/internal/telephony/CallStateBroadcaster;
.super Ljava/lang/Object;
.source "CallStateBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CallStateBroadcaster$1;,
        Lcom/android/internal/telephony/CallStateBroadcaster$InstanceLock;
    }
.end annotation


# static fields
.field private static final ACTION_DETAILED_CALL_STATE:Ljava/lang/String; = "diagandroid.phone.detailedCallState"

.field private static final CALL_STATE_ENDED:Ljava/lang/String; = "ENDED"

.field private static final EXTRA_CALL_CODE:Ljava/lang/String; = "CallCode"

.field private static final EXTRA_CALL_NUMBER:Ljava/lang/String; = "CallNumber"

.field private static final EXTRA_CALL_STATE:Ljava/lang/String; = "CallState"

.field private static final PERMISSION_RECEIVE_DETAILED_CALL_STATE:Ljava/lang/String; = "diagandroid.phone.receiveDetailedCallState"

.field private static sInstance:Lcom/android/internal/telephony/CallStateBroadcaster;

.field private static final sStatusCodes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhoneId:I


# direct methods
.method static synthetic -set0(Lcom/android/internal/telephony/CallStateBroadcaster;)Lcom/android/internal/telephony/CallStateBroadcaster;
    .locals 0

    sput-object p0, Lcom/android/internal/telephony/CallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/CallStateBroadcaster;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/CallStateBroadcaster$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallStateBroadcaster$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/CallStateBroadcaster;->sStatusCodes:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/CallStateBroadcaster;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/internal/telephony/CallStateBroadcaster;->mPhoneId:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILcom/android/internal/telephony/CallStateBroadcaster;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CallStateBroadcaster;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private Broadcast(Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallStateBroadcaster;->mPhoneId:I

    const-string/jumbo v2, "CscFeature_Common_SupportEchoLocate"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/CallStateBroadcaster;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const-string/jumbo v2, "diagandroid.phone.receiveDetailedCallState"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static CreateIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "diagandroid.phone.detailedCallState"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.tmobile.pr.mytmobile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "CallState"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "CallNumber"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static SendCallDisconnected(Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/CallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/CallStateBroadcaster;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/CallStateBroadcaster;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/CallStateBroadcaster;->SendCallDisconnected(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private SendCallDisconnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    const-string/jumbo v1, "ENDED"

    invoke-static {v1, p1}, Lcom/android/internal/telephony/CallStateBroadcaster;->CreateIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "CallCode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallStateBroadcaster;->Broadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static SendCallStatus(Ljava/lang/String;Lcom/android/internal/telephony/Call$State;)V
    .locals 3

    sget-object v1, Lcom/android/internal/telephony/CallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/CallStateBroadcaster;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/CallStateBroadcaster;->sStatusCodes:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/android/internal/telephony/CallStateBroadcaster;->sInstance:Lcom/android/internal/telephony/CallStateBroadcaster;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/CallStateBroadcaster;->SendCallStatus(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private SendCallStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-static {p2, p1}, Lcom/android/internal/telephony/CallStateBroadcaster;->CreateIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallStateBroadcaster;->Broadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

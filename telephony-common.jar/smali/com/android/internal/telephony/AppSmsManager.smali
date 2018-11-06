.class public Lcom/android/internal/telephony/AppSmsManager;
.super Ljava/lang/Object;
.source "AppSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppSmsManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mPackageMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRandom:Ljava/security/SecureRandom;

.field private final mTokenMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AppSmsManager;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AppSmsManager;->mRandom:Ljava/security/SecureRandom;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AppSmsManager;->mTokenMap:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AppSmsManager;->mPackageMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/internal/telephony/AppSmsManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addRequestLocked(Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/AppSmsManager;->mTokenMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;->token:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/internal/telephony/AppSmsManager;->mPackageMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private findAppRequestInfoSmsIntentLocked(Landroid/content/Intent;)Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;
    .locals 10

    const/4 v9, 0x0

    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v3

    if-nez v3, :cond_0

    return-object v9

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    array-length v7, v3

    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v2, v3, v6

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/internal/telephony/AppSmsManager;->mTokenMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/AppSmsManager;->mTokenMap:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;

    return-object v6

    :cond_5
    return-object v9
.end method

.method private generateNonce()Ljava/lang/String;
    .locals 2

    const/16 v1, 0x8

    new-array v0, v1, [B

    iget-object v1, p0, Lcom/android/internal/telephony/AppSmsManager;->mRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private removeRequestLocked(Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/AppSmsManager;->mTokenMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;->token:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/internal/telephony/AppSmsManager;->mPackageMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public createAppSpecificSmsToken(Ljava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Lcom/android/internal/telephony/AppSmsManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "appops"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v3, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/AppSmsManager;->generateNonce()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/AppSmsManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/AppSmsManager;->mPackageMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/AppSmsManager;->mPackageMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/AppSmsManager;->removeRequestLocked(Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;)V

    :cond_0
    new-instance v1, Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;-><init>(Lcom/android/internal/telephony/AppSmsManager;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/AppSmsManager;->addRequestLocked(Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v2

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public handleSmsReceivedIntent(Landroid/content/Intent;)Z
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.provider.Telephony.SMS_DELIVER"

    if-eq v3, v4, :cond_0

    const-string/jumbo v3, "AppSmsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Got intent with incorrect action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/AppSmsManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/AppSmsManager;->findAppRequestInfoSmsIntentLocked(Landroid/content/Intent;)Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    monitor-exit v4

    return v7

    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v3, v2, Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;->pendingIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/internal/telephony/AppSmsManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/AppSmsManager;->removeRequestLocked(Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x1

    monitor-exit v4

    return v3

    :catch_0
    move-exception v0

    :try_start_3
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/AppSmsManager;->removeRequestLocked(Lcom/android/internal/telephony/AppSmsManager$AppRequestInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    return v7

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

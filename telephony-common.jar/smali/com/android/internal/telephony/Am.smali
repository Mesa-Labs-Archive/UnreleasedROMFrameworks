.class public Lcom/android/internal/telephony/Am;
.super Lcom/android/internal/os/BaseCommand;
.source "Am.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Am$IntentReceiver;,
        Lcom/android/internal/telephony/Am$MyShellCallback;
    }
.end annotation


# static fields
.field private static final SHELL_PACKAGE_NAME:Ljava/lang/String; = "com.android.shell"


# instance fields
.field private mAm:Landroid/app/IActivityManager;

.field private mAutoStop:Z

.field private mPm:Landroid/content/pm/IPackageManager;

.field private mProfileFile:Ljava/lang/String;

.field private mReceiverPermission:Ljava/lang/String;

.field private mRepeat:I

.field private mSamplingInterval:I

.field private mStackId:I

.field private mStartFlags:I

.field private mStopOption:Z

.field private mUserId:I

.field private mWaitOption:Z


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/Am;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/Am;->mStartFlags:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/Am;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/Am;->mAutoStop:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/Am;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/Am;->mProfileFile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/internal/telephony/Am;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/Am;->mReceiverPermission:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/internal/telephony/Am;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/Am;->mRepeat:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/internal/telephony/Am;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/Am;->mSamplingInterval:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/internal/telephony/Am;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/Am;->mStackId:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/internal/telephony/Am;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/Am;->mStartFlags:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/internal/telephony/Am;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/Am;->mStopOption:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/internal/telephony/Am;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/Am;->mUserId:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/internal/telephony/Am;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/Am;->mWaitOption:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/os/BaseCommand;-><init>()V

    iput v0, p0, Lcom/android/internal/telephony/Am;->mStartFlags:I

    iput-boolean v0, p0, Lcom/android/internal/telephony/Am;->mWaitOption:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/Am;->mStopOption:Z

    iput v0, p0, Lcom/android/internal/telephony/Am;->mRepeat:I

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/Am;

    invoke-direct {v0}, Lcom/android/internal/telephony/Am;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Am;->run([Ljava/lang/String;)V

    return-void
.end method

.method private makeIntent(I)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/Am;->mStartFlags:I

    iput-boolean v1, p0, Lcom/android/internal/telephony/Am;->mWaitOption:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/Am;->mStopOption:Z

    iput v1, p0, Lcom/android/internal/telephony/Am;->mRepeat:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/Am;->mProfileFile:Ljava/lang/String;

    iput v1, p0, Lcom/android/internal/telephony/Am;->mSamplingInterval:I

    iput-boolean v1, p0, Lcom/android/internal/telephony/Am;->mAutoStop:Z

    iput p1, p0, Lcom/android/internal/telephony/Am;->mUserId:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/Am;->mStackId:I

    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mArgs:Landroid/os/ShellCommand;

    new-instance v1, Lcom/android/internal/telephony/Am$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/Am$2;-><init>(Lcom/android/internal/telephony/Am;)V

    invoke-static {v0, v1}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private runStartService(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Am;->makeIntent(I)Landroid/content/Intent;

    move-result-object v2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Starting service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "com.android.shell"

    iget v6, p0, Lcom/android/internal/telephony/Am;->mUserId:I

    move v4, p1

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v7

    if-nez v7, :cond_1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "Error: Not found; no service started."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error: Requires permission "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "!!"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private runStopService()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, -0x2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/Am;->makeIntent(I)Landroid/content/Intent;

    move-result-object v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Stopping service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/Am;->mUserId:I

    const/4 v5, 0x0

    invoke-interface {v2, v5, v0, v3, v4}, Landroid/app/IActivityManager;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v3, "Service not stopped: was not running."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v3, "Service stopped"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v3, "Error stopping service"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendBroadcast()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Am;->makeIntent(I)Landroid/content/Intent;

    move-result-object v2

    new-instance v4, Lcom/android/internal/telephony/Am$IntentReceiver;

    invoke-direct {v4, p0, v1}, Lcom/android/internal/telephony/Am$IntentReceiver;-><init>(Lcom/android/internal/telephony/Am;Lcom/android/internal/telephony/Am$IntentReceiver;)V

    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mReceiverPermission:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v8, 0x0

    :goto_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Broadcasting: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    iget v13, p0, Lcom/android/internal/telephony/Am;->mUserId:I

    const/4 v9, -0x1

    move-object v3, v1

    move-object v6, v1

    move-object v7, v1

    move-object v10, v1

    move v12, v5

    invoke-interface/range {v0 .. v13}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    return-void

    :cond_0
    new-array v8, v11, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mReceiverPermission:Ljava/lang/String;

    aput-object v0, v8, v5

    goto :goto_0
.end method

.method private sendBroadcastNoneOrdered()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Am;->makeIntent(I)Landroid/content/Intent;

    move-result-object v2

    new-instance v4, Lcom/android/internal/telephony/Am$IntentReceiver;

    invoke-direct {v4, p0, v1}, Lcom/android/internal/telephony/Am$IntentReceiver;-><init>(Lcom/android/internal/telephony/Am;Lcom/android/internal/telephony/Am$IntentReceiver;)V

    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mReceiverPermission:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v8, 0x0

    :goto_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Broadcasting: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez v2, :cond_1

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mReceiverPermission:Ljava/lang/String;

    aput-object v0, v8, v5

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    iget v13, p0, Lcom/android/internal/telephony/Am;->mUserId:I

    const/4 v9, -0x1

    move-object v3, v1

    move-object v6, v1

    move-object v7, v1

    move-object v10, v1

    move v11, v5

    move v12, v5

    invoke-interface/range {v0 .. v13}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    return-void
.end method

.method private sendStickyBroadcastNoneOrdered()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v12, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Am;->makeIntent(I)Landroid/content/Intent;

    move-result-object v2

    new-instance v4, Lcom/android/internal/telephony/Am$IntentReceiver;

    invoke-direct {v4, p0, v1}, Lcom/android/internal/telephony/Am$IntentReceiver;-><init>(Lcom/android/internal/telephony/Am;Lcom/android/internal/telephony/Am$IntentReceiver;)V

    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mReceiverPermission:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v8, 0x0

    :goto_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Broadcasting: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez v2, :cond_1

    return-void

    :cond_0
    new-array v8, v12, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mReceiverPermission:Ljava/lang/String;

    aput-object v0, v8, v5

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    iget v13, p0, Lcom/android/internal/telephony/Am;->mUserId:I

    const/4 v9, -0x1

    move-object v3, v1

    move-object v6, v1

    move-object v7, v1

    move-object v10, v1

    move v11, v5

    invoke-interface/range {v0 .. v13}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v2, "Error type 2"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Landroid/util/AndroidException;

    const-string/jumbo v2, "Can\'t connect to activity manager; is the system running?"

    invoke-direct {v1, v2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "broadcast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->sendBroadcast()V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "broadcastno"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->sendBroadcastNoneOrdered()V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "stickybroadcastno"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->sendStickyBroadcastNoneOrdered()V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "startservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/Am;->runStartService(Z)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "startfgservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/Am;->runStartService(Z)V

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "stopservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->runStopService()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/Am;->getRawArgs()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Am;->runAmCmd([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onShowUsage(Ljava/io/PrintStream;)V
    .locals 4

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "help"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Am;->runAmCmd([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Landroid/util/AndroidException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method parseUserArg(Ljava/lang/String;)I
    .locals 2

    const-string/jumbo v1, "all"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v1, "current"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "cur"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, -0x2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method runAmCmd([Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/AndroidException;
        }
    .end annotation

    const/4 v8, 0x0

    new-instance v5, Lcom/android/internal/telephony/Am$MyShellCallback;

    invoke-direct {v5}, Lcom/android/internal/telephony/Am$MyShellCallback;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    sget-object v2, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    sget-object v3, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    new-instance v6, Lcom/android/internal/telephony/Am$1;

    const/4 v4, 0x0

    invoke-direct {v6, p0, v4}, Lcom/android/internal/telephony/Am$1;-><init>(Lcom/android/internal/telephony/Am;Landroid/os/Handler;)V

    move-object v4, p1

    invoke-interface/range {v0 .. v6}, Landroid/os/IBinder;->shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v8, v5, Lcom/android/internal/telephony/Am$MyShellCallback;->mActive:Z

    return-void

    :catch_0
    move-exception v7

    :try_start_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "Error type 2"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/util/AndroidException;

    const-string/jumbo v1, "Can\'t call activity manager; is the system running?"

    invoke-direct {v0, v1}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iput-boolean v8, v5, Lcom/android/internal/telephony/Am$MyShellCallback;->mActive:Z

    throw v0
.end method

.class public Lcom/android/internal/telephony/util/NotificationChannelController;
.super Ljava/lang/Object;
.source "NotificationChannelController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/util/NotificationChannelController$1;
    }
.end annotation


# static fields
.field public static final CHANNEL_ID_ALERT:Ljava/lang/String; = "alert"

.field public static final CHANNEL_ID_CALL_FORWARD:Ljava/lang/String; = "callForward"

.field public static final CHANNEL_ID_MOBILE_DATA_ALERT:Ljava/lang/String; = "mobileDataAlert"

.field public static final CHANNEL_ID_SMS:Ljava/lang/String; = "sms"

.field public static final CHANNEL_ID_VOICE_MAIL:Ljava/lang/String; = "voiceMail"

.field public static final CHANNEL_ID_WFC:Ljava/lang/String; = "wfc"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/android/internal/telephony/util/NotificationChannelController;->createAll(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/android/internal/telephony/util/NotificationChannelController;->migrateVoicemailNotificationSettings(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/internal/telephony/util/NotificationChannelController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/util/NotificationChannelController$1;-><init>(Lcom/android/internal/telephony/util/NotificationChannelController;)V

    iput-object v1, p0, Lcom/android/internal/telephony/util/NotificationChannelController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/util/NotificationChannelController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/android/internal/telephony/util/NotificationChannelController;->createAll(Landroid/content/Context;)V

    return-void
.end method

.method private static createAll(Landroid/content/Context;)V
    .locals 9

    const/4 v3, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    new-instance v0, Landroid/app/NotificationChannel;

    const-string/jumbo v1, "alert"

    const v2, 0x1040604

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, v1, v2, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    new-array v2, v3, [Landroid/app/NotificationChannel;

    new-instance v3, Landroid/app/NotificationChannel;

    const-string/jumbo v4, "callForward"

    const v5, 0x10405fc

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v3, v4, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Landroid/app/NotificationChannel;

    const-string/jumbo v4, "mobileDataAlert"

    const v5, 0x1040603

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v3, v4, v5, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-instance v3, Landroid/app/NotificationChannel;

    const-string/jumbo v4, "sms"

    const v5, 0x104060c

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v3, v4, v5, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/app/NotificationChannel;

    const-string/jumbo v4, "wfc"

    const v5, 0x1040612

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v3, v4, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    aput-object v3, v2, v7

    aput-object v0, v2, v8

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    const-string/jumbo v1, "voiceMail"

    invoke-static {v1, p0}, Lcom/android/internal/telephony/util/NotificationChannelController;->getChannel(Ljava/lang/String;Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/internal/telephony/util/NotificationChannelController;->migrateVoicemailNotificationSettings(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static getChannel(Ljava/lang/String;Landroid/content/Context;)Landroid/app/NotificationChannel;
    .locals 1

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, p0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0
.end method

.method private static migrateVoicemailNotificationSettings(Landroid/content/Context;)V
    .locals 5

    new-instance v1, Landroid/app/NotificationChannel;

    const-string/jumbo v2, "voiceMail"

    const v3, 0x1040610

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-static {p0}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->getVibrationPreference(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    invoke-static {p0}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->getRingTonePreference(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    :cond_0
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

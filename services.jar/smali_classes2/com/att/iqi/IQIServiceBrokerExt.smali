.class public Lcom/att/iqi/IQIServiceBrokerExt;
.super Lcom/att/iqi/IQIServiceBroker;
.source "IQIServiceBrokerExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/att/iqi/IQIServiceBrokerExt$1;,
        Lcom/att/iqi/IQIServiceBrokerExt$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IQIServiceBrokerExt"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mIqiStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/att/iqi/IQIServiceBrokerExt;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get1(Lcom/att/iqi/IQIServiceBrokerExt;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/att/iqi/IQIServiceBrokerExt;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mIqiStateChangeReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/att/iqi/IQIServiceBroker;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/att/iqi/IQIServiceBrokerExt$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/att/iqi/IQIServiceBrokerExt$1;-><init>(Lcom/att/iqi/IQIServiceBrokerExt;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/att/iqi/IQIServiceBrokerExt$2;

    invoke-direct {v1, p0}, Lcom/att/iqi/IQIServiceBrokerExt$2;-><init>(Lcom/att/iqi/IQIServiceBrokerExt;)V

    iput-object v1, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mIqiStateChangeReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.att.iqi.action.SERVICE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mIqiStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "att_iqi_report_diagnostic"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

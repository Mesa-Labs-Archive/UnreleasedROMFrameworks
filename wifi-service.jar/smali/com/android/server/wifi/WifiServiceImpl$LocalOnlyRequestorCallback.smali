.class public final Lcom/android/server/wifi/WifiServiceImpl$LocalOnlyRequestorCallback;
.super Ljava/lang/Object;
.source "WifiServiceImpl.java"

# interfaces
.implements Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo$RequestingApplicationDeathCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalOnlyRequestorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$LocalOnlyRequestorCallback;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocalOnlyHotspotRequestorDeath(Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$LocalOnlyRequestorCallback;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->-wrap3(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/LocalOnlyHotspotRequestInfo;)V

    return-void
.end method

.class public interface abstract Lcom/android/server/wifi/SoftApManager$Listener;
.super Ljava/lang/Object;
.source "SoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SoftApManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
.end method

.method public abstract getWifiApState()I
.end method

.method public abstract getWifiConnectedFrequency()Landroid/net/wifi/WifiInfo;
.end method

.method public abstract onStateChanged(II)V
.end method

.method public abstract setMobileApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
.end method

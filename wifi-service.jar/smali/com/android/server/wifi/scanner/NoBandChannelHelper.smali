.class public Lcom/android/server/wifi/scanner/NoBandChannelHelper;
.super Lcom/android/server/wifi/scanner/ChannelHelper;
.source "NoBandChannelHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;
    }
.end annotation


# static fields
.field private static final ALL_BAND_CHANNEL_COUNT_ESTIMATE:I = 0x24


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/scanner/ChannelHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public createChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    .locals 1

    new-instance v0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;-><init>(Lcom/android/server/wifi/scanner/NoBandChannelHelper;)V

    return-object v0
.end method

.method public estimateScanDuration(Landroid/net/wifi/WifiScanner$ScanSettings;)I
    .locals 1

    iget v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v0, v0

    mul-int/lit16 v0, v0, 0xc8

    return v0

    :cond_0
    const/16 v0, 0x1c20

    return v0
.end method

.method public getAvailableScanChannels(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;
    .locals 1

    sget-object v0, Lcom/android/server/wifi/scanner/NoBandChannelHelper;->NO_CHANNELS:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    return-object v0
.end method

.method public settingsContainChannel(Landroid/net/wifi/WifiScanner$ScanSettings;I)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    if-ne v1, p2, :cond_0

    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    return v3
.end method

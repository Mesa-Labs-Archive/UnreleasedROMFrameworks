.class public abstract Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
.super Ljava/lang/Object;
.source "ChannelHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/ChannelHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ChannelCollection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/scanner/ChannelHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/scanner/ChannelHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->this$0:Lcom/android/server/wifi/scanner/ChannelHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addBand(I)V
.end method

.method public abstract addChannel(I)V
.end method

.method public addChannels(Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .locals 2

    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannel(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addBand(I)V

    :cond_1
    return-void
.end method

.method public addChannels(Lcom/android/server/wifi/WifiNative$BucketSettings;)V
    .locals 2

    iget v1, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannel(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addBand(I)V

    :cond_1
    return-void
.end method

.method public abstract clear()V
.end method

.method public abstract containsBand(I)Z
.end method

.method public abstract containsChannel(I)Z
.end method

.method public containsSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 3

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

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->containsChannel(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->containsBand(I)Z

    move-result v1

    return v1
.end method

.method public abstract fillBucketSettings(Lcom/android/server/wifi/WifiNative$BucketSettings;I)V
.end method

.method public abstract getChannelSet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContainingChannelsFromBand(I)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public getContainingChannelsFromSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    if-nez v2, :cond_2

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->containsChannel(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    iget v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->getContainingChannelsFromBand(I)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method public abstract getMissingChannelsFromBand(I)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public getMissingChannelsFromSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    if-nez v2, :cond_2

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->containsChannel(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    iget v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->getMissingChannelsFromBand(I)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method public abstract getScanFreqs()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isAllChannels()Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract partiallyContainsBand(I)Z
.end method

.method public partiallyContainsSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 3

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

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->containsChannel(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->partiallyContainsBand(I)Z

    move-result v1

    return v1
.end method

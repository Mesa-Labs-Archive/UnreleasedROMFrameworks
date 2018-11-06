.class Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;
.super Ljava/lang/Object;
.source "WificondScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WificondScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LastScanSettings"
.end annotation


# instance fields
.field public backgroundScanActive:Z

.field public hwPnoScanActive:Z

.field public maxAps:I

.field public pnoNetworkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

.field public pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

.field public reportEvents:I

.field public reportNumScansThreshold:I

.field public reportPercentThreshold:I

.field public reportSingleScanFullResults:Z

.field public scanId:I

.field public singleScanActive:Z

.field public singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

.field public singleScanFreqs:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

.field public startTime:J

.field public useCachedScan:Z


# direct methods
.method constructor <init>(J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->backgroundScanActive:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanActive:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->hwPnoScanActive:Z

    iput-wide p1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->startTime:J

    return-void
.end method


# virtual methods
.method public setBackgroundScan(IIIII)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->backgroundScanActive:Z

    iput p1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->scanId:I

    iput p2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->maxAps:I

    iput p3, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->reportEvents:I

    iput p4, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->reportNumScansThreshold:I

    iput p5, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->reportPercentThreshold:I

    return-void
.end method

.method public setHwPnoScan([Lcom/android/server/wifi/WifiNative$PnoNetwork;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->hwPnoScanActive:Z

    iput-object p1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->pnoNetworkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    iput-object p2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    return-void
.end method

.method public setSingleScan(ZLcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanActive:Z

    iput-boolean p1, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->reportSingleScanFullResults:Z

    iput-object p2, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanFreqs:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    iput-object p3, p0, Lcom/android/server/wifi/scanner/WificondScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    return-void
.end method

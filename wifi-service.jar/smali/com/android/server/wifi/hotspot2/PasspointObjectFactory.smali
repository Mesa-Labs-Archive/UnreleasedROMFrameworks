.class public Lcom/android/server/wifi/hotspot2/PasspointObjectFactory;
.super Ljava/lang/Object;
.source "PasspointObjectFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeANQPRequestManager(Lcom/android/server/wifi/hotspot2/PasspointEventHandler;Lcom/android/server/wifi/Clock;)Lcom/android/server/wifi/hotspot2/ANQPRequestManager;
    .locals 1

    new-instance v0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;-><init>(Lcom/android/server/wifi/hotspot2/PasspointEventHandler;Lcom/android/server/wifi/Clock;)V

    return-object v0
.end method

.method public makeAnqpCache(Lcom/android/server/wifi/Clock;)Lcom/android/server/wifi/hotspot2/AnqpCache;
    .locals 1

    new-instance v0, Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-direct {v0, p1}, Lcom/android/server/wifi/hotspot2/AnqpCache;-><init>(Lcom/android/server/wifi/Clock;)V

    return-object v0
.end method

.method public makeCertificateVerifier()Lcom/android/server/wifi/hotspot2/CertificateVerifier;
    .locals 1

    new-instance v0, Lcom/android/server/wifi/hotspot2/CertificateVerifier;

    invoke-direct {v0}, Lcom/android/server/wifi/hotspot2/CertificateVerifier;-><init>()V

    return-object v0
.end method

.method public makePasspointConfigStoreData(Lcom/android/server/wifi/WifiKeyStore;Lcom/android/server/wifi/SIMAccessor;Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;)Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;
    .locals 1

    new-instance v0, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData;-><init>(Lcom/android/server/wifi/WifiKeyStore;Lcom/android/server/wifi/SIMAccessor;Lcom/android/server/wifi/hotspot2/PasspointConfigStoreData$DataSource;)V

    return-object v0
.end method

.method public makePasspointEventHandler(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/hotspot2/PasspointEventHandler$Callbacks;)Lcom/android/server/wifi/hotspot2/PasspointEventHandler;
    .locals 1

    new-instance v0, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;-><init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/hotspot2/PasspointEventHandler$Callbacks;)V

    return-object v0
.end method

.method public makePasspointProvider(Landroid/net/wifi/hotspot2/PasspointConfiguration;Lcom/android/server/wifi/WifiKeyStore;Lcom/android/server/wifi/SIMAccessor;JI)Lcom/android/server/wifi/hotspot2/PasspointProvider;
    .locals 8

    new-instance v0, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wifi/hotspot2/PasspointProvider;-><init>(Landroid/net/wifi/hotspot2/PasspointConfiguration;Lcom/android/server/wifi/WifiKeyStore;Lcom/android/server/wifi/SIMAccessor;JI)V

    return-object v0
.end method

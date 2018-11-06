.class public Lcom/android/server/wifi/FakeWifiLog;
.super Ljava/lang/Object;
.source "FakeWifiLog.java"

# interfaces
.implements Lcom/android/server/wifi/WifiLog;


# static fields
.field private static final sDummyLogMessage:Lcom/android/server/wifi/DummyLogMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wifi/DummyLogMessage;

    invoke-direct {v0}, Lcom/android/server/wifi/DummyLogMessage;-><init>()V

    sput-object v0, Lcom/android/server/wifi/FakeWifiLog;->sDummyLogMessage:Lcom/android/server/wifi/DummyLogMessage;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public dump(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 1

    sget-object v0, Lcom/android/server/wifi/FakeWifiLog;->sDummyLogMessage:Lcom/android/server/wifi/DummyLogMessage;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public eC(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 1

    sget-object v0, Lcom/android/server/wifi/FakeWifiLog;->sDummyLogMessage:Lcom/android/server/wifi/DummyLogMessage;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public iC(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public info(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 1

    sget-object v0, Lcom/android/server/wifi/FakeWifiLog;->sDummyLogMessage:Lcom/android/server/wifi/DummyLogMessage;

    return-object v0
.end method

.method public tC(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public trace(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 1

    sget-object v0, Lcom/android/server/wifi/FakeWifiLog;->sDummyLogMessage:Lcom/android/server/wifi/DummyLogMessage;

    return-object v0
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public wC(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public warn(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 1

    sget-object v0, Lcom/android/server/wifi/FakeWifiLog;->sDummyLogMessage:Lcom/android/server/wifi/DummyLogMessage;

    return-object v0
.end method

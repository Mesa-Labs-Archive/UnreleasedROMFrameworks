.class public Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;
.super Ljava/lang/Object;
.source "TelephonyUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/TelephonyUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimAuthRequestData"
.end annotation


# instance fields
.field public data:[Ljava/lang/String;

.field public networkId:I

.field public protocol:I

.field public ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;->networkId:I

    iput p2, p0, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;->protocol:I

    iput-object p3, p0, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;->ssid:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/wifi/util/TelephonyUtil$SimAuthRequestData;->data:[Ljava/lang/String;

    return-void
.end method

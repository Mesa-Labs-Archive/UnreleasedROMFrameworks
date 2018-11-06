.class public Lcom/android/server/wifi/hotspot2/WnmData;
.super Ljava/lang/Object;
.source "WnmData.java"


# static fields
.field public static final ESS:I = 0x1


# instance fields
.field private final mBssid:J

.field private final mDeauthEvent:Z

.field private final mDelay:I

.field private final mEss:Z

.field private final mMethod:I

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mBssid:J

    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mUrl:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mMethod:I

    iput-boolean v1, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mEss:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mDelay:I

    iput-boolean v1, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mDeauthEvent:Z

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mBssid:J

    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mUrl:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mEss:Z

    iput p5, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mDelay:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mMethod:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mDeauthEvent:Z

    return-void
.end method


# virtual methods
.method public getBssid()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mBssid:J

    return-wide v0
.end method

.method public getDelay()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mDelay:I

    return v0
.end method

.method public getMethod()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mMethod:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isDeauthEvent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mDeauthEvent:Z

    return v0
.end method

.method public isEss()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/WnmData;->mEss:Z

    return v0
.end method

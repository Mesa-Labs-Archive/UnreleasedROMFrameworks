.class public Lcom/android/server/wifi/WifiNative$PnoNetwork;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PnoNetwork"
.end annotation


# instance fields
.field public auth_bit_field:B

.field public flags:B

.field public ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative$PnoNetwork;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/server/wifi/WifiNative$PnoNetwork;

    iget-object v3, p0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->ssid:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->ssid:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-byte v3, p0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->flags:B

    iget-byte v4, v0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->flags:B

    if-ne v3, v4, :cond_4

    iget-byte v3, p0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->auth_bit_field:B

    iget-byte v4, v0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->auth_bit_field:B

    if-ne v3, v4, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->ssid:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-byte v1, p0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->flags:B

    mul-int/lit8 v1, v1, 0x1f

    iget-byte v2, p0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->auth_bit_field:B

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative$PnoNetwork;->ssid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
